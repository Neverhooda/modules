#CURRENT = $(shell uname -r) 
CURRENT = 3.0.35-2666-gbdde708
KDIR = /lib/modules/$(CURRENT)/build 
PWD = $(shell pwd) 
TARGET1 = md1 
TARGET2 = md2 
TARGET3 = md3 
obj-m	:= $(TARGET1).o $(TARGET2).o $(TARGET3).o 
default: 
	$(MAKE) -C $(KDIR) M=$(PWD) modules 
clean: 
	@rm -f *.o .*.cmd .*.flags *.mod.c *.order 
	@rm -f .*.*.cmd *~ *.*~ TODO.* 
	@rm -fR .tmp* 
	@rm -rf .tmp_versions 
disclean: clean 
	@rm *.ko *.symvers
