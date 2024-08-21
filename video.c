#include	"video.h"

	char*	_position	=	(char*)VIDEO_MEMORY;

	void	
		_printLine(char*	line, uint8_t	color)
		{
			uint32_t	size	=	0;

			for(int	counter	=	0; *(line + counter); ++counter)
			{
				*_position++	=	*(line + counter);
				*_position++	=	color;

				++size;
			}

			_position	+=	(COLUMNS * 2) - (size * 2);
		}

	void	
		_print(char*	line, uint8_t	color)
		{
			for(int	counter	=	0; *(line + counter); ++counter)
			{
				*_position++	=	*(line + counter);
				*_position++	=	color;
			}
		}

	void	
		_printSymbol(char	symbol, uint8_t	color)
		{
			if(symbol != 8)
			{
				if(_position == (char*)VIDEO_MEMORY + ((ROWS * COLUMNS) * 2)){ _clearScreen(); }

				*_position++	=	symbol;
				*_position++	=	color;
			}
			else
			{
				if(_position == (char*)VIDEO_MEMORY){ return; }

				*_position--	=	0;
				*_position--	=	0;
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
