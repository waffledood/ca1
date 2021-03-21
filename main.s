	.file	"main.c"
@ GNU C version 3.3.6 (arm-thumb-elf)
@	compiled by GNU C version 7.5.0.
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed -mthumb-interwork -mlong-calls
@ -auxbase-strip -O2 -Wall -fverbose-asm
@ options enabled:  -fdefer-pop -fomit-frame-pointer
@ -foptimize-sibling-calls -fcse-follow-jumps -fcse-skip-blocks
@ -fexpensive-optimizations -fthread-jumps -fstrength-reduce -fpeephole
@ -fforce-mem -ffunction-cse -fkeep-static-consts -fcaller-saves
@ -freg-struct-return -fgcse -fgcse-lm -fgcse-sm -floop-optimize
@ -fcrossjumping -fif-conversion -fif-conversion2 -frerun-cse-after-loop
@ -frerun-loop-opt -fdelete-null-pointer-checks -fschedule-insns
@ -fschedule-insns2 -fsched-interblock -fsched-spec -fbranch-count-reg
@ -freorder-blocks -freorder-functions -fcprop-registers -fcommon
@ -fverbose-asm -fgnu-linker -fregmove -foptimize-register-move
@ -fargument-alias -fstrict-aliasing -fmerge-constants
@ -fzero-initialized-in-bss -fident -fpeephole2 -fguess-branch-probability
@ -fmath-errno -ftrapping-math -mapcs -mapcs-frame -mapcs-32 -msoft-float
@ -mthumb-interwork -mlong-calls

	.section	.rodata
	.align	2
.LC0:
	.word	32767
	.word	895
	.word	639
	.word	27
	.word	17612
	.word	21760
	.word	12968
	.text
	.align	2
	.global	Aymara4x
	.type	Aymara4x, %function
Aymara4x:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	sub	fp, ip, #-4294967292
	sub	sp, sp, #44
	ldr	lr, .L16
	ldmia	lr!, {r0, r1, r2, r3}
	sub	ip, fp, #68
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr, {r0, r1, r2}
	stmia	ip, {r0, r1, r2}
	mov	r1, #0
	str	r1, [fp, #-72]	@  i
	ldr	r8, .L16+4
	str	r1, [fp, #-80]
.L11:
	ldr	r3, [fp, #-80]
	ldr	r2, [fp, #-72]	@  i
	add	r3, r3, #77
	ldr	r1, [fp, #-80]
	mov	sl, #0	@  j
	str	r3, [fp, #-76]
	rsb	r6, r2, #7
	mov	r7, sl	@  j,  j
	rsb	r9, r1, #66
.L10:
	ldr	r2, .L16+8
	umull	r1, r3, r2, r6
	rsb	r1, r3, r6
	add	r3, r3, r1, lsr #1
	mov	r3, r3, lsr #2
	rsb	r3, r3, r3, asl #3
	rsb	r3, r3, r6
	sub	r2, fp, #40
	add	r4, r2, r3, asl #2
	ldr	ip, [r4, #-28]	@  color
	mov	r2, #11
	mov	r0, r7	@  j
	mov	r3, r2
	ldr	r1, [fp, #-76]
	rsb	r5, r7, #143	@  j,  j
	str	ip, [sp, #0]
	mov	lr, pc
	bx	r8
	mov	r2, #11
	ldr	ip, [r4, #-28]	@  color
	mov	r3, r2
	mov	r0, r5	@  j
	ldr	r1, [fp, #-76]
	str	ip, [sp, #0]
	mov	lr, pc
	bx	r8
	mov	r2, #11
	ldr	ip, [r4, #-28]	@  color
	mov	r0, r7	@  j
	mov	r3, r2
	mov	r1, r9
	str	ip, [sp, #0]
	mov	lr, pc
	bx	r8
	ldr	ip, [r4, #-28]	@  color
	mov	r2, #11
	mov	r0, r5	@  j
	mov	r1, r9
	mov	r3, r2
	add	sl, sl, #1	@  j,  j
	str	ip, [sp, #0]
	mov	lr, pc
	bx	r8
	cmp	sl, #6	@  j
	add	r7, r7, #11	@  j,  j
	add	r6, r6, #1
	bls	.L10
	ldr	r3, [fp, #-72]	@  i
	ldr	r1, [fp, #-80]
	add	r3, r3, #1
	add	r1, r1, #11
	cmp	r3, #6
	str	r3, [fp, #-72]	@  i
	str	r1, [fp, #-80]
	bls	.L11
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	.LC0
	.word	fillRect
	.word	613566757
	.size	Aymara4x, .-Aymara4x
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}
	mov	r2, #1024
	sub	sp, sp, #4
	sub	fp, ip, #-4294967292
	mov	r0, #0
	mov	ip, #992
	add	r2, r2, #3
	mov	r3, #67108864
	mov	r1, r0
	strh	r2, [r3, #0]	@ movhi 
	ldr	r4, .L22
	mov	r2, #100
	mov	r3, #10
	str	ip, [sp, #0]
	mov	lr, pc
	bx	r4
	mov	ip, #12864
	add	ip, ip, #57
	str	ip, [sp, #0]
	mov	r0, #105
	mov	r1, #45
	mov	r2, #30
	mov	r3, #70
	mov	lr, pc
	bx	r4
	mov	r0, #0
	ldr	r5, .L22+4
	mov	r1, r0
	mov	r2, r0
	mov	r4, #31
	mov	r3, #160
	str	r4, [sp, #0]
	mov	lr, pc
	bx	r5
	mov	r1, #80
	mov	r3, r1
	mov	r0, #0
	mov	r2, #120
	str	r4, [sp, #0]
	mov	lr, pc
	bx	r5
	mov	r0, #0
	mov	r2, #100
	mov	r4, #31744
	mov	r1, r0
	mov	r3, r2
	str	r4, [sp, #0]
	mov	lr, pc
	bx	r5
	mov	r0, #0
	mov	r1, #100
	mov	r2, r1
	mov	r3, r0
	str	r4, [sp, #0]
	mov	lr, pc
	bx	r5
	mov	r0, #75
	mov	r3, r4
	mov	r1, r0
	mov	r2, #20
	ldr	ip, .L22+8
	mov	lr, pc
	bx	ip
.L19:
	b	.L19
.L23:
	.align	2
.L22:
	.word	fillRect
	.word	drawLine
	.word	drawCircle
	.size	main, .-main
	.ident	"GCC: (GNU) 3.3.6"
