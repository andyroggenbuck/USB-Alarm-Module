# USB Alarm Module
<p align="center">
<img src="https://github.com/andyroggenbuck/IoT-Security-Device/blob/main/images/Alarm%20Module%20Top%20Side.jpg" height="300"> <img src="https://github.com/andyroggenbuck/IoT-Security-Device/blob/main/images/Alarm%20Module%20Enclosure%20Underside%202.jpg" height="300"><br/>
<i>Prototype electronic assembly of the USB Alarm Module</i></p>  

I designed and programmed this USB device as part of the [IoT Security Device](https://github.com/andyroggenbuck/IoT-Security-Device/blob/main/README.md) my group and I created for our senior project at Ferris State University. The project uses interchangeable USB hardware modules like this one to add functionality to the unit -- this module plays an alarm sound when commanded by the host.

## Hardware
The Alarm Module uses an Adafruit Trinket M0 for USB communication (developed [here](https://github.com/andyroggenbuck/IoT-Security-Device/blob/main/README.md#developing-usb-device-application-code)), and adds a built in USB-powered amplifier and speaker to produce the alarm. Its hardware schematic is shown below.

<p align = "center">
  <img src="https://github.com/andyroggenbuck/IoT-Security-Device/blob/main/images/Schematics-Alarm%20Module.png" height = "350"></p>

The on-chip DAC in the Trinket M0's ATSAMD21E18A produces a shrill sawtooth waveform. This signal is amplified by an LM386 low voltage power amplifier, which drives a 16 ohm speaker.

## Software
This device communicates with a Raspberry Pi as its host, and it only needs to handle two tasks:
- Respond with its identification info when requested by the host, so the host knows which type of module is plugged in.
- Play the audible alarm tone when requested by the host.
