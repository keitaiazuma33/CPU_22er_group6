.section	".rodata"
.align	8
.section	".text"
f.8:  #pc 0
	lw	%x6, 4(%x22)  #0 pc 4
	beq	%x5, %x0, 12  #4 pc 8
	j	be_else.21 #pc 12
	nop #pc 16
	addi	%x5, %x0, 0  #0 pc 20
	ret #pc 24
	nop #pc 28
be_else.21: #pc 28
	addi	%x5, %x5, -1  #5 pc 32
	sw	%x6, 0(%x2)  #5 pc 36
	sw	%x1, 4(%x2)  #5 pc 40
	lw	%x23, 0(%x22)  #5 pc 44
	addi	%x2, %x2, 8  #5 pc 48
	jalr	%x1, %x23, 0  #5 pc 52
	addi	%x2, %x2, -8  #5 pc 56
	lw	%x1, 4(%x2)  #5 pc 60
	lw	%x6, 0(%x2)  #5 pc 64
	add	%x5, %x6, %x5  #5 pc 68
	ret #pc 72
	nop #pc 76
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 10  #0 pc 80
	mv	%x22, %x3  #3 pc 84
	addi	%x3, %x3, 8  #3 pc 88
	addi	%x24, %x0, 0  #3 f.8 pc 92
	mv	%x6, %x24  #3 pc 96
	sw	%x6, 0(%x22)  #3 pc 100
	sw	%x5, 4(%x22)  #3 pc 104
	addi	%x5, %x0, 123  #0 pc 108
	sw	%x1, 12(%x2)  #6 pc 112
	lw	%x23, 0(%x22)  #6 pc 116
	addi	%x2, %x2, 16  #6 pc 120
	jalr	%x1, %x23, 0  #6 pc 124
	addi	%x2, %x2, -16  #6 pc 128
	lw	%x1, 12(%x2)  #6 pc 132
	sw	%x1, 12(%x2)  #6 pc 136
	addi	%x2, %x2, 16  #6 pc 140
	jal	%x1, min_caml_print_int  #6 pc 144
	addi	%x2, %x2, -16  #6 pc 148
	lw	%x1, 12(%x2) #6 pc 152
	addi	%x2, %x2, 112
