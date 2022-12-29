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
ifeq "$(wildcard nbproject/Makefile-local-LPCUSBDK_16F1459.mk)" "nbproject/Makefile-local-LPCUSBDK_16F1459.mk"
include nbproject/Makefile-local-LPCUSBDK_16F1459.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=LPCUSBDK_16F1459
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/low_pin_count_usb_development_kit_pic16f1459.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/low_pin_count_usb_development_kit_pic16f1459.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459/buttons.c ../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459/leds.c ../../../../../../framework/usb/src/usb_device.c ../demo_src/usb_descriptors.c ../../../../../../framework/usb/src/usb_device_hid.c ../demo_src/usb_events.c ../../../../../../framework/usb/src/usb_device_cdc.c ../demo_src/app_led_usb_status.c ../demo_src/main.c system.c ../demo_src/app_device_mouse.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1333569941/buttons.p1 ${OBJECTDIR}/_ext/1333569941/leds.p1 ${OBJECTDIR}/_ext/838585624/usb_device.p1 ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1 ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1 ${OBJECTDIR}/_ext/300881143/usb_events.p1 ${OBJECTDIR}/_ext/838585624/usb_device_cdc.p1 ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1 ${OBJECTDIR}/_ext/300881143/main.p1 ${OBJECTDIR}/system.p1 ${OBJECTDIR}/_ext/300881143/app_device_mouse.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1333569941/buttons.p1.d ${OBJECTDIR}/_ext/1333569941/leds.p1.d ${OBJECTDIR}/_ext/838585624/usb_device.p1.d ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1.d ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1.d ${OBJECTDIR}/_ext/300881143/usb_events.p1.d ${OBJECTDIR}/_ext/838585624/usb_device_cdc.p1.d ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1.d ${OBJECTDIR}/_ext/300881143/main.p1.d ${OBJECTDIR}/system.p1.d ${OBJECTDIR}/_ext/300881143/app_device_mouse.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1333569941/buttons.p1 ${OBJECTDIR}/_ext/1333569941/leds.p1 ${OBJECTDIR}/_ext/838585624/usb_device.p1 ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1 ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1 ${OBJECTDIR}/_ext/300881143/usb_events.p1 ${OBJECTDIR}/_ext/838585624/usb_device_cdc.p1 ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1 ${OBJECTDIR}/_ext/300881143/main.p1 ${OBJECTDIR}/system.p1 ${OBJECTDIR}/_ext/300881143/app_device_mouse.p1

