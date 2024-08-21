#include	<stdint.h>

#include	"video.h"
#include	"idt.h"
#include	"keyboard.h"
#include	"exceptions.h"

		int	_kernel(void)
		{
			_IDT	idt;
			_IDTDescriptor	descriptor;

			(idt + 0)->_isrLow	=	(uint32_t)_exceptionDivideByZero;
			(idt + 0)->_kernelCs	=	0x08;
			(idt + 0)->_reserved	=	0x00;
			(idt + 0)->_attributes	=	0x8F;
			(idt + 0)->_isrHigh	=	(uint32_t)_exceptionDivideByZero >> 16;

/*
			(idt + 0)->_isrLow	=	(uint32_t)_exception0;
			(idt + 0)->_kernelCs	=	0x08;
			(idt + 0)->_reserved	=	0x00;
			(idt + 0)->_attributes	=	0x8E;
			(idt + 0)->_isrHigh	=	(uint32_t)_exception0 >> 16;

			(idt + 1)->_isrLow	=	(uint32_t)_exception1;
			(idt + 1)->_kernelCs	=	0x08;
			(idt + 1)->_reserved	=	0x00;
			(idt + 1)->_attributes	=	0x8E;
			(idt + 1)->_isrHigh	=	(uint32_t)_exception1 >> 16;

			(idt + 2)->_isrLow	=	(uint32_t)_exception2;
			(idt + 2)->_kernelCs	=	0x08;
			(idt + 2)->_reserved	=	0x00;
			(idt + 2)->_attributes	=	0x8E;
			(idt + 2)->_isrHigh	=	(uint32_t)_exception2 >> 16;

			(idt + 3)->_isrLow	=	(uint32_t)_exception3;
			(idt + 3)->_kernelCs	=	0x08;
			(idt + 3)->_reserved	=	0x00;
			(idt + 3)->_attributes	=	0x8E;
			(idt + 3)->_isrHigh	=	(uint32_t)_exception3 >> 16;

			(idt + 4)->_isrLow	=	(uint32_t)_exception4;
			(idt + 4)->_kernelCs	=	0x08;
			(idt + 4)->_reserved	=	0x00;
			(idt + 4)->_attributes	=	0x8E;
			(idt + 4)->_isrHigh	=	(uint32_t)_exception4 >> 16;

			(idt + 5)->_isrLow	=	(uint32_t)_exception5;
			(idt + 5)->_kernelCs	=	0x08;
			(idt + 5)->_reserved	=	0x00;
			(idt + 5)->_attributes	=	0x8E;
			(idt + 5)->_isrHigh	=	(uint32_t)_exception5 >> 16;

			(idt + 6)->_isrLow	=	(uint32_t)_exception6;
			(idt + 6)->_kernelCs	=	0x08;
			(idt + 6)->_reserved	=	0x00;
			(idt + 6)->_attributes	=	0x8E;
			(idt + 6)->_isrHigh	=	(uint32_t)_exception6 >> 16;

			(idt + 7)->_isrLow	=	(uint32_t)_exception7;
			(idt + 7)->_kernelCs	=	0x08;
			(idt + 7)->_reserved	=	0x00;
			(idt + 7)->_attributes	=	0x8E;
			(idt + 7)->_isrHigh	=	(uint32_t)_exception7 >> 16;

			(idt + 8)->_isrLow	=	(uint32_t)_exception8;
			(idt + 8)->_kernelCs	=	0x08;
			(idt + 8)->_reserved	=	0x00;
			(idt + 8)->_attributes	=	0x8E;
			(idt + 8)->_isrHigh	=	(uint32_t)_exception8 >> 16;

			(idt + 9)->_isrLow	=	(uint32_t)_exception9;
			(idt + 9)->_kernelCs	=	0x08;
			(idt + 9)->_reserved	=	0x00;
			(idt + 9)->_attributes	=	0x8E;
			(idt + 9)->_isrHigh	=	(uint32_t)_exception9 >> 16;

			(idt + 10)->_isrLow	=	(uint32_t)_exception10;
			(idt + 10)->_kernelCs	=	0x08;
			(idt + 10)->_reserved	=	0x00;
			(idt + 10)->_attributes	=	0x8E;
			(idt + 10)->_isrHigh	=	(uint32_t)_exception10 >> 16;

			(idt + 11)->_isrLow	=	(uint32_t)_exception11;
			(idt + 11)->_kernelCs	=	0x08;
			(idt + 11)->_reserved	=	0x00;
			(idt + 11)->_attributes	=	0x8E;
			(idt + 11)->_isrHigh	=	(uint32_t)_exception11 >> 16;

			(idt + 12)->_isrLow	=	(uint32_t)_exception12;
			(idt + 12)->_kernelCs	=	0x08;
			(idt + 12)->_reserved	=	0x00;
			(idt + 12)->_attributes	=	0x8E;
			(idt + 12)->_isrHigh	=	(uint32_t)_exception12 >> 16;

			(idt + 13)->_isrLow	=	(uint32_t)_exception13;
			(idt + 13)->_kernelCs	=	0x08;
			(idt + 13)->_reserved	=	0x00;
			(idt + 13)->_attributes	=	0x8E;
			(idt + 13)->_isrHigh	=	(uint32_t)_exception13 >> 16;

			(idt + 14)->_isrLow	=	(uint32_t)_exception14;
			(idt + 14)->_kernelCs	=	0x08;
			(idt + 14)->_reserved	=	0x00;
			(idt + 14)->_attributes	=	0x8E;
			(idt + 14)->_isrHigh	=	(uint32_t)_exception14 >> 16;

			(idt + 15)->_isrLow	=	(uint32_t)_exception15;
			(idt + 15)->_kernelCs	=	0x08;
			(idt + 15)->_reserved	=	0x00;
			(idt + 15)->_attributes	=	0x8E;
			(idt + 15)->_isrHigh	=	(uint32_t)_exception15 >> 16;

			(idt + 16)->_isrLow	=	(uint32_t)_exception16;
			(idt + 16)->_kernelCs	=	0x08;
			(idt + 16)->_reserved	=	0x00;
			(idt + 16)->_attributes	=	0x8E;
			(idt + 16)->_isrHigh	=	(uint32_t)_exception16 >> 16;

			(idt + 17)->_isrLow	=	(uint32_t)_exception17;
			(idt + 17)->_kernelCs	=	0x08;
			(idt + 17)->_reserved	=	0x00;
			(idt + 17)->_attributes	=	0x8E;
			(idt + 17)->_isrHigh	=	(uint32_t)_exception17 >> 16;

			(idt + 18)->_isrLow	=	(uint32_t)_exception18;
			(idt + 18)->_kernelCs	=	0x08;
			(idt + 18)->_reserved	=	0x00;
			(idt + 18)->_attributes	=	0x8E;
			(idt + 18)->_isrHigh	=	(uint32_t)_exception18 >> 16;

			(idt + 19)->_isrLow	=	(uint32_t)_exception19;
			(idt + 19)->_kernelCs	=	0x08;
			(idt + 19)->_reserved	=	0x00;
			(idt + 19)->_attributes	=	0x8E;
			(idt + 19)->_isrHigh	=	(uint32_t)_exception19 >> 16;

			(idt + 20)->_isrLow	=	(uint32_t)_exception20;
			(idt + 20)->_kernelCs	=	0x08;
			(idt + 20)->_reserved	=	0x00;
			(idt + 20)->_attributes	=	0x8E;
			(idt + 20)->_isrHigh	=	(uint32_t)_exception20 >> 16;

			(idt + 21)->_isrLow	=	(uint32_t)_exception21;
			(idt + 21)->_kernelCs	=	0x08;
			(idt + 21)->_reserved	=	0x00;
			(idt + 21)->_attributes	=	0x8E;
			(idt + 21)->_isrHigh	=	(uint32_t)_exception21 >> 16;

			(idt + 22)->_isrLow	=	(uint32_t)_exception22;
			(idt + 22)->_kernelCs	=	0x08;
			(idt + 22)->_reserved	=	0x00;
			(idt + 22)->_attributes	=	0x8E;
			(idt + 22)->_isrHigh	=	(uint32_t)_exception22 >> 16;

			(idt + 23)->_isrLow	=	(uint32_t)_exception23;
			(idt + 23)->_kernelCs	=	0x08;
			(idt + 23)->_reserved	=	0x00;
			(idt + 23)->_attributes	=	0x8E;
			(idt + 23)->_isrHigh	=	(uint32_t)_exception23 >> 16;

			(idt + 24)->_isrLow	=	(uint32_t)_exception24;
			(idt + 24)->_kernelCs	=	0x08;
			(idt + 24)->_reserved	=	0x00;
			(idt + 24)->_attributes	=	0x8E;
			(idt + 24)->_isrHigh	=	(uint32_t)_exception24 >> 16;

			(idt + 25)->_isrLow	=	(uint32_t)_exception25;
			(idt + 25)->_kernelCs	=	0x08;
			(idt + 25)->_reserved	=	0x00;
			(idt + 25)->_attributes	=	0x8E;
			(idt + 25)->_isrHigh	=	(uint32_t)_exception25 >> 16;

			(idt + 26)->_isrLow	=	(uint32_t)_exception26;
			(idt + 26)->_kernelCs	=	0x08;
			(idt + 26)->_reserved	=	0x00;
			(idt + 26)->_attributes	=	0x8E;
			(idt + 26)->_isrHigh	=	(uint32_t)_exception26 >> 16;

			(idt + 27)->_isrLow	=	(uint32_t)_exception27;
			(idt + 27)->_kernelCs	=	0x08;
			(idt + 27)->_reserved	=	0x00;
			(idt + 27)->_attributes	=	0x8E;
			(idt + 27)->_isrHigh	=	(uint32_t)_exception27 >> 16;

			(idt + 28)->_isrLow	=	(uint32_t)_exception28;
			(idt + 28)->_kernelCs	=	0x08;
			(idt + 28)->_reserved	=	0x00;
			(idt + 28)->_attributes	=	0x8E;
			(idt + 28)->_isrHigh	=	(uint32_t)_exception28 >> 16;

			(idt + 29)->_isrLow	=	(uint32_t)_exception29;
			(idt + 29)->_kernelCs	=	0x08;
			(idt + 29)->_reserved	=	0x00;
			(idt + 29)->_attributes	=	0x8E;
			(idt + 29)->_isrHigh	=	(uint32_t)_exception29 >> 16;

			(idt + 30)->_isrLow	=	(uint32_t)_exception30;
			(idt + 30)->_kernelCs	=	0x08;
			(idt + 30)->_reserved	=	0x00;
			(idt + 30)->_attributes	=	0x8E;
			(idt + 30)->_isrHigh	=	(uint32_t)_exception30 >> 16;

			(idt + 31)->_isrLow	=	(uint32_t)_exception31;
			(idt + 31)->_kernelCs	=	0x08;
			(idt + 31)->_reserved	=	0x00;
			(idt + 31)->_attributes	=	0x8E;
			(idt + 31)->_isrHigh	=	(uint32_t)_exception31 >> 16;
*/
			(idt + 33)->_isrLow	=	(uint32_t)_keyboardHandler;
			(idt + 33)->_kernelCs	=	0x08;
			(idt + 33)->_reserved	=	0x00;
			(idt + 33)->_attributes	=	0x8E;
			(idt + 33)->_isrHigh	=	(uint32_t)_keyboardHandler >> 16;

			descriptor._limit	=	0xFFF;
			descriptor._base	=	(uint32_t)idt;

			_programmableInterruptControllerInit();

			_programmableInterruptControllerMaskSet(0xFF);

			_loadInterruptDescriptorTable(&descriptor);

			_programmableInterruptControllerMaskSet(0xFD);

			_enableInterrupt();

			_setPosition(VIDEO_MEMORY + ((COLUMNS * 5) * 2));
			_printLine(KERN_STR, GREEN);

			//_setPosition(VIDEO_MEMORY + ((COLUMNS * 6) * 2));

#ifdef	LOGO
			_printLine(LOGOSTR0, GREEN);
			//_setPosition(VIDEO_MEMORY + ((COLUMNS * 7) * 2));
			_printLine(LOGOSTR1, GREEN);
			//_setPosition(VIDEO_MEMORY + ((COLUMNS * 8) * 2));
			_printLine(LOGOSTR2, GREEN);
			//_setPosition(VIDEO_MEMORY + ((COLUMNS * 9) * 2));
			_printLine(LOGOSTR3, GREEN);
			//_setPosition(VIDEO_MEMORY + ((COLUMNS * 10) * 2));
			_printLine(LOGOSTR4, GREEN);
			//_setPosition(VIDEO_MEMORY + ((COLUMNS * 11) * 2));
			_printLine(LOGOSTR5, GREEN);
			//_setPosition(VIDEO_MEMORY + ((COLUMNS * 12) * 2));
			_printLine(LOGOSTR6, GREEN);
			//_setPosition(VIDEO_MEMORY + ((COLUMNS * 13) * 2));
			_printLine(LOGOSTR7, GREEN);
			//_setPosition(VIDEO_MEMORY + ((COLUMNS * 14) * 2));
			_printLine(LOGOSTR8, GREEN);
			//_setPosition(VIDEO_MEMORY + ((COLUMNS * 15) * 2));
			_printLine(LOGOSTR9, GREEN);
			//_setPosition(VIDEO_MEMORY + ((COLUMNS * 16) * 2));
			_printLine(LOGOSTR10, GREEN);
			//_setPosition(VIDEO_MEMORY + ((COLUMNS * 17) * 2));
			_printLine(LOGOSTR11, GREEN);
			//_setPosition(VIDEO_MEMORY + ((COLUMNS * 18) * 2));
			_printLine(LOGOSTR12, GREEN);
			//_setPosition(VIDEO_MEMORY + ((COLUMNS * 19) * 2));
			_printLine(LOGOSTR13, GREEN);
			//_setPosition(VIDEO_MEMORY + ((COLUMNS * 20) * 2));
			_printLine(LOGOSTR14, GREEN);
			//_setPosition(VIDEO_MEMORY + ((COLUMNS * 21) * 2));
			_printLine(LOGOSTR15, GREEN);
			//_setPosition(VIDEO_MEMORY + ((COLUMNS * 22) * 2));
			_printLine(LOGOSTR16, GREEN);
			//_setPosition(VIDEO_MEMORY + ((COLUMNS * 23) * 2));
			_printLine(LOGOSTR17, GREEN);
			//_setPosition(VIDEO_MEMORY + ((COLUMNS * 24) * 2));
#endif

			//num	/=	0;

			while(1);

			return	0;
		}
