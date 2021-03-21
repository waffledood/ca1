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

.GLOBL drawLine
drawLine:
    swp     r4, r4, [sp]			 @ pop last input argument from stack and put it in r4
    stmfd   sp!, {r4-r11, lr}     @ save content of r4-r11 and link register into the sp register
    @ Start your assembly code here
    @ Also, think about breaking the
    @ code into sub-macros you can branch
    @ to/from, and comment each line with
    @ the corresponding C instruction

    @ Here, you can use r5-r11 as temporary variables for the algorithm

@ r0 -> x0 (x-coord of start)
@ r1 -> y0 (y-coord of start)
@ r2 -> x1 (x-coord of end)
@ r3 -> y1 (y-coord of end)
@ r4 -> color

	 @ x (r5)
	 MOV r5, r0 @ x iterator	@MOV r6, r2 @ x iterator limit 

	 @ dx (r6)
	 SUB r6, r2, r0 @ dx = x1 - x0 | r6 = r2 - r0

	 @ dy (r7)
	 SUB r7, r3, r1 @ dy = y1 - y0 | r7 = r3 - r1

	 @ D (r8)
	 RSB r8, r6, r7, LSL#1 @ D = 2*dy - dx | r8 = 2*r7 - r6

	 @ y (r9)
	 MOV r9, r1 @ y = y0 | r9 = r1
	 
	 @ for loop that iterates through x-axis in increments of 1
	 forLoop:
	 	
	 	drawPixelM r5 r9 r4 @drawPixelM r5 r1 r4

	 	@@ D = D + 2 * dy
	 	@ADDS r8, r8, r7, LSL#1 
	 	CMP r8, #0

	 	@ if D > 0
	 	ADDGT r9, r9, #1 @ y = y + 1
	 	SUBGT r8, r8, r6, LSL#1 @ D = D - 2 * dx
	
	 	@ D = D + 2 * dy
 		ADD r8, r8, r7, LSL#1 
	 	
	 	@ forLoop incrementor & limit check
	 	ADD r5, r5, #1
	 	CMP r2, r5
	 	BGT forLoop

    @ Exit from function
    ldmfd   sp!, {r4-r11, lr}     @ Recover past state of r4-r11 and link register from sp register
    swp     r4, r4, [sp]			 @ Restore state of r4
    mov     pc, lr					 @ Branch back to lr (go back to C code that called this function)

