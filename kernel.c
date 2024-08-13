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

			(idt + 1)->_isrLow	=	(uint32_t)keyboardHandler;
			(idt + 1)->_kernelCs	=	0x08;
			(idt + 1)->_reserved	=	0x00;
			(idt + 1)->_attributes	=	0x8E;
			(idt + 1)->_isrHigh	=	(uint32_t)keyboardHandler >> 16;

			descriptor._limit	=	0x0F;
			descriptor._base	=	(uint32_t)idt;

			programmableInterruptControllerInit();

			programmableInterruptControllerMaskSet(0xFF);

			loadInterruptDescriptorTable(&descriptor);

			programmableInterruptControllerMaskSet(0xFD);

			enableInterrupt();


			_printLine(KERN_STR, 2, COLUMNS * 5);

			_printLine(LOGOSTR0, 2, COLUMNS * 6);
			_printLine(LOGOSTR1, 2, COLUMNS * 7);
			_printLine(LOGOSTR2, 2, COLUMNS * 8);
			_printLine(LOGOSTR3, 2, COLUMNS * 9);
			_printLine(LOGOSTR4, 2, COLUMNS * 10);
			_printLine(LOGOSTR5, 2, COLUMNS * 11);
			_printLine(LOGOSTR6, 2, COLUMNS * 12);
			_printLine(LOGOSTR7, 2, COLUMNS * 13);
			_printLine(LOGOSTR8, 2, COLUMNS * 14);
			_printLine(LOGOSTR9, 2, COLUMNS * 15);
			_printLine(LOGOSTR10, 2, COLUMNS * 16);
			_printLine(LOGOSTR11, 2, COLUMNS * 17);
			_printLine(LOGOSTR12, 2, COLUMNS * 18);
			_printLine(LOGOSTR13, 2, COLUMNS * 19);
			_printLine(LOGOSTR14, 2, COLUMNS * 20);
			_printLine(LOGOSTR15, 2, COLUMNS * 21);
			_printLine(LOGOSTR16, 2, COLUMNS * 22);
			_printLine(LOGOSTR17, 2, COLUMNS * 23);

			while(1);

			return	0;
		}