# Source Files
SOURCEFILES=../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459/buttons.c ../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459/leds.c ../../../../../../framework/usb/src/usb_device.c ../demo_src/usb_descriptors.c ../../../../../../framework/usb/src/usb_device_hid.c ../demo_src/usb_events.c ../../../../../../framework/usb/src/usb_device_cdc.c ../demo_src/app_led_usb_status.c ../demo_src/main.c system.c ../demo_src/app_device_mouse.c



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
	${MAKE}  -f nbproject/Makefile-LPCUSBDK_16F1459.mk dist/${CND_CONF}/${IMAGE_TYPE}/low_pin_count_usb_development_kit_pic16f1459.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16F1459
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1333569941/buttons.p1: ../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459/buttons.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1333569941" 
	@${RM} ${OBJECTDIR}/_ext/1333569941/buttons.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1333569941/buttons.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1333569941/buttons.p1 ../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459/buttons.c 
	@-${MV} ${OBJECTDIR}/_ext/1333569941/buttons.d ${OBJECTDIR}/_ext/1333569941/buttons.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1333569941/buttons.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1333569941/leds.p1: ../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459/leds.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1333569941" 
	@${RM} ${OBJECTDIR}/_ext/1333569941/leds.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1333569941/leds.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1333569941/leds.p1 ../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459/leds.c 
	@-${MV} ${OBJECTDIR}/_ext/1333569941/leds.d ${OBJECTDIR}/_ext/1333569941/leds.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1333569941/leds.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/838585624/usb_device.p1: ../../../../../../framework/usb/src/usb_device.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/838585624" 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/838585624/usb_device.p1 ../../../../../../framework/usb/src/usb_device.c 
	@-${MV} ${OBJECTDIR}/_ext/838585624/usb_device.d ${OBJECTDIR}/_ext/838585624/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/838585624/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/usb_descriptors.p1: ../demo_src/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1 ../demo_src/usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/usb_descriptors.d ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/838585624/usb_device_hid.p1: ../../../../../../framework/usb/src/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/838585624" 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1 ../../../../../../framework/usb/src/usb_device_hid.c 
	@-${MV} ${OBJECTDIR}/_ext/838585624/usb_device_hid.d ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/usb_events.p1: ../demo_src/usb_events.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_events.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_events.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/300881143/usb_events.p1 ../demo_src/usb_events.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/usb_events.d ${OBJECTDIR}/_ext/300881143/usb_events.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/usb_events.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/838585624/usb_device_cdc.p1: ../../../../../../framework/usb/src/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/838585624" 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device_cdc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device_cdc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/838585624/usb_device_cdc.p1 ../../../../../../framework/usb/src/usb_device_cdc.c 
	@-${MV} ${OBJECTDIR}/_ext/838585624/usb_device_cdc.d ${OBJECTDIR}/_ext/838585624/usb_device_cdc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/838585624/usb_device_cdc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1: ../demo_src/app_led_usb_status.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1 ../demo_src/app_led_usb_status.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/app_led_usb_status.d ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/main.p1: ../demo_src/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/300881143/main.p1 ../demo_src/main.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/main.d ${OBJECTDIR}/_ext/300881143/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/system.p1: system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/system.p1.d 
	@${RM} ${OBJECTDIR}/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/system.p1 system.c 
	@-${MV} ${OBJECTDIR}/system.d ${OBJECTDIR}/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/app_device_mouse.p1: ../demo_src/app_device_mouse.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/app_device_mouse.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/app_device_mouse.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/300881143/app_device_mouse.p1 ../demo_src/app_device_mouse.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/app_device_mouse.d ${OBJECTDIR}/_ext/300881143/app_device_mouse.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/app_device_mouse.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1333569941/buttons.p1: ../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459/buttons.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1333569941" 
	@${RM} ${OBJECTDIR}/_ext/1333569941/buttons.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1333569941/buttons.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1333569941/buttons.p1 ../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459/buttons.c 
	@-${MV} ${OBJECTDIR}/_ext/1333569941/buttons.d ${OBJECTDIR}/_ext/1333569941/buttons.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1333569941/buttons.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1333569941/leds.p1: ../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459/leds.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1333569941" 
	@${RM} ${OBJECTDIR}/_ext/1333569941/leds.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1333569941/leds.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1333569941/leds.p1 ../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459/leds.c 
	@-${MV} ${OBJECTDIR}/_ext/1333569941/leds.d ${OBJECTDIR}/_ext/1333569941/leds.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1333569941/leds.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/838585624/usb_device.p1: ../../../../../../framework/usb/src/usb_device.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/838585624" 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/838585624/usb_device.p1 ../../../../../../framework/usb/src/usb_device.c 
	@-${MV} ${OBJECTDIR}/_ext/838585624/usb_device.d ${OBJECTDIR}/_ext/838585624/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/838585624/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/usb_descriptors.p1: ../demo_src/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1 ../demo_src/usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/usb_descriptors.d ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/838585624/usb_device_hid.p1: ../../../../../../framework/usb/src/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/838585624" 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1 ../../../../../../framework/usb/src/usb_device_hid.c 
	@-${MV} ${OBJECTDIR}/_ext/838585624/usb_device_hid.d ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/usb_events.p1: ../demo_src/usb_events.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_events.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/usb_events.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/300881143/usb_events.p1 ../demo_src/usb_events.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/usb_events.d ${OBJECTDIR}/_ext/300881143/usb_events.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/usb_events.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/838585624/usb_device_cdc.p1: ../../../../../../framework/usb/src/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/838585624" 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device_cdc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device_cdc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/838585624/usb_device_cdc.p1 ../../../../../../framework/usb/src/usb_device_cdc.c 
	@-${MV} ${OBJECTDIR}/_ext/838585624/usb_device_cdc.d ${OBJECTDIR}/_ext/838585624/usb_device_cdc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/838585624/usb_device_cdc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1: ../demo_src/app_led_usb_status.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1 ../demo_src/app_led_usb_status.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/app_led_usb_status.d ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/app_led_usb_status.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/main.p1: ../demo_src/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/300881143/main.p1 ../demo_src/main.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/main.d ${OBJECTDIR}/_ext/300881143/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/system.p1: system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/system.p1.d 
	@${RM} ${OBJECTDIR}/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/system.p1 system.c 
	@-${MV} ${OBJECTDIR}/system.d ${OBJECTDIR}/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/300881143/app_device_mouse.p1: ../demo_src/app_device_mouse.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/300881143" 
	@${RM} ${OBJECTDIR}/_ext/300881143/app_device_mouse.p1.d 
	@${RM} ${OBJECTDIR}/_ext/300881143/app_device_mouse.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/300881143/app_device_mouse.p1 ../demo_src/app_device_mouse.c 
	@-${MV} ${OBJECTDIR}/_ext/300881143/app_device_mouse.d ${OBJECTDIR}/_ext/300881143/app_device_mouse.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/300881143/app_device_mouse.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

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
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/low_pin_count_usb_development_kit_pic16f1459.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/low_pin_count_usb_development_kit_pic16f1459.x.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -std=c90 -gdwarf-3 -mstack=compiled:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/low_pin_count_usb_development_kit_pic16f1459.x.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/low_pin_count_usb_development_kit_pic16f1459.x.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/low_pin_count_usb_development_kit_pic16f1459.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/low_pin_count_usb_development_kit_pic16f1459.x.${IMAGE_TYPE}.map  -DXPRJ_LPCUSBDK_16F1459=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -maddrqual=ignore -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/low_pin_count_usb_development_kit/pic16f1459" -I"." -mwarn=0 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -std=c90 -gdwarf-3 -mstack=compiled:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/low_pin_count_usb_development_kit_pic16f1459.x.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/LPCUSBDK_16F1459
	${RM} -r dist/LPCUSBDK_16F1459
