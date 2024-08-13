#ifndef	IDT_H
#define	IDT_H

	#include	<stdint.h>

	#include	"io.h"

		#define	IDTENTRIES	256

			#pragma pack(push, 1)

				typedef	struct
				{
					uint16_t	_isrLow;
					uint16_t	_kernelCs;
					uint8_t	_reserved;
					uint8_t	_attributes;
					uint16_t	_isrHigh;
				}	_IDTEntry;

				typedef	_IDTEntry	_IDT[IDTENTRIES];

				typedef	struct
				{
					uint16_t	_limit;
					uint32_t	_base;
				}	_IDTDescriptor;

			#pragma pack(pop)

				void	programmableInterruptControllerInit(void);
				void	programmableInterruptControllerMaskSet(uint8_t	mask);
				void	enableInterrupt(void);
				void	disableInterrupt(void);
				void	loadInterruptDescriptorTable(_IDTDescriptor*	descriptor);
#endif
