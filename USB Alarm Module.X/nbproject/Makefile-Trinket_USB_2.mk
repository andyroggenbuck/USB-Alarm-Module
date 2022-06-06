#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-Trinket_USB_2.mk)" "nbproject/Makefile-local-Trinket_USB_2.mk"
include nbproject/Makefile-local-Trinket_USB_2.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Trinket_USB_2
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/USB_Alarm_Module.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/USB_Alarm_Module.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/Trinket_USB_2/driver/usb/usbfsv1/src/drv_usbfsv1.c ../src/config/Trinket_USB_2/driver/usb/usbfsv1/src/drv_usbfsv1_device.c ../src/config/Trinket_USB_2/peripheral/clock/plib_clock.c ../src/config/Trinket_USB_2/peripheral/dac/plib_dac.c ../src/config/Trinket_USB_2/peripheral/evsys/plib_evsys.c ../src/config/Trinket_USB_2/peripheral/nvic/plib_nvic.c ../src/config/Trinket_USB_2/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/Trinket_USB_2/peripheral/port/plib_port.c ../src/config/Trinket_USB_2/peripheral/tc/plib_tc3.c ../src/config/Trinket_USB_2/stdio/xc32_monitor.c ../src/config/Trinket_USB_2/system/int/src/sys_int.c ../src/config/Trinket_USB_2/system/time/src/sys_time.c ../src/config/Trinket_USB_2/usb/src/usb_device.c ../src/config/Trinket_USB_2/usb/src/usb_device_cdc.c ../src/config/Trinket_USB_2/usb/src/usb_device_cdc_acm.c ../src/config/Trinket_USB_2/initialization.c ../src/config/Trinket_USB_2/interrupts.c ../src/config/Trinket_USB_2/exceptions.c ../src/config/Trinket_USB_2/startup_xc32.c ../src/config/Trinket_USB_2/libc_syscalls.c ../src/config/Trinket_USB_2/usb_device_init_data.c ../src/config/Trinket_USB_2/tasks.c ../src/main.c ../src/app_usb.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2108104030/drv_usbfsv1.o ${OBJECTDIR}/_ext/2108104030/drv_usbfsv1_device.o ${OBJECTDIR}/_ext/1796475310/plib_clock.o ${OBJECTDIR}/_ext/140417318/plib_dac.o ${OBJECTDIR}/_ext/1798624796/plib_evsys.o ${OBJECTDIR}/_ext/58287938/plib_nvic.o ${OBJECTDIR}/_ext/1292982576/plib_nvmctrl.o ${OBJECTDIR}/_ext/58341089/plib_port.o ${OBJECTDIR}/_ext/1390003407/plib_tc3.o ${OBJECTDIR}/_ext/1578018698/xc32_monitor.o ${OBJECTDIR}/_ext/1961919639/sys_int.o ${OBJECTDIR}/_ext/1909065425/sys_time.o ${OBJECTDIR}/_ext/1390297478/usb_device.o ${OBJECTDIR}/_ext/1390297478/usb_device_cdc.o ${OBJECTDIR}/_ext/1390297478/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/1189347772/initialization.o ${OBJECTDIR}/_ext/1189347772/interrupts.o ${OBJECTDIR}/_ext/1189347772/exceptions.o ${OBJECTDIR}/_ext/1189347772/startup_xc32.o ${OBJECTDIR}/_ext/1189347772/libc_syscalls.o ${OBJECTDIR}/_ext/1189347772/usb_device_init_data.o ${OBJECTDIR}/_ext/1189347772/tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_usb.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2108104030/drv_usbfsv1.o.d ${OBJECTDIR}/_ext/2108104030/drv_usbfsv1_device.o.d ${OBJECTDIR}/_ext/1796475310/plib_clock.o.d ${OBJECTDIR}/_ext/140417318/plib_dac.o.d ${OBJECTDIR}/_ext/1798624796/plib_evsys.o.d ${OBJECTDIR}/_ext/58287938/plib_nvic.o.d ${OBJECTDIR}/_ext/1292982576/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/58341089/plib_port.o.d ${OBJECTDIR}/_ext/1390003407/plib_tc3.o.d ${OBJECTDIR}/_ext/1578018698/xc32_monitor.o.d ${OBJECTDIR}/_ext/1961919639/sys_int.o.d ${OBJECTDIR}/_ext/1909065425/sys_time.o.d ${OBJECTDIR}/_ext/1390297478/usb_device.o.d ${OBJECTDIR}/_ext/1390297478/usb_device_cdc.o.d ${OBJECTDIR}/_ext/1390297478/usb_device_cdc_acm.o.d ${OBJECTDIR}/_ext/1189347772/initialization.o.d ${OBJECTDIR}/_ext/1189347772/interrupts.o.d ${OBJECTDIR}/_ext/1189347772/exceptions.o.d ${OBJECTDIR}/_ext/1189347772/startup_xc32.o.d ${OBJECTDIR}/_ext/1189347772/libc_syscalls.o.d ${OBJECTDIR}/_ext/1189347772/usb_device_init_data.o.d ${OBJECTDIR}/_ext/1189347772/tasks.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app_usb.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2108104030/drv_usbfsv1.o ${OBJECTDIR}/_ext/2108104030/drv_usbfsv1_device.o ${OBJECTDIR}/_ext/1796475310/plib_clock.o ${OBJECTDIR}/_ext/140417318/plib_dac.o ${OBJECTDIR}/_ext/1798624796/plib_evsys.o ${OBJECTDIR}/_ext/58287938/plib_nvic.o ${OBJECTDIR}/_ext/1292982576/plib_nvmctrl.o ${OBJECTDIR}/_ext/58341089/plib_port.o ${OBJECTDIR}/_ext/1390003407/plib_tc3.o ${OBJECTDIR}/_ext/1578018698/xc32_monitor.o ${OBJECTDIR}/_ext/1961919639/sys_int.o ${OBJECTDIR}/_ext/1909065425/sys_time.o ${OBJECTDIR}/_ext/1390297478/usb_device.o ${OBJECTDIR}/_ext/1390297478/usb_device_cdc.o ${OBJECTDIR}/_ext/1390297478/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/1189347772/initialization.o ${OBJECTDIR}/_ext/1189347772/interrupts.o ${OBJECTDIR}/_ext/1189347772/exceptions.o ${OBJECTDIR}/_ext/1189347772/startup_xc32.o ${OBJECTDIR}/_ext/1189347772/libc_syscalls.o ${OBJECTDIR}/_ext/1189347772/usb_device_init_data.o ${OBJECTDIR}/_ext/1189347772/tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_usb.o

