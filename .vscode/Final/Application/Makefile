#
# Folder definitions
# 
PWD:=$(shell pwd)
SOURCE_DIR:=$(PWD)/src
INCLUDE_DIR:=$(PWD)/include
BUILD_DIR:=$(PWD)/build
OBJECT_DIR=$(BUILD_DIR)/obj

#
# Source files
#
SOURCE_FILES=$(wildcard $(SOURCE_DIR)/*.cpp)
#
# Object files
#
OBJECT_FILES=$(patsubst %.cpp,%.o,$(patsubst $(SOURCE_DIR)/%, $(OBJECT_DIR)/%, $(SOURCE_FILES)))

#
# Commands
#
CROSS_COMPILE=arm-linux-gnueabihf-
CC=$(CROSS_COMPILE)g++
RM=rm -f
MKDIR=mkdir -p

#
# Flags
# You can define your own libraries and flags here.
#
LIBS= -lm 
LDFLAGS= `pkg-config --libs gstreamer-1.0 gstreamer-1.0-app opencv boost`
CFLAGS=-I$(INCLUDE_DIR) -Wall `pkg-config --cflags gstreamer-1.0 gstreamer-1.0-app opencv boost`

#
# Targets
#
.PHONY: all application clean
all: application

# Compile .cpp files to .o (object) files.
$(OBJECT_DIR)/%.o: $(SOURCE_DIR)/%.cpp
	$(MKDIR) $(BUILD_DIR) $(OBJECT_DIR) $(MAKE_DIR)
	$(CC) -c $(CFLAGS) -o $@ $<

# Compile c-example.	
application: $(OBJECT_FILES)
	$(CC) $(LDFLAGS) $^ $(LIBS) -o application

# Remove build directory and compiled applications.
clean:
	$(RM) application
	$(RM) -r $(BUILD_DIR)
