#
# Folder definitions
# 
PWD:=$(shell pwd)
SOURCE_DIR:=$(PWD)/src
INCLUDE_DIR:=$(PWD)/include
BUILD_DIR:=$(PWD)/build
OBJECT_DIR=$(BUILD_DIR)/obj
KERNEL_MODULE_DIR=$(PWD)/../kernel_module
#
# Source files
#

SOURCE_FILES=$(wildcard $(SOURCE_DIR)/*.cpp)
CSOURCE_FILES=$(wildcard $(SOURCE_DIR)/*.c)

#
# Object files
#

OBJECT_FILES=$(patsubst %.cpp,%.o,$(patsubst $(SOURCE_DIR)/%, $(OBJECT_DIR)/%, $(SOURCE_FILES)))
COBJECT_FILES=$(patsubst %.c,%.o,$(patsubst $(SOURCE_DIR)/%, $(OBJECT_DIR)/%, $(CSOURCE_FILES)))
#
# Commands
#
CROSS_COMPILE=arm-linux-gnueabihf-
CC=$(CROSS_COMPILE)gcc
CXX=$(CROSS_COMPILE)g++
RM=rm -f
MKDIR=mkdir -p

#
# Flags
# You can define your own libraries and flags here.
#
LIBS= -lm 
LDFLAGS=
CFLAGS=-I$(INCLUDE_DIR) -I$(KERNEL_MODULE_DIR)/include -Wall -Wextra -pedantic

#
# Targets
#
.PHONY: all application clean
all: application

# Compile cpp files to .opp (object) files.
$(OBJECT_DIR)/%.o: $(SOURCE_DIR)/%.cpp
	$(MKDIR) $(BUILD_DIR) $(OBJECT_DIR)
	$(CXX) -c $(CFLAGS) -o $@ $<

# Compile c files to .o (object) files.
$(OBJECT_DIR)/%.o: $(SOURCE_DIR)/%.c
	$(MKDIR) $(BUILD_DIR) $(OBJECT_DIR)
	$(CC) -c $(CFLAGS) -o $@ $<

# linking	
application: $(OBJECT_FILES) $(COBJECT_FILES)
	$(CXX) $(LDFLAGS) $^ $(LIBS) -o application

# Remove build directory and compiled applications.
clean:
	$(RM) application
	$(RM) -r $(BUILD_DIR)
