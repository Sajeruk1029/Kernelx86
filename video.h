#ifndef	VIDEO_H
#define	VIDEO_H

	#include	<stdint.h>

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

		#define VIDEO_MEMORY 0xB8000

		#define	COLUMNS	80
		#define	ROWS	25

			#pragma pack(push, 1)

				typedef	enum
				{
					BLACK,
					BLUE,
					GREEN,
					CYAN,
					RED,
					MAGENTA,
					BROWN,
					LIGHTGRAY,
					DARKGRAY,
					LIGHTBLUE,
					LIGHTGREEN,
					LIGHTCYAN,
					LIGHTRED,
					LIGHTMAGENTA,
					LIGHTBROWN,
					WHITE
				}	_Color;

			#pragma pack(pop)

				void	
						_printLine(char*	line, uint8_t	color);
				void	
						_print(char*	line, uint8_t	color);
				void	
						_printSymbol(char	symbol, uint8_t	color);
				void	
						_clearScreen(void);
				void	
						_setPosition(uint32_t	position);

#endif

