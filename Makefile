snd-firewire-lib-objs := lib.o iso-resources.o packets-buffer.o \
			 fcp.o cmp.o amdtp.o
snd-firewire-speakers-objs := speakers.o
snd-isight-objs := isight.o
snd-scs1x-objs := scs1x.o

obj-$(CONFIG_SND_FIREWIRE_LIB) += snd-firewire-lib.o
obj-$(CONFIG_SND_FIREWIRE_SPEAKERS) += snd-firewire-speakers.o
obj-$(CONFIG_SND_ISIGHT) += snd-isight.o
obj-$(CONFIG_SND_SCS1X) += snd-scs1x.o

KDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
