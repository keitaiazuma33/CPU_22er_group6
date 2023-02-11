.section	".rodata"
.align	8
.section	".text"
f.8:  #pc 0
	lw	%x6, 4(%x29)  #0 pc 0
	beq	%x5, %x0, 12  #4 pc 4
	j	be_else.21 #pc 8
	nop #pc 12
	addi	%x5, %x0, 0  #0 pc 16
	ret #pc 20
	nop #pc 24
be_else.21: #pc 28
	addi	%x5, %x5, -1  #5 pc 28
	sw	%x6, 0(%x2)  #5 pc 32
	sw	%x1, 4(%x2)  #5 pc 36
	lw	%x30, 0(%x29)  #5 pc 40
	addi	%x2, %x2, 8  #5 pc 44
	jalr	%x1, %x30, 0  #5 pc 48
	addi	%x2, %x2, -8  #5 pc 52
	lw	%x1, 4(%x2)  #5 pc 56
	lw	%x6, 0(%x2)  #5 pc 60
	add	%x5, %x6, %x5  #5 pc 64
	ret #pc 68
	nop #pc 72
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x5, %x0, 10  #0 pc 84
	addi	%x29, %x3, 0  #3 pc 88
	addi	%x3, %x3, 8  #3 pc 92
	addi	%x31, %x0, 0  #3 f.8 pc 96
	addi	%x6, %x31, 0  #3 pc 100
	sw	%x6, 0(%x29)  #3 pc 104
	sw	%x5, 4(%x29)  #3 pc 108
	addi	%x5, %x0, 123  #0 pc 112
	sw	%x1, 0(%x2)  #6 pc 116
	lw	%x30, 0(%x29)  #6 pc 120
	addi	%x2, %x2, 4  #6 pc 124
	jalr	%x1, %x30, 0  #6 pc 128
	addi	%x2, %x2, -4  #6 pc 132
	lw	%x1, 0(%x2)  #6 pc 136
	sw	%x1, 0(%x2)  #6 pc 140
	addi	%x2, %x2, 4  #6 pc 144
	jal	%x1, min_caml_print_int  #6 pc 148
	addi	%x2, %x2, -4  #6 pc 152
	lw	%x1, 0(%x2) #6 pc 156
	addi	%x2, %x2, 112
