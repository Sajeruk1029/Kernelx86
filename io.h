#ifndef	IO_H
#define	IO_H

	#include	<stdint.h>

		void	writePort(uint16_t	port, uint8_t	data);

		uint8_t	readPort(uint16_t	port);

#endif
