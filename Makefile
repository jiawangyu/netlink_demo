
MODULE_NAME :=netlink_demo_ko
obj-m :=$(MODULE_NAME).o

KERNELDIR ?= /usr/src/linux-headers-$(shell uname -r)
PWD := $(shell pwd)

all:
	make -C /usr/src/linux-headers-$(shell uname -r) M=$(PWD) modules
	gcc -o netlink_demo netlink_demo.c 

clean:
	rm -fr *.ko *.o *.cmd sender $(MODULE_NAME).mod.c  