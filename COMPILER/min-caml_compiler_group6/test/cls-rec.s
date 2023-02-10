.section	".rodata"
.align	8
.section	".text"
f.8:  #pc 0
	addi	%x24, %x0, 4  #pc 4
	add	%x24, %x24, %x22  #0 pc 8
	lw	%x6, 0(%x24)  #0 pc 12
	beq	%x5, %x0, 12  #4 pc 16
	j	be_else.21 #pc 20
	nop #pc 24
	addi	%x5, %x0, 0  #0 pc 28
	ret #pc 32
	nop #pc 36
be_else.21: #pc 36
	addi	%x5, %x5, -1  #5 pc 40
	sw	%x6, 0(%x2)  #5 pc 44
	sw	%x1, 4(%x2)  #5 pc 48
	lw	%x23, 0(%x22)  #5 pc 52
	addi	%x2, %x2, 8  #5 pc 56
	jalr	%x1, %x23, 0  #5 pc 60
	addi	%x2, %x2, -8  #5 pc 64
	lw	%x1, 4(%x2)  #5 pc 68
	lw	%x6, 0(%x2)  #5 pc 72
	add	%x5, %x6, %x5  #5 pc 76
	ret #pc 80
	nop #pc 84
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 10  #0 pc 88
	mv	%x22, %x3  #3 pc 92
	addi	%x3, %x3, 8  #3 pc 96
	addi	%x24, %x0, 0  #3 f.8 pc 100
	mv	%x6, %x24  #3 pc 104
	add	%x24, %x0, %x22  #3 pc 108
	sw	%x6, 0(%x24)  #3 pc 112
	addi	%x24, %x0, 4  #pc 116
	add	%x24, %x24, %x22  #3 pc 120
	sw	%x5, 0(%x24)  #3 pc 124
	addi	%x5, %x0, 123  #0 pc 128
	sw	%x1, 12(%x2)  #6 pc 132
	lw	%x23, 0(%x22)  #6 pc 136
	addi	%x2, %x2, 16  #6 pc 140
	jalr	%x1, %x23, 0  #6 pc 144
	addi	%x2, %x2, -16  #6 pc 148
	lw	%x1, 12(%x2)  #6 pc 152
	sw	%x1, 12(%x2)  #6 pc 156
	addi	%x2, %x2, 16  #6 pc 160
	jal	%x1, min_caml_print_int  #6 pc 164
	addi	%x2, %x2, -16  #6 pc 168
	lw	%x1, 12(%x2) #6 pc 172
	addi	%x2, %x2, 112
