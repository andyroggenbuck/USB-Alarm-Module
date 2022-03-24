/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app_usb.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "app_usb.h"
#include "common.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

uint8_t CACHE_ALIGN cdcReadBuffer[APP_USB_READ_BUFFER_SIZE];
uint8_t CACHE_ALIGN cdcWriteBuffer[APP_USB_WRITE_BUFFER_SIZE];

/* number of samples for waveform generation */
#define NUM_OF_SAMPLES (100)

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_USB_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_USB_DATA app_usbData;

/* index variable for waveform lookup table */
volatile uint8_t sample_number = 0;

/* lookup table of DAC values for sawtooth wave */
const uint16_t triangle_wave[NUM_OF_SAMPLES] = {
0x100,	0x105,	0x10A,	0x10F,	0x115,	0x11A,	0x11F,	0x124,	0x129,	0x12E,
0x133,	0x138,	0x13E,	0x143,	0x148,	0x14D,	0x152,	0x157,	0x15C,	0x161,
0x167,	0x16C,	0x171,	0x176,	0x17B,	0x180,	0x185,	0x18A,	0x18F,	0x195,
0x19A,	0x19F,	0x1A4,	0x1A9,	0x1AE,	0x1B3,	0x1B8,	0x1BE,	0x1C3,	0x1C8,
0x1CD,	0x1D2,	0x1D7,	0x1DC,	0x1E1,	0x1E7,	0x1EC,	0x1F1,	0x1F6,	0x1FB,
0x200,	0x205,	0x20A,	0x20F,	0x215,	0x21A,	0x21F,	0x224,	0x229,	0x22E,
0x233,	0x238,	0x23E,	0x243,	0x248,	0x24D,	0x252,	0x257,	0x25C,	0x261,
0x267,	0x26C,	0x271,	0x276,	0x27B,	0x280,	0x285,	0x28A,	0x28F,	0x295,
0x29A,	0x29F,	0x2A4,	0x2A9,	0x2AE,	0x2B3,	0x2B8,	0x2BE,	0x2C3,	0x2C8,
0x2CD,	0x2D2,	0x2D7,	0x2DC,	0x2E1,	0x2E7,	0x2EC,	0x2F1,	0x2F6,	0x2FB,
};

/* timer handle for alarm delay */
SYS_TIME_HANDLE timer = SYS_TIME_HANDLE_INVALID;

/* millisecond delay */
/*
void delay_ms( int ms )
{
    if (SYS_TIME_DelayMS(ms, &timer) != SYS_TIME_SUCCESS)
    {
        // Handle error
    }
    else if(SYS_TIME_DelayIsComplete(timer) != true)
    {
        // Wait till the delay has not expired
        while (SYS_TIME_DelayIsComplete(timer) == false);
    }
}
 */

/* loop variable */
int i;

volatile int j;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************
 * USB CDC Device Events - Application Event Handler
 *******************************************************/

