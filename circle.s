.macro drawPixelM x y color
	@ Gift function: draws a colored pixel on screen at position (x,y)
	@ Notice the comments on each line, detailing the corresponding C
	@ instruction, to ease the reading/debugging.
	stmfd	sp!, {r0-r5}				 @ save content of r0-r5 into sp register

	@ reg def
	mov		r0, \x			       @ r0 = x
	mov		r1, \y			       @ r1 = y
	mov		r2, \color		       @ r2 = color
	mov		r5, #240		       	 @ r5 = 240
	@ algo
	mov		r3, #100663296	       @ r3 = 0x6000000
   mul		r4, r1, r5	       	 @ r4 = y * 240
	add		r4, r4, r0		       @ r4 = (y * 240) + x
	mov     r4, r4, lsl #1         @ r4 = 2 * r4 = 2*((y * 240) + x)
	add		r3, r3, r4            @ r0 = 0x6000000 + 2*((y * 240) + y)
	strh   	r2, [r3, #0]	       @ mem32[r0] = color
	ldmfd	sp!, {r0-r5}
.endm

.GLOBL drawCircle
drawCircle:
    stmfd   sp!, {r4-r11, lr}     @ save content of r4-r11 and link register into the sp register
    @ Start your assembly code here
    @ Also, think about breaking the
    @ code into sub-macros you can branch
    @ to/from, and comment each line with
    @ the corresponding C instruction

    @ Here, you can use r4-r11 as temporary variables for the algorithm

@ r0 -> x-coord of center
@ r1 -> y-coord of center
@ r2 -> radius
@ r3 -> color

	 


    @ Exit from function
    ldmfd   sp!, {r4-r11, lr}     @ Recover past state of r4-r11 and link register from sp register
    mov     pc, lr					 @ Branch back to lr (go back to C code that called this function)

