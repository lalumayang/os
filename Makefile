KBUILD_CFLAGS += -w
obj-m += hw2.o
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
unload:
	sudo rmmod hw2
load:
	sudo insmod hw2.ko
clear:
	sudo dmesg -c
view:
	dmesg