USB_DEVICE_CDC_EVENT_RESPONSE APP_USB_USBDeviceCDCEventHandler
(
    USB_DEVICE_CDC_INDEX index,
    USB_DEVICE_CDC_EVENT event,
    void * pData,
    uintptr_t userData
)
{
    APP_USB_DATA * appDataObject;
    USB_CDC_CONTROL_LINE_STATE * controlLineStateData;
    USB_DEVICE_CDC_EVENT_DATA_READ_COMPLETE * eventDataRead;
    
    appDataObject = (APP_USB_DATA *)userData;

    switch(event)
    {
        case USB_DEVICE_CDC_EVENT_GET_LINE_CODING:

            /* This means the host wants to know the current line
             * coding. This is a control transfer request. Use the
             * USB_DEVICE_ControlSend() function to send the data to
             * host.  
             */

            USB_DEVICE_ControlSend(appDataObject->deviceHandle,
                    &appDataObject->getLineCodingData,
                    sizeof(USB_CDC_LINE_CODING));

            break;

        case USB_DEVICE_CDC_EVENT_SET_LINE_CODING:

            /* This means the host wants to set the line coding.
             * This is a control transfer request. Use the
             * USB_DEVICE_ControlReceive() function to receive the
             * data from the host 
             */

            USB_DEVICE_ControlReceive(appDataObject->deviceHandle,
                    &appDataObject->setLineCodingData,
                    sizeof(USB_CDC_LINE_CODING));

            break;

        case USB_DEVICE_CDC_EVENT_SET_CONTROL_LINE_STATE:

            /* This means the host is setting the control line state.
             * Read the control line state. We will accept this request
             * for now. 
             */

            controlLineStateData = (USB_CDC_CONTROL_LINE_STATE *)pData;
            appDataObject->controlLineStateData.dtr = controlLineStateData->dtr;
            appDataObject->controlLineStateData.carrier =
                    controlLineStateData->carrier;

            USB_DEVICE_ControlStatus(appDataObject->deviceHandle,
                    USB_DEVICE_CONTROL_STATUS_OK);

            break;

        case USB_DEVICE_CDC_EVENT_SEND_BREAK:

            /* This means that the host is requesting that a break of the
             * specified duration be sent. Read the break duration 
             */

            appDataObject->breakData = ((USB_DEVICE_CDC_EVENT_DATA_SEND_BREAK *)
                    pData)->breakDuration;
            
            /* Complete the control transfer by sending a ZLP  */
            USB_DEVICE_ControlStatus(appDataObject->deviceHandle,
                    USB_DEVICE_CONTROL_STATUS_OK);
            
            break;

        case USB_DEVICE_CDC_EVENT_READ_COMPLETE:

            /* This means that the host has sent some data, store the same */
            eventDataRead = (USB_DEVICE_CDC_EVENT_DATA_READ_COMPLETE *)pData;
            
            /* Notify state machine that a read was completed */
            appDataObject->isReadComplete = true;
            
            /* Update the number of bytes read */
            appDataObject->numBytesRead = eventDataRead->length;
            
            break;

        case USB_DEVICE_CDC_EVENT_CONTROL_TRANSFER_DATA_RECEIVED:

            /* The data stage of the last control transfer is
             * complete. For now we accept all the data 
             */

            USB_DEVICE_ControlStatus(appDataObject->deviceHandle,
                    USB_DEVICE_CONTROL_STATUS_OK);
            
            break;

        case USB_DEVICE_CDC_EVENT_CONTROL_TRANSFER_DATA_SENT:

            /* This means the GET LINE CODING function data is valid. We don't
             * do much with this data in this demo.
             */
            
            break;

        case USB_DEVICE_CDC_EVENT_WRITE_COMPLETE:

            /* This means that the data write got completed and we can schedule
             * the next read. Notify the state machine by setting a flag. 
             */

            /* Notify state machine that a write was completed */
            appDataObject->isWriteComplete = true;
            
            break;

        default:
            break;
    }

    return USB_DEVICE_CDC_EVENT_RESPONSE_NONE;
}

/***********************************************
 * Application USB Device Layer Event Handler.
 ***********************************************/
