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
SOURCE_FILES=$(wildcard $(SOURCE_DIR)/*.c)
#
# Object files
#
OBJECT_FILES=$(patsubst %.c,%.o,$(patsubst $(SOURCE_DIR)/%, $(OBJECT_DIR)/%, $(SOURCE_FILES)))

#
# Commands
#
CROSS_COMPILE=arm-linux-gnueabihf-
CC=$(CROSS_COMPILE)gcc
RM=rm -f
MKDIR=mkdir -p

#
# Flags
# You can define your own libraries and flags here.
#
LIBS= -lm
LDFLAGS=
CFLAGS=-I$(INCLUDE_DIR) -Wall

#
# Targets
#
.PHONY: all application clean
all: application

# Compile .c files to .o (object) files.
$(OBJECT_DIR)/%.o: $(SOURCE_DIR)/%.c
	$(MKDIR) $(BUILD_DIR) $(OBJECT_DIR) $(MAKE_DIR)
	$(CC) -c $(CFLAGS) -o $@ $<

# Compile c-example.	
application: $(OBJECT_FILES)
	$(CC) $(LDFLAGS) $^ $(LIBS) -o application

# Remove build directory and compiled applications.
clean:
	$(RM) application
	$(RM) -r $(BUILD_DIR)
