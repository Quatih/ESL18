#
# Folder definitions
# 
PWD:=$(shell pwd)
SOURCE_DIR:=$(PWD)
INCLUDE_DIR:=$(PWD)
BUILD_DIR:=$(PWD)
OBJECT_DIR=$(PWD)

#
# Source files
#
SOURCE_FILES=camera_acces_app_queue.cpp
#
# Object files
#
#OBJECT_FILES=$(patsubst %.c,%.o,$(patsubst $(SOURCE_DIR)/%, $(OBJECT_DIR)/%, $(SOURCE_FILES)))
OBJECT_FILES=camera_acces_app_queue.o
EXECUTABLE=camera_acces_app_queue

#
# Commands
#

CC=g++
RM=rm -f
MKDIR=mkdir -p

#
# Flags
# You can define your own libraries and flags here.
#
LIBS= -lm -lboost_filesystem
LDFLAGS=$(shell pkg-config --cflags --libs gstreamer-1.0 gstreamer-app-1.0 opencv)
CFLAGS=-I$(INCLUDE_DIR) -Wall

#
# Targets
#
.PHONY: all clean
all: EXECUTABLE

# Compile .c files to .o (object) files.
#$(OBJECT_DIR)/%.o: $(SOURCE_DIR)/%.cpp
#	$(MKDIR) $(BUILD_DIR) $(OBJECT_DIR) $(MAKE_DIR)
#	$(CC) -c $(CFLAGS) -o $@ $<


camera_acces_app_queue.o: camera_acces_app_queue.cpp
	$(MKDIR) $(BUILD_DIR) $(OBJECT_DIR) $(MAKE_DIR)
	$(CC) -c  camera_acces_app_queue.cpp $(CFLAGS) -o $@ $<


# Compile c-example.	
EXECUTABLE: $(OBJECT_FILES)
	$(CC) $(LDFLAGS) $^ $(LIBS) -o application

# Remove build directory and compiled applications.
clean:
	$(RM) application
	$(RM) -r $(BUILD_DIR)
