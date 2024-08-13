.FILE	"idt.s"

	#.GLOBL	interruptHandler
	#.TYPE	interruptHandler, @function

	.GLOBL	programmableInterruptControllerInit
	.TYPE	programmableInterruptControllerInit, @function

	.GLOBL	programmableInterruptControllerMaskSet
	.TYPE	programmableInterruptControllerMaskSet, @function

	.GLOBL	enableInterrupt
	.TYPE	enableInterrupt, @function

	.GLOBL	disableInterrupt
	.TYPE	disableInterrupt, @function

	.GLOBL	loadInterruptDescriptorTable
	.TYPE	loadInterruptDescriptorTable, @function

	.EXTERN	writePort
	.TYPE	writePort, @function

	#.EXTERN	keyboardHandlerKernel
	#.TYPE	keyboardHandlerKernel, @function


		programmableInterruptControllerInit:
			.CODE32
				PUSHL	%EBP
				MOVL	%ESP, %EBP

				#ICW1
				PUSHL	$0x11
				PUSHL	$0x20
				CALLL	writePort

				PUSHL	$0x11
				PUSHL	$0xA0
				CALLL	writePort

				#ICW2
				PUSHL	$0x00
				PUSHL	$0x21
				CALLL	writePort

				PUSHL	$0x08
				PUSHL	$0xA1
				CALLL	writePort

				#ICW3
				PUSHL	$0x00
				PUSHL	$0x21
				CALLL	writePort

				PUSHL	$0x08
				PUSHL	$0xA1
				CALLL	writePort

				#ICW4
				PUSHL	$0x01
				PUSHL	$0x21
				CALLL	writePort

				PUSHL	$0x01
				PUSHL	$0xA1
				CALLL	writePort

				MOVL	%EBP, %ESP
				POPL	%EBP

				RETL
		programmableInterruptControllerMaskSet:
			.CODE32
				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHL	%EAX

				MOVL	8(%EBP), %EAX

				PUSHL	%EAX
				PUSHL	$0x21
				CALLL	writePort

				POPL	%EAX

				MOVL	%EBP, %ESP
				POPL	%EBP

				RETL
		enableInterrupt:
			.CODE32
				STI

				RET
		disableInterrupt:
			.CODE32
				CLI

				RET
		loadInterruptDescriptorTable:
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

		#interruptHandler:
			#.CODE32

				#PUSHA

				#CALLL	keyboardHandlerKernel

				#POPA

				#IRET
