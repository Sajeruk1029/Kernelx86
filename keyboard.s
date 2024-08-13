.FILE	"keyboard.s"

	.GLOBL	keyboardHandler
	.TYPE	keyboardHandler, @function

	keyboardHandler:
		.CODE32

			PUSHA

			MOVB	$0x02, %AH
			MOVB	$'!', %AL

			MOVL	$0xB8000, %EBX
			MOVW	%AX, (%EBX)

			POPA

			IRET
