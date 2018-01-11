TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS BELOW HERE

# xxxRecord.h will be created from xxxRecord.dbd
DBDINC += xxxRecord

# Install xxxSupport.dbd into <top>/dbd
DBD += xxxSupport.dbd

# Build an IOC support library
LIBRARY_IOC += autoOnOffSupport

# Compile and add the code to the support library
autoOnOffSupport_SRCS += xxxRecord.c
autoOnOffSupport_SRCS += devXxxSoft.c

# Link locally-provided code into the support library,
# rather than directly into the IOC application.
# This is required for Windows DLL builds.
autoOnOffSupport_SRCS += dbSubExample.c
autoOnOffSupport_SRCS += autoOnOffHello.c
autoOnOffSupport_SRCS += initTrace.c

autoOnOffSupport_LIBS += $(EPICS_BASE_IOC_LIBS)

# Build the IOC application
PROD_IOC = autoOnOff

# autoOnOff.dbd will be created and installed
DBD += autoOnOff.dbd

# autoOnOff.dbd will include these files:
autoOnOff_DBD += base.dbd
autoOnOff_DBD += xxxSupport.dbd
autoOnOff_DBD += dbSubExample.dbd
autoOnOff_DBD += autoOnOffHello.dbd
autoOnOff_DBD += initTrace.dbd

# autoOnOff_registerRecordDeviceDriver.cpp derives from autoOnOff.dbd
autoOnOff_SRCS += autoOnOff_registerRecordDeviceDriver.cpp

# Build the main IOC entry point where needed
autoOnOff_SRCS_DEFAULT += autoOnOffMain.cpp
autoOnOff_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#autoOnOff_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Link in the code from our support library
autoOnOff_LIBS += autoOnOffSupport

# To build SNL programs, SNCSEQ must be defined
# in the <top>/configure/RELEASE file
ifneq ($(SNCSEQ),)
    # Build sncExample into autoOnOffSupport
    sncExample_SNCFLAGS += +r
    autoOnOff_DBD += sncExample.dbd
    autoOnOffSupport_SRCS += sncExample.stt
    autoOnOffSupport_LIBS += seq pv
    autoOnOff_LIBS += seq pv

    # Build sncProgram as a standalone program
    PROD_HOST += sncProgram
    sncProgram_SNCFLAGS += +m
    sncProgram_SRCS += sncProgram.st
    sncProgram_LIBS += seq pv
    sncProgram_LIBS += $(EPICS_BASE_HOST_LIBS)
endif

# Finally link IOC to the EPICS Base libraries
autoOnOff_LIBS += $(EPICS_BASE_IOC_LIBS)

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD EXTRA GNUMAKE RULES BELOW HERE

