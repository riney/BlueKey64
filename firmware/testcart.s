		.org $8000						; all indices start at $8000 (cartridge rom)

		.alias IOINIT	$FDA3
		.alias RANTAM	$FD50
		.alias RESTOR	$FD15
		.alias CINT		$FF5B

		.alias BASRAM	$E453
		.alias BASINIT	$E3BF
		.alias BASNEW	$A642

		.alias CHROUT	$FFD2
		.alias BORDER	$D020
		.alias SCREEN	$D021
		.alias TEXT		$0286

		.alias MIX		14
		.alias SYM		142
		.alias CLS		147
		.alias HEART	$D3

		.byte $09, $80					; Cartridge cold-start vector = $8009
		.byte $25, $80					; Cartridge warm-start vector = $8025
		.byte $C3, $C2, $CD, $38, $30	; Magic word "CBM8O" in PETSCII

		; kernal reset routine
		STX $D016						; Turn on VIC for PAL / NTSC check
		JSR IOINIT						; IOINIT - Init CIA chips
		JSR RANTAM						; RANTAM - Clear/test system RAM
		JSR RESTOR						; RESTOR - Init KERNAL RAM vectors
		JSR CINT						; CINT - Init VIC and screen editor
		CLI								; Re-enable IRQ interrupts

		; BASIC reset routine
		jsr BASRAM						; Init BASIC RAM vectors
		jsr BASINIT						; Main BASIC RAM Init routine
		jsr BASNEW						; NEW command
		ldx #$FB
		txs								; Reduce stack pointer for BASIC

		; Actual code starts here ($8025)
		lda #6							; set the border and screen colors to blue,
		sta BORDER
		sta SCREEN
		lda #1							; and set the text color to white.
		sta TEXT
		lda #CLS						; print "clear screen" character
		jsr CHROUT
		lda #MIX						; Set mixed-case mode
		jsr CHROUT

		ldx #0							; clear x
loop:	lda msg, x						; set accumulator with a char from message
		beq done						; if zero, bail
		jsr CHROUT						; print character in accumulator
		inx								; increment x
		bne loop						; and back to the top

done:	beq done						; when really done, lock up

		.charmap 'a, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
		.charmap 'A, "abcdefghijklmnopqrstuvwxyz"

msg:	.byte "              Hello World", 0
