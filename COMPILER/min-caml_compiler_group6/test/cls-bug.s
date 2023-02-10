.section	".rodata"
.align	8
.section	".text"
f.6:  #pc 0
	addi	%x5, %x5, 123  #3 pc 4
	ret #pc 8
	nop #pc 12
g.8:  #pc 12
	addi	%x24, %x0, 4  #pc 16
	add	%x24, %x24, %x22  #4 pc 20
	lw	%x5, 0(%x24)  #4 pc 24
	ret #pc 28
	nop #pc 32
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	mv	%x5, %x3  #3 pc 36
	addi	%x3, %x3, 8  #3 pc 40
	addi	%x24, %x0, 0  #3 f.6 pc 44
	mv	%x6, %x24  #3 pc 48
	add	%x24, %x0, %x5  #3 pc 52
	sw	%x6, 0(%x24)  #3 pc 56
	mv	%x22, %x3  #4 pc 60
	addi	%x3, %x3, 8  #4 pc 64
	addi	%x24, %x0, 12  #4 g.8 pc 68
	mv	%x6, %x24  #4 pc 72
	add	%x24, %x0, %x22  #4 pc 76
	sw	%x6, 0(%x24)  #4 pc 80
	addi	%x24, %x0, 4  #pc 84
	add	%x24, %x24, %x22  #4 pc 88
	sw	%x5, 0(%x24)  #4 pc 92
	addi	%x5, %x0, 456  #0 pc 96
	sw	%x1, 12(%x2)  #5 pc 100
	lw	%x23, 0(%x22)  #5 pc 104
	addi	%x2, %x2, 16  #5 pc 108
	jalr	%x1, %x23, 0  #5 pc 112
	addi	%x2, %x2, -16  #5 pc 116
	lw	%x1, 12(%x2)  #5 pc 120
	mv	%x22, %x5  #5 pc 124
	addi	%x5, %x0, 789  #0 pc 128
	sw	%x1, 12(%x2)  #5 pc 132
	lw	%x23, 0(%x22)  #5 pc 136
	addi	%x2, %x2, 16  #5 pc 140
	jalr	%x1, %x23, 0  #5 pc 144
	addi	%x2, %x2, -16  #5 pc 148
	lw	%x1, 12(%x2)  #5 pc 152
	sw	%x1, 12(%x2)  #5 pc 156
	addi	%x2, %x2, 16  #5 pc 160
	jal	%x1, min_caml_print_int  #5 pc 164
	addi	%x2, %x2, -16  #5 pc 168
	lw	%x1, 12(%x2) #5 pc 172
	addi	%x2, %x2, 112
