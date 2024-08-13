#include	"video.h"

	void	
		_printLine(char*	line, char	color, int offset)
		{
			volatile	char*	videoMemory	=	(char*)VIDEO_MEMORY + offset * 2;

			for(int	counter	=	0; *(line + counter); ++counter)
			{
				*videoMemory++	=	*(line + counter);
				*videoMemory++	=	color;
			}
		}

	void	
		_clearScreen(void)
		{
			volatile	char*	videoMemory	=	(char*)VIDEO_MEMORY;

			for(int	counter	=	0; counter < COLUMNS * ROWS; ++counter)
			{
				*videoMemory++	=	0;
				*videoMemory++	=	0;
			}
		}
