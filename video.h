#ifndef	VIDEO_H
#define	VIDEO_H

	#include	<stdint.h>

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
						_printLine(char*	line, char	color);
				void	
						_clearScreen(void);
				void	
						_setPosition(uint32_t	position);

#endif

