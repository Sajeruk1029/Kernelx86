.FILE	"io.s"

	.GLOBL	_writePort
	.TYPE	_writePort, @function

	.GLOBL	_readPort
	.TYPE	_readPort, @function

		_writePort:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHL	%EAX
				PUSHL	%EDX

				MOVB	12(%EBP), %AL
				MOVW	8(%EBP), %DX

				OUTB	%AL, %DX

				POPL	%EDX
				POPL	%EAX

				MOVL	%EBP, %ESP
				POPL	%EBP

				RETL

		_readPort:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHL	%EDX

				MOVL	$0x00, %EAX

				MOVW	8(%EBP), %DX

				INB	%DX, %AL

				POPL	%EDX

				MOVL	%EBP, %ESP
				POPL	%EBP

				RETL
