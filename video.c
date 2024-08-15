#include	"video.h"

	char*	_position	=	(char*)VIDEO_MEMORY;

	void	
		_printLine(char*	line, char	color)
		{
			for(int	counter	=	0; *(line + counter); ++counter)
			{
				*_position++	=	*(line + counter);
				*_position++	=	color;
			}
		}

	void	
		_clearScreen(void)
		{
			_position	=	(char*)VIDEO_MEMORY;

			for(int	counter	=	0; counter < COLUMNS * ROWS; ++counter)
			{
				*_position++	=	0;
				*_position++	=	0;
			}

			_position	=	(char*)VIDEO_MEMORY;
		}

	void
		_setPosition(uint32_t	position)
		{
			_position	=	(char*)position;
		}
