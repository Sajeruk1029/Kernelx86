OUTPUT_FORMAT("elf32-i386")
OUTPUT_ARCH("i386")	

ENTRY(_kernel)
SECTIONS
{
	.	=	0x1000;

	.text	:	ALIGN(4096)	{ *(.text) }
	.rodata	:	ALIGN(4096)	{*(.rodata*) }
	.data	:	ALIGN(4096)	{ *(.data) }
	.bss	:	ALIGN(4096)	{ *(.bss) }
}

