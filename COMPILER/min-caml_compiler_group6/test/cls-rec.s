.section	".rodata"
.align	8
.section	".text"
f.8:  #pc 0
	addi	%x24, %x0, 4  #pc 0
	add	%x24, %x24, %x22  #0 pc 4
	lw	%x6, 0(%x24)  #0 pc 8
	beq	%x5, %x0, 12  #4 pc 12
	j	be_else.21 #pc 16
	nop #pc 20
	addi	%x5, %x0, 0  #0 pc 24
	ret #pc 28
	nop #pc 32
be_else.21: #pc 36
	addi	%x5, %x5, -1  #5 pc 36
	sw	%x6, 0(%x2)  #5 pc 40
	sw	%x1, 4(%x2)  #5 pc 44
	lw	%x23, 0(%x22)  #5 pc 48
	addi	%x2, %x2, 8  #5 pc 52
	jalr	%x1, %x23, 0  #5 pc 56
	addi	%x2, %x2, -8  #5 pc 60
	lw	%x1, 4(%x2)  #5 pc 64
	lw	%x6, 0(%x2)  #5 pc 68
	add	%x5, %x6, %x5  #5 pc 72
	ret #pc 76
	nop #pc 80
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 10  #0 pc 84
	addi	%x22, %x3, 0  #3 pc 88
	addi	%x3, %x3, 8  #3 pc 92
	addi	%x24, %x0, 0  #3 f.8 pc 96
	addi	%x6, %x24, 0  #3 pc 100
	add	%x24, %x0, %x22  #3 pc 104
	sw	%x6, 0(%x24)  #3 pc 108
	addi	%x24, %x0, 4  #pc 112
	add	%x24, %x24, %x22  #3 pc 116
	sw	%x5, 0(%x24)  #3 pc 120
	addi	%x5, %x0, 123  #0 pc 124
	sw	%x1, 12(%x2)  #6 pc 128
	lw	%x23, 0(%x22)  #6 pc 132
	addi	%x2, %x2, 16  #6 pc 136
	jalr	%x1, %x23, 0  #6 pc 140
	addi	%x2, %x2, -16  #6 pc 144
	lw	%x1, 12(%x2)  #6 pc 148
	sw	%x1, 12(%x2)  #6 pc 152
	addi	%x2, %x2, 16  #6 pc 156
	jal	%x1, min_caml_print_int  #6 pc 160
	addi	%x2, %x2, -16  #6 pc 164
	lw	%x1, 12(%x2) #6 pc 168
	addi	%x2, %x2, 112