void APP_USB_USBDeviceEventHandler 
(
    USB_DEVICE_EVENT event, 
    void * eventData, 
    uintptr_t context 
)
{
    USB_DEVICE_EVENT_DATA_CONFIGURED *configuredEventData;

    switch(event)
    {
        case USB_DEVICE_EVENT_SOF:

            app_usbData.sofEventHasOccurred = true;
            
            break;

        case USB_DEVICE_EVENT_RESET:

            /* Update LED to show reset state */
            USB_LED_Clear();

            app_usbData.isConfigured = false;

            break;

        case USB_DEVICE_EVENT_CONFIGURED:

            /* Check the configuration. We only support configuration 1 */
            configuredEventData = (USB_DEVICE_EVENT_DATA_CONFIGURED*)eventData;
            
            if ( configuredEventData->configurationValue == 1)
            {
                /* Mark that the device is now configured */
                app_usbData.isConfigured = true;

                /* Update LED to show configured state */
                USB_LED_Set();

                /* Register the CDC Device application event handler here.
                 * Note how the appData object pointer is passed as the
                 * user data 
                 */
                USB_DEVICE_CDC_EventHandlerSet(USB_DEVICE_CDC_INDEX_0,
                    APP_USB_USBDeviceCDCEventHandler,
                    (uintptr_t)&app_usbData);

            }
            
            break;

        case USB_DEVICE_EVENT_POWER_DETECTED:

            /* VBUS was detected. We can attach the device */
            USB_DEVICE_Attach(app_usbData.deviceHandle);
            
            break;

        case USB_DEVICE_EVENT_POWER_REMOVED:

            /* VBUS is not available any more. Detach the device. */
            USB_DEVICE_Detach(app_usbData.deviceHandle);
            
            USB_LED_Clear();
            
            break;

        case USB_DEVICE_EVENT_SUSPENDED:

            USB_LED_Clear();
            
            break;

        case USB_DEVICE_EVENT_RESUMED:
        case USB_DEVICE_EVENT_ERROR:
        default:
            
            break;
    }
}

/*******************************************************************************
 * Timer interrupt event handler for waveform generation
 ******************************************************************************/
void TC3_CallBack_Function (TC_TIMER_STATUS status, uintptr_t context)
{ 
    DAC_DataWrite (triangle_wave[sample_number]);

    sample_number++;

    if (sample_number >= 100)
    {
       sample_number = 0;
    }
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/*
 ****************************************************
 * This function is called in every step of the     *
 * application state machine.                       *
 ****************************************************
*/

bool APP_USB_StateReset(void)
{
    /* This function returns true if the device was reset */

    bool retVal;

    if(app_usbData.isConfigured == false)
    {
        app_usbData.state = APP_USB_STATE_WAIT_FOR_CONFIGURATION;
        app_usbData.readTransferHandle = USB_DEVICE_CDC_TRANSFER_HANDLE_INVALID;
        app_usbData.writeTransferHandle =
                USB_DEVICE_CDC_TRANSFER_HANDLE_INVALID;
        app_usbData.isReadComplete = true;
        app_usbData.isWriteComplete = true;
        retVal = true;
    }
    else
    {
        retVal = false;
    }

    return(retVal);
}


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_USB_Initialize ( void )

  Remarks:
    See prototype in app_usb.h.
 */

void APP_USB_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    app_usbData.state = APP_USB_STATE_INIT;

    /* Device Layer Handle  */
    app_usbData.deviceHandle = USB_DEVICE_HANDLE_INVALID ;

    /* Device configured status */
    app_usbData.isConfigured = false;

    /* Initial get line coding state */
    app_usbData.getLineCodingData.dwDTERate = 9600;
    app_usbData.getLineCodingData.bParityType = 0;
    app_usbData.getLineCodingData.bParityType = 0;
    app_usbData.getLineCodingData.bDataBits = 8;

    /* Read Transfer Handle */
    app_usbData.readTransferHandle = USB_DEVICE_CDC_TRANSFER_HANDLE_INVALID;

    /* Write Transfer Handle */
    app_usbData.writeTransferHandle = USB_DEVICE_CDC_TRANSFER_HANDLE_INVALID;

    /* Initialize the read complete flag */
    app_usbData.isReadComplete = true;

    /*Initialize the write complete flag*/
    app_usbData.isWriteComplete = true;

    /* Reset other flags */
    app_usbData.sofEventHasOccurred = false;

    /* Set up the read buffer */
    app_usbData.cdcReadBuffer = &cdcReadBuffer[0];

    /* Set up the read buffer */
    app_usbData.cdcWriteBuffer = &cdcWriteBuffer[0];
}


