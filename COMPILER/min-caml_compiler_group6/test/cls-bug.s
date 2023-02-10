.section	".rodata"
.align	8
.section	".text"
f.6:  #pc 0
	addi	%x5, %x5, 123  #3 pc 4
	ret #pc 8
	nop #pc 12
g.8:  #pc 12
	lw	%x5, 4(%x22)  #4 pc 16
	ret #pc 20
	nop #pc 24
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	mv	%x5, %x3  #3 pc 28
	addi	%x3, %x3, 8  #3 pc 32
	addi	%x24, %x0, 0  #3 f.6 pc 36
	mv	%x6, %x24  #3 pc 40
	sw	%x6, 0(%x5)  #3 pc 44
	mv	%x22, %x3  #4 pc 48
	addi	%x3, %x3, 8  #4 pc 52
	addi	%x24, %x0, 12  #4 g.8 pc 56
	mv	%x6, %x24  #4 pc 60
	sw	%x6, 0(%x22)  #4 pc 64
	sw	%x5, 4(%x22)  #4 pc 68
	addi	%x5, %x0, 456  #0 pc 72
	sw	%x1, 12(%x2)  #5 pc 76
	lw	%x23, 0(%x22)  #5 pc 80
	addi	%x2, %x2, 16  #5 pc 84
	jalr	%x1, %x23, 0  #5 pc 88
	addi	%x2, %x2, -16  #5 pc 92
	lw	%x1, 12(%x2)  #5 pc 96
	mv	%x22, %x5  #5 pc 100
	addi	%x5, %x0, 789  #0 pc 104
	sw	%x1, 12(%x2)  #5 pc 108
	lw	%x23, 0(%x22)  #5 pc 112
	addi	%x2, %x2, 16  #5 pc 116
	jalr	%x1, %x23, 0  #5 pc 120
	addi	%x2, %x2, -16  #5 pc 124
	lw	%x1, 12(%x2)  #5 pc 128
	sw	%x1, 12(%x2)  #5 pc 132
	addi	%x2, %x2, 16  #5 pc 136
	jal	%x1, min_caml_print_int  #5 pc 140
	addi	%x2, %x2, -16  #5 pc 144
	lw	%x1, 12(%x2) #5 pc 148
	addi	%x2, %x2, 112
