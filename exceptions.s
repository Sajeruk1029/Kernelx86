.FILE	"exceptions.s"

	.TEXT

		.GLOBL	_exceptionDivideByZero
		.TYPE	_exceptionDivideByZero, @function

		.GLOBL	_exception0
		.TYPE	_exception0, @function

		.GLOBL	_exception1
		.TYPE	_exception1, @function

		.GLOBL	_exception2
		.TYPE	_exception2, @function

		.GLOBL	_exception3
		.TYPE	_exception3, @function

		.GLOBL	_exception4
		.TYPE	_exception4, @function

		.GLOBL	_exception5
		.TYPE	_exception5, @function

		.GLOBL	_exception6
		.TYPE	_exception6, @function

		.GLOBL	_exception7
		.TYPE	_exception7, @function

		.GLOBL	_exception8
		.TYPE	_exception8, @function

		.GLOBL	_exception9
		.TYPE	_exception9, @function

		.GLOBL	_exception10
		.TYPE	_exception10, @function

		.GLOBL	_exception11
		.TYPE	_exception11, @function

		.GLOBL	_exception12
		.TYPE	_exception12, @function

		.GLOBL	_exception13
		.TYPE	_exception13, @function

		.GLOBL	_exception14
		.TYPE	_exception14, @function

		.GLOBL	_exception15
		.TYPE	_exception15, @function

		.GLOBL	_exception16
		.TYPE	_exception16, @function

		.GLOBL	_exception17
		.TYPE	_exception17, @function

		.GLOBL	_exception18
		.TYPE	_exception18, @function

		.GLOBL	_exception19
		.TYPE	_exception19, @function

		.GLOBL	_exception20
		.TYPE	_exception20, @function

		.GLOBL	_exception21
		.TYPE	_exception21, @function

		.GLOBL	_exception22
		.TYPE	_exception22, @function

		.GLOBL	_exception23
		.TYPE	_exception23, @function

		.GLOBL	_exception24
		.TYPE	_exception24, @function

		.GLOBL	_exception25
		.TYPE	_exception25, @function

		.GLOBL	_exception26
		.TYPE	_exception26, @function

		.GLOBL	_exception27
		.TYPE	_exception27, @function

		.GLOBL	_exception28
		.TYPE	_exception28, @function

		.GLOBL	_exception29
		.TYPE	_exception29, @function

		.GLOBL	_exception30
		.TYPE	_exception30, @function

		.GLOBL	_exception31
		.TYPE	_exception31, @function

		#.EXTERN	_position

		.EXTERN	_printLine

		.divideByZeroLine:	.ASCIZ	"Divide By Zero Exception!"

		_exceptionDivideByZero:
			.CODE32

				PUSHA

				PUSHL	$0x03
				PUSHL	$.divideByZeroLine
				CALLL	_printLine

				#ADDL	$0x08, %ESP

				#MOVB	$'!', %AL
				#MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				ADDL	$0x02, (%ESP)

				IRET

		_exception0:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'0', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception1:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'1', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception2:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'2', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception3:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'3', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception4:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'4', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception5:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'5', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception6:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'6', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception7:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'7', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception8:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'8', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception9:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'9', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception10:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'q', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception11:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'w', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception12:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'e', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception13:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'r', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception14:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'t', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception15:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'y', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception16:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'u', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception17:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'i', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception18:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'o', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception19:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'p', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception20:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'a', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception21:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'s', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception22:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'d', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception23:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'f', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception24:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'g', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception25:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'h', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception26:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'j', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception27:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'k', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception28:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'l', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception29:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'z', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception30:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'x', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET

		_exception31:
			.CODE32

				PUSHL	%EBP
				MOVL	%ESP, %EBP

				PUSHA

				MOVB	$'c', %AL
				MOVB	$0x03, %AH

				MOVL	$_position, %EBX
				MOVL	(%EBX), %EBX

				MOVW	%AX, (%EBX)

				POPA

				MOVL	%EBP, %ESP
				PUSHL	%EBP

				IRET
