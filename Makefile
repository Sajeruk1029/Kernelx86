CC	=	gcc
LD	=	ld
OBJCOPY	=	objcopy

KERNELARCH	=	-m32
OSARCH	=	-m elf_i386

OBJCOPYFORMAT	=	-O binary

KERNELFLAGS	=	-nostdlib -ffreestanding -fno-pie -fno-stack-protector

KERNELWFLAGS	=	-Wall -Wextra -Wpedantic

DEBUG	=	-g

LDTTEXT	=	-T kernel.ld

KERNELSRC	=	kernel.c
KERNELOBJ	=	kernel.o

STDLIBSRC	=	io.s idt.s keyboard.s video.c
STDLIBOBJ	=	io.o idt.o keyboard.o video.o

KERNELELF	=	kernel.elf
KERNELBIN	=	kernel.bin

all	:	$(KERNELBIN)

$(KERNELBIN)	: $(KERNELOBJ) $(STDLIBOBJ)
	$(LD) $(KERNELOBJ) $(STDLIBOBJ) $(LDTTEXT) $(OSARCH) $(DEBUG) -o $(KERNELELF)
	$(OBJCOPY) $(OBJCOPYFORMAT) $(KERNELELF) $(KERNELBIN)

$(KERNELOBJ)	:	$(KERNELSRC)
	$(CC) -c $(KERNELWFLAGS) $(KERNELSRC) -o $(KERNELOBJ) $(KERNELFLAGS) $(KERNELARCH) $(DEBUG)

$(STDLIBOBJ)	:	$(STDLIBSRC)
	$(CC) -c $^ $(KERNELWFLAGS) $(KERNELFLAGS) $(KERNELARCH) $(DEBUG)

clean	:	
	rm -rf $(KERNELBIN) $(KERNELELF) $(KERNELOBJ) $(STDLIBOBJ)
