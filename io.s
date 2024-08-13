.FILE	"io.s"

	.GLOBL	writePort
	.TYPE	writePort, @function

	.GLOBL	readPort
	.TYPE	readPort, @function

		writePort:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHW	%AX
				PUSHW	%DX

				MOVB	12(%EBP), %AL
				MOVW	8(%EBP), %DX

				OUTB	%AL, %DX

				POPW	%AX
				POPW	%DX

				MOVL	%EBP, %ESP
				POPL	%EBP

				RETL

		readPort:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHW	%DX

				MOVL	$0x00, %EAX

				MOVW	8(%EBP), %DX

				INB	%DX, %AL

				POPW	%DX

				MOVL	%EBP, %ESP
				POPL	%EBP

				RETL
