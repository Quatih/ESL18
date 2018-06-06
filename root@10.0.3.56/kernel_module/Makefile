all:
	$(MAKE) ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -C $(LINUX_DIR) M=$$PWD modules
	
clean:
	$(MAKE) -C $(LINUX_DIR) M=$$PWD clean