/******************************************************************************
  Function:
    void APP_USB_Tasks ( void )

  Remarks:
    See prototype in app_usb.h.
 */

void APP_USB_Tasks ( void )
{
    /* Update the application state machine based
     * on the current state 
     */

    /* Check the application's current state. */
    switch ( app_usbData.state )
    {
        /* Application's initial state. */
        case APP_USB_STATE_INIT:
            
            /* register timer interrupt callback function for waveform generation */
            TC3_TimerStop();
            TC3_TimerCallbackRegister(TC3_CallBack_Function, (uintptr_t)NULL);
            
            /* Open the device layer */
            app_usbData.deviceHandle = USB_DEVICE_Open(USB_DEVICE_INDEX_0,
                DRV_IO_INTENT_READWRITE);

            if(app_usbData.deviceHandle != USB_DEVICE_HANDLE_INVALID)
            {
                /* Register a callback with device layer to get event 
                 * notification (for end point 0) 
                 */
                USB_DEVICE_EventHandlerSet(app_usbData.deviceHandle,
                    APP_USB_USBDeviceEventHandler, 0);

                app_usbData.state = APP_USB_STATE_WAIT_FOR_CONFIGURATION;
            }
            else
            {
                /* The Device Layer is not ready to be opened. We should try
                 * again later. 
                 */
            }

            break;

        case APP_USB_STATE_WAIT_FOR_CONFIGURATION:

            /* Check if the device was configured */
            if(app_usbData.isConfigured)
            {
                /* If the device is configured then lets start reading */
                app_usbData.state = APP_USB_STATE_SCHEDULE_READ;
            }
            
            break;

        case APP_USB_STATE_SCHEDULE_READ:

            if(APP_USB_StateReset())
            {
                break;
            }

            /* If a read is complete, then schedule a read
             * else wait for the current read to complete 
             */
            app_usbData.state = APP_USB_STATE_WAIT_FOR_READ_COMPLETE;
            
            if(app_usbData.isReadComplete == true)
            {
                app_usbData.isReadComplete = false;
                app_usbData.readTransferHandle = 
                        USB_DEVICE_CDC_TRANSFER_HANDLE_INVALID;

                /* Schedule read */
                USB_DEVICE_CDC_Read (USB_DEVICE_CDC_INDEX_0,
                    &app_usbData.readTransferHandle,
                    app_usbData.cdcReadBuffer,
                    APP_USB_READ_BUFFER_SIZE);
                
                if(app_usbData.readTransferHandle ==
                        USB_DEVICE_CDC_TRANSFER_HANDLE_INVALID)
                {
                    app_usbData.state = APP_USB_STATE_ERROR;
                break;
                }
            }

            break;

        case APP_USB_STATE_WAIT_FOR_READ_COMPLETE:

            if(APP_USB_StateReset())
            {
                break;
            }

            /* Check if a character was received, The isReadComplete flag gets 
             * updated in the CDC event handler. 
             */
            if(app_usbData.isReadComplete)
            {
                app_usbData.state = APP_USB_STATE_PLAY_ALARM;
            }

            break;


        case APP_USB_STATE_PLAY_ALARM:

            if(APP_USB_StateReset())
            {
                break;
            }

            /* Process received data and check if 
             * data matches a command and then process it.
             * Only the first character is considered.
             */
            if ( app_usbData.cdcReadBuffer[0] == 'A' )
            {
                for ( i = 0; i < 9; i++ )
                {
                    TC3_TimerStart();
                    j = 0xFFFFF;
                    while( j-- > 0 );
                    TC3_TimerStop();
                    j = 0xFFFFF;
                    while( j-- > 0 );
                }
            }
            
            app_usbData.state = APP_USB_STATE_SCHEDULE_READ;

            break;

        case APP_USB_STATE_ERROR:
        default:
            
            break;
    }
}
/*******************************************************************************
 End of File
 */