# Source Files
SOURCEFILES=../src/config/Trinket_USB_2/driver/usb/usbfsv1/src/drv_usbfsv1.c ../src/config/Trinket_USB_2/driver/usb/usbfsv1/src/drv_usbfsv1_device.c ../src/config/Trinket_USB_2/peripheral/clock/plib_clock.c ../src/config/Trinket_USB_2/peripheral/dac/plib_dac.c ../src/config/Trinket_USB_2/peripheral/evsys/plib_evsys.c ../src/config/Trinket_USB_2/peripheral/nvic/plib_nvic.c ../src/config/Trinket_USB_2/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/Trinket_USB_2/peripheral/port/plib_port.c ../src/config/Trinket_USB_2/peripheral/tc/plib_tc3.c ../src/config/Trinket_USB_2/stdio/xc32_monitor.c ../src/config/Trinket_USB_2/system/int/src/sys_int.c ../src/config/Trinket_USB_2/system/time/src/sys_time.c ../src/config/Trinket_USB_2/usb/src/usb_device.c ../src/config/Trinket_USB_2/usb/src/usb_device_cdc.c ../src/config/Trinket_USB_2/usb/src/usb_device_cdc_acm.c ../src/config/Trinket_USB_2/initialization.c ../src/config/Trinket_USB_2/interrupts.c ../src/config/Trinket_USB_2/exceptions.c ../src/config/Trinket_USB_2/startup_xc32.c ../src/config/Trinket_USB_2/libc_syscalls.c ../src/config/Trinket_USB_2/usb_device_init_data.c ../src/config/Trinket_USB_2/tasks.c ../src/main.c ../src/app_usb.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-Trinket_USB_2.mk ${DISTDIR}/USB_Alarm_Module.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMD21E18A
MP_LINKER_FILE_OPTION=,--script="..\src\config\Trinket_USB_2\ATSAMD21E18A.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2108104030/drv_usbfsv1.o: ../src/config/Trinket_USB_2/driver/usb/usbfsv1/src/drv_usbfsv1.c  .generated_files/flags/Trinket_USB_2/e34f829cfe2ddf24bdb22d356c8621e815efc948 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/2108104030" 
	@${RM} ${OBJECTDIR}/_ext/2108104030/drv_usbfsv1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108104030/drv_usbfsv1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2108104030/drv_usbfsv1.o.d" -o ${OBJECTDIR}/_ext/2108104030/drv_usbfsv1.o ../src/config/Trinket_USB_2/driver/usb/usbfsv1/src/drv_usbfsv1.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2108104030/drv_usbfsv1_device.o: ../src/config/Trinket_USB_2/driver/usb/usbfsv1/src/drv_usbfsv1_device.c  .generated_files/flags/Trinket_USB_2/8f158f0a99cdaee16f775bc3cceb51070b43f635 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/2108104030" 
	@${RM} ${OBJECTDIR}/_ext/2108104030/drv_usbfsv1_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108104030/drv_usbfsv1_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2108104030/drv_usbfsv1_device.o.d" -o ${OBJECTDIR}/_ext/2108104030/drv_usbfsv1_device.o ../src/config/Trinket_USB_2/driver/usb/usbfsv1/src/drv_usbfsv1_device.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1796475310/plib_clock.o: ../src/config/Trinket_USB_2/peripheral/clock/plib_clock.c  .generated_files/flags/Trinket_USB_2/fbf39857ce1cbdb3251d020a4659c2b9e5c8f968 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1796475310" 
	@${RM} ${OBJECTDIR}/_ext/1796475310/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796475310/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1796475310/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1796475310/plib_clock.o ../src/config/Trinket_USB_2/peripheral/clock/plib_clock.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/140417318/plib_dac.o: ../src/config/Trinket_USB_2/peripheral/dac/plib_dac.c  .generated_files/flags/Trinket_USB_2/3c20cafe71f834a23c9bfb1dbcd33e08250c3923 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/140417318" 
	@${RM} ${OBJECTDIR}/_ext/140417318/plib_dac.o.d 
	@${RM} ${OBJECTDIR}/_ext/140417318/plib_dac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/140417318/plib_dac.o.d" -o ${OBJECTDIR}/_ext/140417318/plib_dac.o ../src/config/Trinket_USB_2/peripheral/dac/plib_dac.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1798624796/plib_evsys.o: ../src/config/Trinket_USB_2/peripheral/evsys/plib_evsys.c  .generated_files/flags/Trinket_USB_2/60f6e6ad2068aabb726c3edec007340de77015c8 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1798624796" 
	@${RM} ${OBJECTDIR}/_ext/1798624796/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1798624796/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1798624796/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1798624796/plib_evsys.o ../src/config/Trinket_USB_2/peripheral/evsys/plib_evsys.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/58287938/plib_nvic.o: ../src/config/Trinket_USB_2/peripheral/nvic/plib_nvic.c  .generated_files/flags/Trinket_USB_2/326a95fdeb4c4867eb7b6aa943339cd3bb91c6d8 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/58287938" 
	@${RM} ${OBJECTDIR}/_ext/58287938/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/58287938/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/58287938/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/58287938/plib_nvic.o ../src/config/Trinket_USB_2/peripheral/nvic/plib_nvic.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1292982576/plib_nvmctrl.o: ../src/config/Trinket_USB_2/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/Trinket_USB_2/27eb8f902dfab53a0f141b8135369da65a190787 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1292982576" 
	@${RM} ${OBJECTDIR}/_ext/1292982576/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1292982576/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1292982576/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1292982576/plib_nvmctrl.o ../src/config/Trinket_USB_2/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/58341089/plib_port.o: ../src/config/Trinket_USB_2/peripheral/port/plib_port.c  .generated_files/flags/Trinket_USB_2/fc4c0fd915a301ca4233c66de25d2cedd602ae48 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/58341089" 
	@${RM} ${OBJECTDIR}/_ext/58341089/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/58341089/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/58341089/plib_port.o.d" -o ${OBJECTDIR}/_ext/58341089/plib_port.o ../src/config/Trinket_USB_2/peripheral/port/plib_port.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390003407/plib_tc3.o: ../src/config/Trinket_USB_2/peripheral/tc/plib_tc3.c  .generated_files/flags/Trinket_USB_2/b78069bab3d3f56ab800058bdcac01f96b9d22c6 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1390003407" 
	@${RM} ${OBJECTDIR}/_ext/1390003407/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390003407/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390003407/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/1390003407/plib_tc3.o ../src/config/Trinket_USB_2/peripheral/tc/plib_tc3.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1578018698/xc32_monitor.o: ../src/config/Trinket_USB_2/stdio/xc32_monitor.c  .generated_files/flags/Trinket_USB_2/ac2f1ffaceb16d64caf9b6b583b2e9688ba9d7f8 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1578018698" 
	@${RM} ${OBJECTDIR}/_ext/1578018698/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1578018698/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1578018698/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1578018698/xc32_monitor.o ../src/config/Trinket_USB_2/stdio/xc32_monitor.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1961919639/sys_int.o: ../src/config/Trinket_USB_2/system/int/src/sys_int.c  .generated_files/flags/Trinket_USB_2/6b6228b1b071edcf0ab300c01601c52c10f148ff .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1961919639" 
	@${RM} ${OBJECTDIR}/_ext/1961919639/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1961919639/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1961919639/sys_int.o.d" -o ${OBJECTDIR}/_ext/1961919639/sys_int.o ../src/config/Trinket_USB_2/system/int/src/sys_int.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1909065425/sys_time.o: ../src/config/Trinket_USB_2/system/time/src/sys_time.c  .generated_files/flags/Trinket_USB_2/94f5507c66ca02016544d78a7d7bfd0047fc7461 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1909065425" 
	@${RM} ${OBJECTDIR}/_ext/1909065425/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1909065425/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1909065425/sys_time.o.d" -o ${OBJECTDIR}/_ext/1909065425/sys_time.o ../src/config/Trinket_USB_2/system/time/src/sys_time.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390297478/usb_device.o: ../src/config/Trinket_USB_2/usb/src/usb_device.c  .generated_files/flags/Trinket_USB_2/2d9d6c1b70d32d98efd53308e0283c43d1873a77 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1390297478" 
	@${RM} ${OBJECTDIR}/_ext/1390297478/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390297478/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390297478/usb_device.o.d" -o ${OBJECTDIR}/_ext/1390297478/usb_device.o ../src/config/Trinket_USB_2/usb/src/usb_device.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390297478/usb_device_cdc.o: ../src/config/Trinket_USB_2/usb/src/usb_device_cdc.c  .generated_files/flags/Trinket_USB_2/39ad851d06dc3f5d3d8a6b36f15c9a74802d37b9 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1390297478" 
	@${RM} ${OBJECTDIR}/_ext/1390297478/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390297478/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390297478/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/1390297478/usb_device_cdc.o ../src/config/Trinket_USB_2/usb/src/usb_device_cdc.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390297478/usb_device_cdc_acm.o: ../src/config/Trinket_USB_2/usb/src/usb_device_cdc_acm.c  .generated_files/flags/Trinket_USB_2/20793330f463acc9f87aa2630bb50bf12d53050f .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1390297478" 
	@${RM} ${OBJECTDIR}/_ext/1390297478/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390297478/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390297478/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/1390297478/usb_device_cdc_acm.o ../src/config/Trinket_USB_2/usb/src/usb_device_cdc_acm.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1189347772/initialization.o: ../src/config/Trinket_USB_2/initialization.c  .generated_files/flags/Trinket_USB_2/f27891d217e64158eea462ba2204cf3dd9104706 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1189347772" 
	@${RM} ${OBJECTDIR}/_ext/1189347772/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1189347772/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1189347772/initialization.o.d" -o ${OBJECTDIR}/_ext/1189347772/initialization.o ../src/config/Trinket_USB_2/initialization.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1189347772/interrupts.o: ../src/config/Trinket_USB_2/interrupts.c  .generated_files/flags/Trinket_USB_2/9ca022e666ae8e5503f99711f8ac990359323afa .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1189347772" 
	@${RM} ${OBJECTDIR}/_ext/1189347772/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1189347772/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1189347772/interrupts.o.d" -o ${OBJECTDIR}/_ext/1189347772/interrupts.o ../src/config/Trinket_USB_2/interrupts.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1189347772/exceptions.o: ../src/config/Trinket_USB_2/exceptions.c  .generated_files/flags/Trinket_USB_2/76c79aac85111443226af095c9249cbc50deb33b .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1189347772" 
	@${RM} ${OBJECTDIR}/_ext/1189347772/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1189347772/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1189347772/exceptions.o.d" -o ${OBJECTDIR}/_ext/1189347772/exceptions.o ../src/config/Trinket_USB_2/exceptions.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1189347772/startup_xc32.o: ../src/config/Trinket_USB_2/startup_xc32.c  .generated_files/flags/Trinket_USB_2/36e39bdff1692e00783ec4e40ee824f00d4da7a9 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1189347772" 
	@${RM} ${OBJECTDIR}/_ext/1189347772/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1189347772/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1189347772/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1189347772/startup_xc32.o ../src/config/Trinket_USB_2/startup_xc32.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1189347772/libc_syscalls.o: ../src/config/Trinket_USB_2/libc_syscalls.c  .generated_files/flags/Trinket_USB_2/8d8817716397045bb680ed24a700bde4606ea7c8 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1189347772" 
	@${RM} ${OBJECTDIR}/_ext/1189347772/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1189347772/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1189347772/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1189347772/libc_syscalls.o ../src/config/Trinket_USB_2/libc_syscalls.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1189347772/usb_device_init_data.o: ../src/config/Trinket_USB_2/usb_device_init_data.c  .generated_files/flags/Trinket_USB_2/66dd5a505c6fd095a0826133303169c54497e7b5 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1189347772" 
	@${RM} ${OBJECTDIR}/_ext/1189347772/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1189347772/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1189347772/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/1189347772/usb_device_init_data.o ../src/config/Trinket_USB_2/usb_device_init_data.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1189347772/tasks.o: ../src/config/Trinket_USB_2/tasks.c  .generated_files/flags/Trinket_USB_2/7bf7342a6df54ca61d554d2db10c1a4ba5f6194 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1189347772" 
	@${RM} ${OBJECTDIR}/_ext/1189347772/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1189347772/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1189347772/tasks.o.d" -o ${OBJECTDIR}/_ext/1189347772/tasks.o ../src/config/Trinket_USB_2/tasks.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/Trinket_USB_2/4157114a38f060538d1fa5a1b0bb00cb8fc36756 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_usb.o: ../src/app_usb.c  .generated_files/flags/Trinket_USB_2/a9194236a041ca58daf135245e6e73f29b06bf7c .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_usb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_usb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_usb.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_usb.o ../src/app_usb.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/2108104030/drv_usbfsv1.o: ../src/config/Trinket_USB_2/driver/usb/usbfsv1/src/drv_usbfsv1.c  .generated_files/flags/Trinket_USB_2/f52e109ffcc13e2c3d148710630b041d41fe9816 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/2108104030" 
	@${RM} ${OBJECTDIR}/_ext/2108104030/drv_usbfsv1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108104030/drv_usbfsv1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2108104030/drv_usbfsv1.o.d" -o ${OBJECTDIR}/_ext/2108104030/drv_usbfsv1.o ../src/config/Trinket_USB_2/driver/usb/usbfsv1/src/drv_usbfsv1.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2108104030/drv_usbfsv1_device.o: ../src/config/Trinket_USB_2/driver/usb/usbfsv1/src/drv_usbfsv1_device.c  .generated_files/flags/Trinket_USB_2/ce350a7b0d28fe6940da2445864ad06aa20e2c61 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/2108104030" 
	@${RM} ${OBJECTDIR}/_ext/2108104030/drv_usbfsv1_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108104030/drv_usbfsv1_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2108104030/drv_usbfsv1_device.o.d" -o ${OBJECTDIR}/_ext/2108104030/drv_usbfsv1_device.o ../src/config/Trinket_USB_2/driver/usb/usbfsv1/src/drv_usbfsv1_device.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1796475310/plib_clock.o: ../src/config/Trinket_USB_2/peripheral/clock/plib_clock.c  .generated_files/flags/Trinket_USB_2/cbebf690825b4c401f64ee3882a26c3b95fbe134 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1796475310" 
	@${RM} ${OBJECTDIR}/_ext/1796475310/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1796475310/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1796475310/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1796475310/plib_clock.o ../src/config/Trinket_USB_2/peripheral/clock/plib_clock.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/140417318/plib_dac.o: ../src/config/Trinket_USB_2/peripheral/dac/plib_dac.c  .generated_files/flags/Trinket_USB_2/7232ff9a49b81066c43d785f0c420a18454b7c2a .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/140417318" 
	@${RM} ${OBJECTDIR}/_ext/140417318/plib_dac.o.d 
	@${RM} ${OBJECTDIR}/_ext/140417318/plib_dac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/140417318/plib_dac.o.d" -o ${OBJECTDIR}/_ext/140417318/plib_dac.o ../src/config/Trinket_USB_2/peripheral/dac/plib_dac.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1798624796/plib_evsys.o: ../src/config/Trinket_USB_2/peripheral/evsys/plib_evsys.c  .generated_files/flags/Trinket_USB_2/24c5cfd22a4b86b2bc1b2f7f0e635e99d5582f78 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1798624796" 
	@${RM} ${OBJECTDIR}/_ext/1798624796/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1798624796/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1798624796/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1798624796/plib_evsys.o ../src/config/Trinket_USB_2/peripheral/evsys/plib_evsys.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/58287938/plib_nvic.o: ../src/config/Trinket_USB_2/peripheral/nvic/plib_nvic.c  .generated_files/flags/Trinket_USB_2/7f27072e526961212b520794d9fe53c453a6d35c .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/58287938" 
	@${RM} ${OBJECTDIR}/_ext/58287938/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/58287938/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/58287938/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/58287938/plib_nvic.o ../src/config/Trinket_USB_2/peripheral/nvic/plib_nvic.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1292982576/plib_nvmctrl.o: ../src/config/Trinket_USB_2/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/Trinket_USB_2/1a21ee32b7b8db86910e1d2e82dac778eceab5b8 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1292982576" 
	@${RM} ${OBJECTDIR}/_ext/1292982576/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1292982576/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1292982576/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1292982576/plib_nvmctrl.o ../src/config/Trinket_USB_2/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/58341089/plib_port.o: ../src/config/Trinket_USB_2/peripheral/port/plib_port.c  .generated_files/flags/Trinket_USB_2/a0669a773ce6540dba171300c3c6b6c81aab8cdb .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/58341089" 
	@${RM} ${OBJECTDIR}/_ext/58341089/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/58341089/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/58341089/plib_port.o.d" -o ${OBJECTDIR}/_ext/58341089/plib_port.o ../src/config/Trinket_USB_2/peripheral/port/plib_port.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390003407/plib_tc3.o: ../src/config/Trinket_USB_2/peripheral/tc/plib_tc3.c  .generated_files/flags/Trinket_USB_2/76a119f245623f3547d13e7df2ddde9443a130fc .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1390003407" 
	@${RM} ${OBJECTDIR}/_ext/1390003407/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390003407/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390003407/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/1390003407/plib_tc3.o ../src/config/Trinket_USB_2/peripheral/tc/plib_tc3.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1578018698/xc32_monitor.o: ../src/config/Trinket_USB_2/stdio/xc32_monitor.c  .generated_files/flags/Trinket_USB_2/67ef77bf9f58a9b8d94320269f3bfc6779d6d788 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1578018698" 
	@${RM} ${OBJECTDIR}/_ext/1578018698/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1578018698/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1578018698/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1578018698/xc32_monitor.o ../src/config/Trinket_USB_2/stdio/xc32_monitor.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1961919639/sys_int.o: ../src/config/Trinket_USB_2/system/int/src/sys_int.c  .generated_files/flags/Trinket_USB_2/883e1d8b5bc35775a971888851cf4dce3cdf7e7b .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1961919639" 
	@${RM} ${OBJECTDIR}/_ext/1961919639/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1961919639/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1961919639/sys_int.o.d" -o ${OBJECTDIR}/_ext/1961919639/sys_int.o ../src/config/Trinket_USB_2/system/int/src/sys_int.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1909065425/sys_time.o: ../src/config/Trinket_USB_2/system/time/src/sys_time.c  .generated_files/flags/Trinket_USB_2/41edf85295e5e145a9b1cceb7777cb0347fd606a .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1909065425" 
	@${RM} ${OBJECTDIR}/_ext/1909065425/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1909065425/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1909065425/sys_time.o.d" -o ${OBJECTDIR}/_ext/1909065425/sys_time.o ../src/config/Trinket_USB_2/system/time/src/sys_time.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390297478/usb_device.o: ../src/config/Trinket_USB_2/usb/src/usb_device.c  .generated_files/flags/Trinket_USB_2/55c4b72a89511a75e1db4c7ac89584a40320a7f6 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1390297478" 
	@${RM} ${OBJECTDIR}/_ext/1390297478/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390297478/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390297478/usb_device.o.d" -o ${OBJECTDIR}/_ext/1390297478/usb_device.o ../src/config/Trinket_USB_2/usb/src/usb_device.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390297478/usb_device_cdc.o: ../src/config/Trinket_USB_2/usb/src/usb_device_cdc.c  .generated_files/flags/Trinket_USB_2/43f2645403bafb3896cffa6d1eb251b7dc337ab7 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1390297478" 
	@${RM} ${OBJECTDIR}/_ext/1390297478/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390297478/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390297478/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/1390297478/usb_device_cdc.o ../src/config/Trinket_USB_2/usb/src/usb_device_cdc.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1390297478/usb_device_cdc_acm.o: ../src/config/Trinket_USB_2/usb/src/usb_device_cdc_acm.c  .generated_files/flags/Trinket_USB_2/5c857259db6e088cd9248f3b3a17c2bbfa1ac6dd .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1390297478" 
	@${RM} ${OBJECTDIR}/_ext/1390297478/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1390297478/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1390297478/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/1390297478/usb_device_cdc_acm.o ../src/config/Trinket_USB_2/usb/src/usb_device_cdc_acm.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1189347772/initialization.o: ../src/config/Trinket_USB_2/initialization.c  .generated_files/flags/Trinket_USB_2/e6871daa1db90ee59a0902c428341fa3cd7a4f7e .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1189347772" 
	@${RM} ${OBJECTDIR}/_ext/1189347772/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1189347772/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1189347772/initialization.o.d" -o ${OBJECTDIR}/_ext/1189347772/initialization.o ../src/config/Trinket_USB_2/initialization.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1189347772/interrupts.o: ../src/config/Trinket_USB_2/interrupts.c  .generated_files/flags/Trinket_USB_2/397dd1e532d3822c7ef8a00be1537a0a55cf5096 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1189347772" 
	@${RM} ${OBJECTDIR}/_ext/1189347772/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1189347772/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1189347772/interrupts.o.d" -o ${OBJECTDIR}/_ext/1189347772/interrupts.o ../src/config/Trinket_USB_2/interrupts.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1189347772/exceptions.o: ../src/config/Trinket_USB_2/exceptions.c  .generated_files/flags/Trinket_USB_2/1d0cfb5d001cd941784cf4c0defa84e02fc5f3e4 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1189347772" 
	@${RM} ${OBJECTDIR}/_ext/1189347772/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1189347772/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1189347772/exceptions.o.d" -o ${OBJECTDIR}/_ext/1189347772/exceptions.o ../src/config/Trinket_USB_2/exceptions.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1189347772/startup_xc32.o: ../src/config/Trinket_USB_2/startup_xc32.c  .generated_files/flags/Trinket_USB_2/41a2f50a5436bcef3b9f0195d0603d2d59d7837 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1189347772" 
	@${RM} ${OBJECTDIR}/_ext/1189347772/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1189347772/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1189347772/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1189347772/startup_xc32.o ../src/config/Trinket_USB_2/startup_xc32.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1189347772/libc_syscalls.o: ../src/config/Trinket_USB_2/libc_syscalls.c  .generated_files/flags/Trinket_USB_2/7b7c01272e6f3e8758dcebe8df2c80027017c8d5 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1189347772" 
	@${RM} ${OBJECTDIR}/_ext/1189347772/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1189347772/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1189347772/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1189347772/libc_syscalls.o ../src/config/Trinket_USB_2/libc_syscalls.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1189347772/usb_device_init_data.o: ../src/config/Trinket_USB_2/usb_device_init_data.c  .generated_files/flags/Trinket_USB_2/743f9936bd0e710c772c1856f6fe94253b94b115 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1189347772" 
	@${RM} ${OBJECTDIR}/_ext/1189347772/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1189347772/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1189347772/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/1189347772/usb_device_init_data.o ../src/config/Trinket_USB_2/usb_device_init_data.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1189347772/tasks.o: ../src/config/Trinket_USB_2/tasks.c  .generated_files/flags/Trinket_USB_2/8799dce0d09fda3a2034c3fd06de693ec396c110 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1189347772" 
	@${RM} ${OBJECTDIR}/_ext/1189347772/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1189347772/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1189347772/tasks.o.d" -o ${OBJECTDIR}/_ext/1189347772/tasks.o ../src/config/Trinket_USB_2/tasks.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/Trinket_USB_2/57d425713ec9a604bf7dce41daf158fe694cd837 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app_usb.o: ../src/app_usb.c  .generated_files/flags/Trinket_USB_2/9771200eb10091d029d0dc640dcea9670527cf86 .generated_files/flags/Trinket_USB_2/dd2ff582530ed34ee1f31ca301405f410997c5e9
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_usb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_usb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/Trinket_USB_2" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_usb.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_usb.o ../src/app_usb.c    -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/USB_Alarm_Module.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/Trinket_USB_2/ATSAMD21E18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/USB_Alarm_Module.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	
else
${DISTDIR}/USB_Alarm_Module.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/Trinket_USB_2/ATSAMD21E18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/USB_Alarm_Module.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_Trinket_USB_2=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/USB_Alarm_Module.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
