# Arduino NetBeans plugin (http://arduino-netbeans.googlecode.com)
# ------------------------------------------------------------------------------
# Configure the values of BOSSAC and COM_PORT to upload to the Due
# Based on: http://playground.arduino.cc/Code/Netbeans

BOSSAC = ../join/bossac/1.6.1-arduino/bossac
COM_PORT = ttyACM0

#
############################# END OF USER CHANGES #############################
#

# Environment 
MKDIR=mkdir
CP=cp
CCADMIN=CCadmin

# build
build: .build-post	

.build-pre: .build-pre-pre

#Unconditional Build
.build-pre-pre:
	
.build-post: .build-impl	
	arm-none-eabi-objcopy -O binary ${CND_ARTIFACT_PATH_${CONF}} ${CND_ARTIFACT_PATH_${CONF}}.bin
	arm-none-eabi-size -A ${CND_ARTIFACT_PATH_${CONF}}

#upload: .build-post
upload: 
	stty -F /dev/${COM_PORT} 1200 hupcl
	sleep 1
	${BOSSAC} -i -d --port=${COM_PORT} -U false -e -w -v -b ${CND_ARTIFACT_PATH_${CONF}}.bin -R


# clean
clean: .clean-post

.clean-pre:
# Add your pre 'clean' code here...

.clean-post: .clean-impl
	rm -f -r lib

# clobber
clobber: .clobber-post

.clobber-pre:
# Add your pre 'clobber' code here...

.clobber-post: .clobber-impl
# Add your post 'clobber' code here...


# all
all: .all-post

.all-pre:
# Add your pre 'all' code here...

.all-post: .all-impl
# Add your post 'all' code here...


# build tests
build-tests: .build-tests-post

.build-tests-pre:
# Add your pre 'build-tests' code here...

.build-tests-post: .build-tests-impl
# Add your post 'build-tests' code here...


# run tests
test: .test-post

.test-pre: build-tests
# Add your pre 'test' code here...

.test-post: .test-impl
# Add your post 'test' code here...


# help
help: .help-post

.help-pre:
# Add your pre 'help' code here...

.help-post: .help-impl
# Add your post 'help' code here...


# include project implementation makefile
include nbproject/Makefile-impl.mk

# include project make variables
include nbproject/Makefile-variables.mk
