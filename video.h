#ifndef	VIDEO_H
#define	VIDEO_H

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
			}	Color;

		#pragma pack(pop)

			void	
					_printLine(char*	line, char	color, int offset);
			void	
					_clearScreen(void);

#endif

