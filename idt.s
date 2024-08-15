.FILE	"idt.s"

	.GLOBL	_programmableInterruptControllerInit
	.TYPE	_programmableInterruptControllerInit, @function

	.GLOBL	_programmableInterruptControllerMaskSet
	.TYPE	_programmableInterruptControllerMaskSet, @function

	.GLOBL	_enableInterrupt
	.TYPE	_enableInterrupt, @function

	.GLOBL	_disableInterrupt
	.TYPE	_disableInterrupt, @function

	.GLOBL	_loadInterruptDescriptorTable
	.TYPE	_loadInterruptDescriptorTable, @function

	.EXTERN	_writePort

		_programmableInterruptControllerInit:
			.CODE32
				PUSHL	%EBP
				MOVL	%ESP, %EBP

				#ICW1
				PUSHL	$0x11
				PUSHL	$0x20
				CALLL	_writePort

				PUSHL	$0x11
				PUSHL	$0xA0
				CALLL	_writePort

				#ICW2
				PUSHL	$0x00
				PUSHL	$0x21
				CALLL	_writePort

				PUSHL	$0x08
				PUSHL	$0xA1
				CALLL	_writePort

				#ICW3
				PUSHL	$0x00
				PUSHL	$0x21
				CALLL	_writePort

				PUSHL	$0x08
				PUSHL	$0xA1
				CALLL	_writePort

				#ICW4
				PUSHL	$0x01
				PUSHL	$0x21
				CALLL	_writePort

				PUSHL	$0x01
				PUSHL	$0xA1
				CALLL	_writePort

				ADDL	$0x40, %ESP

				MOVL	%EBP, %ESP
				POPL	%EBP

				RETL
		_programmableInterruptControllerMaskSet:
			.CODE32
				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHL	%EAX

				MOVL	8(%EBP), %EAX

				PUSHL	%EAX
				PUSHL	$0x21
				CALLL	_writePort

				ADDL	$0x08, %ESP

				POPL	%EAX

				MOVL	%EBP, %ESP
				POPL	%EBP

				RETL
		_enableInterrupt:
			.CODE32
				STI

				RET
		_disableInterrupt:
			.CODE32
				CLI

				RET
		_loadInterruptDescriptorTable:
			.CODE32
				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHL	%EAX

				MOVL	8(%EBP), %EAX

				LIDTL	(%EAX)

				POPL	%EAX

				MOVL	%EBP, %ESP
				POPL	%EBP

				RETL
