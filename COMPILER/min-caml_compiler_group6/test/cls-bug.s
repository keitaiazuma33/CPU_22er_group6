.section	".rodata"
.align	8
.section	".text"
f.6:  #pc 0
	addi	%x5, %x5, 123  #3 pc 0
	ret #pc 4
	nop #pc 8
g.8:  #pc 12
	lw	%x5, 4(%x29)  #4 pc 12
	ret #pc 16
	nop #pc 20
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x5, %x3, 0  #3 pc 32
	addi	%x3, %x3, 4  #3 pc 36
	addi	%x31, %x0, 0  #3 f.6 pc 40
	addi	%x6, %x31, 0  #3 pc 44
	sw	%x6, 0(%x5)  #3 pc 48
	addi	%x29, %x3, 0  #4 pc 52
	addi	%x3, %x3, 8  #4 pc 56
	addi	%x31, %x0, 12  #4 g.8 pc 60
	addi	%x6, %x31, 0  #4 pc 64
	sw	%x6, 0(%x29)  #4 pc 68
	sw	%x5, 4(%x29)  #4 pc 72
	addi	%x5, %x0, 456  #0 pc 76
	sw	%x1, 0(%x2)  #5 pc 80
	lw	%x30, 0(%x29)  #5 pc 84
	addi	%x2, %x2, 4  #5 pc 88
	jalr	%x1, %x30, 0  #5 pc 92
	addi	%x2, %x2, -4  #5 pc 96
	lw	%x1, 0(%x2)  #5 pc 100
	addi	%x29, %x5, 0  #5 pc 104
	addi	%x5, %x0, 789  #0 pc 108
	sw	%x1, 0(%x2)  #5 pc 112
	lw	%x30, 0(%x29)  #5 pc 116
	addi	%x2, %x2, 4  #5 pc 120
	jalr	%x1, %x30, 0  #5 pc 124
	addi	%x2, %x2, -4  #5 pc 128
	lw	%x1, 0(%x2)  #5 pc 132
	sw	%x1, 0(%x2)  #5 pc 136
	addi	%x2, %x2, 4  #5 pc 140
	jal	%x1, min_caml_print_int  #5 pc 144
	addi	%x2, %x2, -4  #5 pc 148
	lw	%x1, 0(%x2) #5 pc 152
	addi	%x2, %x2, 112
