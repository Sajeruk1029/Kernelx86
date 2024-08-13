OUTPUT_FORMAT("elf32-i386")
OUTPUT_ARCH("i386")	

ENTRY(_kernel)
SECTIONS
{
	.	=	0x1000;

	.text	:	AT(0x7E00)	{ *(.text) }
	.data	:	AT(0x7E00)	{ *(.data) }
	.bss	:	AT(0x7E00)	{ *(.bss) }
}

