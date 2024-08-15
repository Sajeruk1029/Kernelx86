#include	"video.h"
#include	"idt.h"
#include	"keyboard.h"

	#define	KERN_STR	"MY KERNEL HAS BEEN LOADED!"

	#define	LOGOSTR0	"   88MM:::::8888M:::::::88::::::::8:::::888888:::M:::::M"
	#define	LOGOSTR1	"  8888M:::::888MM::::::::8:::::::::::M::::8888::::M::::M"
	#define	LOGOSTR2	" 88888M:::::88:M::::::::::8:::::::::::M:::8888::::::M::M"
	#define	LOGOSTR3	"88 888MM:::888:M:::::::::::::::::::::::M:8888:::::::::M:"
	#define	LOGOSTR4	"8 88888M:::88::M:::::::::::::::::::::::MM:88::::::::::::M"
	#define	LOGOSTR5	"  88888M:::88::M::::::::::*88*::::::::::M:88::::::::::::::M"
	#define	LOGOSTR6	" 888888M:::88::M:::::::::88@@88:::::::::M::88::::::::::::::M"
	#define	LOGOSTR7	" 888888MM::88::MM::::::::88@@88:::::::::M:::8::::::::::::::*8"
	#define	LOGOSTR8	" 88888  M:::8::MM:::::::::*88*::::::::::M:::::::::::::::::88@@"
	#define	LOGOSTR9	" 8888   MM::::::MM:::::::::::::::::::::MM:::::::::::::::::88@@"
	#define	LOGOSTR10	"  888    M:::::::MM:::::::::::::::::::MM::M::::::::::::::::*8"
	#define	LOGOSTR11	"  888    MM:::::::MMM::::::::::::::::MM:::MM:::::::::::::::M"
	#define	LOGOSTR12	"   88     M::::::::MMMM:::::::::::MMMM:::::MM::::::::::::MM"
	#define	LOGOSTR13	"    88    MM:::::::::MMMMMMMMMMMMMMM::::::::MMM::::::::MMM"
	#define	LOGOSTR14	"     88    MM::::::::::::MMMMMMM::::::::::::::MMMMMMMMMM"
	#define	LOGOSTR15	"      88   8MM::::::::::::::::::::::::::::::::::MMMMMM"
	#define	LOGOSTR16	"       8   88MM::::::::::::::::::::::M:::M::::::::MM"
	#define	LOGOSTR17	"           888MM::::::::::::::::::MM::::::MM::::::M"

		int	_kernel(void)
		{
			_IDT	idt;
			_IDTDescriptor	descriptor;

			(idt + 0)->_isrLow	=	0;
			(idt + 0)->_kernelCs	=	0;
			(idt + 0)->_reserved	=	0;
			(idt + 0)->_attributes	=	0;
			(idt + 0)->_isrHigh	=	0;

			(idt + 1)->_isrLow	=	(uint32_t)_keyboardHandler;
			(idt + 1)->_kernelCs	=	0x08;
			(idt + 1)->_reserved	=	0x00;
			(idt + 1)->_attributes	=	0x8E;
			(idt + 1)->_isrHigh	=	(uint32_t)_keyboardHandler >> 16;

			descriptor._limit	=	0x0F;
			descriptor._base	=	(uint32_t)idt;

			_programmableInterruptControllerInit();

			_programmableInterruptControllerMaskSet(0xFF);

			_loadInterruptDescriptorTable(&descriptor);

			_programmableInterruptControllerMaskSet(0xFD);

			_enableInterrupt();

			_setPosition(VIDEO_MEMORY + ((COLUMNS * 5) * 2));
			_printLine(KERN_STR, GREEN);

			_setPosition(VIDEO_MEMORY + ((COLUMNS * 6) * 2));
			_printLine(LOGOSTR0, GREEN);
			_setPosition(VIDEO_MEMORY + ((COLUMNS * 7) * 2));
			_printLine(LOGOSTR1, GREEN);
			_setPosition(VIDEO_MEMORY + ((COLUMNS * 8) * 2));
			_printLine(LOGOSTR2, GREEN);
			_setPosition(VIDEO_MEMORY + ((COLUMNS * 9) * 2));
			_printLine(LOGOSTR3, GREEN);
			_setPosition(VIDEO_MEMORY + ((COLUMNS * 10) * 2));
			_printLine(LOGOSTR4, GREEN);
			_setPosition(VIDEO_MEMORY + ((COLUMNS * 11) * 2));
			_printLine(LOGOSTR5, GREEN);
			_setPosition(VIDEO_MEMORY + ((COLUMNS * 12) * 2));
			_printLine(LOGOSTR6, GREEN);
			_setPosition(VIDEO_MEMORY + ((COLUMNS * 13) * 2));
			_printLine(LOGOSTR7, GREEN);
			_setPosition(VIDEO_MEMORY + ((COLUMNS * 14) * 2));
			_printLine(LOGOSTR8, GREEN);
			_setPosition(VIDEO_MEMORY + ((COLUMNS * 15) * 2));
			_printLine(LOGOSTR9, GREEN);
			_setPosition(VIDEO_MEMORY + ((COLUMNS * 16) * 2));
			_printLine(LOGOSTR10, GREEN);
			_setPosition(VIDEO_MEMORY + ((COLUMNS * 17) * 2));
			_printLine(LOGOSTR11, GREEN);
			_setPosition(VIDEO_MEMORY + ((COLUMNS * 18) * 2));
			_printLine(LOGOSTR12, GREEN);
			_setPosition(VIDEO_MEMORY + ((COLUMNS * 19) * 2));
			_printLine(LOGOSTR13, GREEN);
			_setPosition(VIDEO_MEMORY + ((COLUMNS * 20) * 2));
			_printLine(LOGOSTR14, GREEN);
			_setPosition(VIDEO_MEMORY + ((COLUMNS * 21) * 2));
			_printLine(LOGOSTR15, GREEN);
			_setPosition(VIDEO_MEMORY + ((COLUMNS * 22) * 2));
			_printLine(LOGOSTR16, GREEN);
			_setPosition(VIDEO_MEMORY + ((COLUMNS * 23) * 2));
			_printLine(LOGOSTR17, GREEN);
			_setPosition(VIDEO_MEMORY + ((COLUMNS * 24) * 2));

			while(1);

			return	0;
		}
