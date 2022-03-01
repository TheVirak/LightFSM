#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=arm-none-eabi-gcc
CCC=arm-none-eabi-g++
CXX=arm-none-eabi-g++
FC=gfortran
AS=arm-none-eabi-as

# Macros
CND_PLATFORM=ARMv7-M-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/1597e43a/mcu-fsm.o \
	${OBJECTDIR}/_ext/1597e43a/mcu-timer.o \
	${OBJECTDIR}/_ext/fe2ec5a/arduino-timer.o \
	${OBJECTDIR}/_ext/7dd4046e/IPAddress.o \
	${OBJECTDIR}/_ext/7dd4046e/Print.o \
	${OBJECTDIR}/_ext/7dd4046e/Reset.o \
	${OBJECTDIR}/_ext/7dd4046e/RingBuffer.o \
	${OBJECTDIR}/_ext/7dd4046e/Stream.o \
	${OBJECTDIR}/_ext/7dd4046e/UARTClass.o \
	${OBJECTDIR}/_ext/7dd4046e/USARTClass.o \
	${OBJECTDIR}/_ext/b256c443/CDC.o \
	${OBJECTDIR}/_ext/b256c443/PluggableUSB.o \
	${OBJECTDIR}/_ext/b256c443/USBCore.o \
	${OBJECTDIR}/_ext/7dd4046e/WInterrupts.o \
	${OBJECTDIR}/_ext/7dd4046e/WMath.o \
	${OBJECTDIR}/_ext/7dd4046e/WString.o \
	${OBJECTDIR}/_ext/7dd4046e/abi.o \
	${OBJECTDIR}/_ext/b256f5bc/dtostrf.o \
	${OBJECTDIR}/_ext/7dd4046e/cortex_handlers.o \
	${OBJECTDIR}/_ext/7dd4046e/hooks.o \
	${OBJECTDIR}/_ext/7dd4046e/iar_calls_sam3.o \
	${OBJECTDIR}/_ext/7dd4046e/itoa.o \
	${OBJECTDIR}/_ext/7dd4046e/main.o \
	${OBJECTDIR}/_ext/7dd4046e/new.o \
	${OBJECTDIR}/_ext/7dd4046e/syscalls_sam3.o \
	${OBJECTDIR}/_ext/7dd4046e/watchdog.o \
	${OBJECTDIR}/_ext/7dd4046e/wiring.o \
	${OBJECTDIR}/_ext/7dd4046e/wiring_analog.o \
	${OBJECTDIR}/_ext/7dd4046e/wiring_digital.o \
	${OBJECTDIR}/_ext/7dd4046e/wiring_pulse.o \
	${OBJECTDIR}/_ext/7dd4046e/wiring_shift.o \
	${OBJECTDIR}/_ext/62ceacd4/variant.o \
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=-Os -std=gnu11 -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -Dprintf=iprintf -MMD -mcpu=cortex-m3 -mthumb

# CC Compiler Flags
CCFLAGS=-Os -ffunction-sections -fdata-sections -nostdlib -fno-threadsafe-statics --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -MMD -mcpu=cortex-m3 -mthumb -ggdb -Werror=return-type
CXXFLAGS=-Os -ffunction-sections -fdata-sections -nostdlib -fno-threadsafe-statics --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -MMD -mcpu=cortex-m3 -mthumb -ggdb -Werror=return-type

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x/libsam_sam3x8e_gcc_rel.a

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/test

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/test: ../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x/libsam_sam3x8e_gcc_rel.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/test: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	arm-none-eabi-g++ -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/test ${OBJECTFILES} ${LDLIBSOPTIONS} -mcpu=cortex-m3 -mthumb -Os -Wl,--gc-sections -Wl,--check-sections -T../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x/linker_scripts/gcc/flash.ld -Wl,--entry=Reset_Handler -Wl,--unresolved-symbols=report-all -Wl,--warn-common -Wl,--warn-section-align -lm -g

${OBJECTDIR}/_ext/1597e43a/mcu-fsm.o: ../../../apm/libraries/noarch/mcu-core/trunk/code/gcc-mcu-core/mcu-fsm.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/1597e43a
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1597e43a/mcu-fsm.o ../../../apm/libraries/noarch/mcu-core/trunk/code/gcc-mcu-core/mcu-fsm.cpp

${OBJECTDIR}/_ext/1597e43a/mcu-timer.o: ../../../apm/libraries/noarch/mcu-core/trunk/code/gcc-mcu-core/mcu-timer.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/1597e43a
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1597e43a/mcu-timer.o ../../../apm/libraries/noarch/mcu-core/trunk/code/gcc-mcu-core/mcu-timer.cpp

${OBJECTDIR}/_ext/fe2ec5a/arduino-timer.o: ../join/arduino-core/arduino-timer.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/fe2ec5a
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/fe2ec5a/arduino-timer.o ../join/arduino-core/arduino-timer.cpp

${OBJECTDIR}/_ext/7dd4046e/IPAddress.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/IPAddress.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/IPAddress.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/IPAddress.cpp

${OBJECTDIR}/_ext/7dd4046e/Print.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/Print.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/Print.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/Print.cpp

${OBJECTDIR}/_ext/7dd4046e/Reset.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/Reset.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/Reset.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/Reset.cpp

${OBJECTDIR}/_ext/7dd4046e/RingBuffer.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/RingBuffer.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/RingBuffer.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/RingBuffer.cpp

${OBJECTDIR}/_ext/7dd4046e/Stream.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/Stream.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/Stream.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/Stream.cpp

${OBJECTDIR}/_ext/7dd4046e/UARTClass.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/UARTClass.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/UARTClass.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/UARTClass.cpp

${OBJECTDIR}/_ext/7dd4046e/USARTClass.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/USARTClass.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/USARTClass.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/USARTClass.cpp

${OBJECTDIR}/_ext/b256c443/CDC.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/USB/CDC.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/b256c443
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b256c443/CDC.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/USB/CDC.cpp

${OBJECTDIR}/_ext/b256c443/PluggableUSB.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/USB/PluggableUSB.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/b256c443
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b256c443/PluggableUSB.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/USB/PluggableUSB.cpp

${OBJECTDIR}/_ext/b256c443/USBCore.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/USB/USBCore.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/b256c443
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b256c443/USBCore.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/USB/USBCore.cpp

${OBJECTDIR}/_ext/7dd4046e/WInterrupts.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/WInterrupts.c
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.c) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/WInterrupts.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/WInterrupts.c

${OBJECTDIR}/_ext/7dd4046e/WMath.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/WMath.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/WMath.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/WMath.cpp

${OBJECTDIR}/_ext/7dd4046e/WString.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/WString.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/WString.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/WString.cpp

${OBJECTDIR}/_ext/7dd4046e/abi.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/abi.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/abi.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/abi.cpp

${OBJECTDIR}/_ext/b256f5bc/dtostrf.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/avr/dtostrf.c
	${MKDIR} -p ${OBJECTDIR}/_ext/b256f5bc
	${RM} "$@.d"
	$(COMPILE.c) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b256f5bc/dtostrf.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/avr/dtostrf.c

${OBJECTDIR}/_ext/7dd4046e/cortex_handlers.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/cortex_handlers.c
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.c) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/cortex_handlers.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/cortex_handlers.c

${OBJECTDIR}/_ext/7dd4046e/hooks.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/hooks.c
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.c) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/hooks.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/hooks.c

${OBJECTDIR}/_ext/7dd4046e/iar_calls_sam3.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/iar_calls_sam3.c
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.c) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/iar_calls_sam3.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/iar_calls_sam3.c

${OBJECTDIR}/_ext/7dd4046e/itoa.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/itoa.c
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.c) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/itoa.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/itoa.c

${OBJECTDIR}/_ext/7dd4046e/main.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/main.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/main.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/main.cpp

${OBJECTDIR}/_ext/7dd4046e/new.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/new.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/new.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/new.cpp

${OBJECTDIR}/_ext/7dd4046e/syscalls_sam3.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/syscalls_sam3.c
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.c) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/syscalls_sam3.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/syscalls_sam3.c

${OBJECTDIR}/_ext/7dd4046e/watchdog.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/watchdog.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/watchdog.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/watchdog.cpp

${OBJECTDIR}/_ext/7dd4046e/wiring.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/wiring.c
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.c) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/wiring.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/wiring.c

${OBJECTDIR}/_ext/7dd4046e/wiring_analog.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/wiring_analog.c
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.c) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/wiring_analog.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/wiring_analog.c

${OBJECTDIR}/_ext/7dd4046e/wiring_digital.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/wiring_digital.c
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.c) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/wiring_digital.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/wiring_digital.c

${OBJECTDIR}/_ext/7dd4046e/wiring_pulse.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/wiring_pulse.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/wiring_pulse.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/wiring_pulse.cpp

${OBJECTDIR}/_ext/7dd4046e/wiring_pulse_asmnull: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/wiring_pulse_asm.S
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	@echo Current compiler does not support header precompilation
	# command to precompile header ../join/sam-distro/distro/sam-1.6.7/cores/arduino/wiring_pulse_asm.S

${OBJECTDIR}/_ext/7dd4046e/wiring_shift.o: ../join/sam-distro/distro/sam-1.6.7/cores/arduino/wiring_shift.c
	${MKDIR} -p ${OBJECTDIR}/_ext/7dd4046e
	${RM} "$@.d"
	$(COMPILE.c) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7dd4046e/wiring_shift.o ../join/sam-distro/distro/sam-1.6.7/cores/arduino/wiring_shift.c

${OBJECTDIR}/_ext/62ceacd4/variant.o: ../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x/variant.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/62ceacd4
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/62ceacd4/variant.o ../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x/variant.cpp

${OBJECTDIR}/main.o: main.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -DARDUINO=10608 -DARDUINO_ARCH_SAM -DARDUINO_SAM_DUE -DF_CPU=84000000L -DUSBCON -DUSB_MANUFACTURER=\"Unknown\" -DUSB_PID=0x003e -DUSB_PRODUCT=\"Arduino\ Due\" -DUSB_VID=0x2341 -D__SAM3X8E__ -I../join/sam-distro/distro/sam-1.6.7/cores/arduino -I../join/sam-distro/distro/sam-1.6.7/variants/arduino_due_x -I../join/sam-distro/distro/sam-1.6.7/system/libsam -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/CMSIS/Include -I../join/sam-distro/distro/sam-1.6.7/system/CMSIS/Device/ATMEL -I../join/sam-distro/distro/sam-1.6.7/libraries/SPI/src -I../join/arduino-core -I../join/mcu-core -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
