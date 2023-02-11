.section	".rodata"
.align	8
.section	".text"
f.6:  #pc 0
	addi	%x5, %x5, 123  #3 pc 0
	ret #pc 4
	nop #pc 8
g.8:  #pc 12
	addi	%x24, %x0, 4  #pc 12
	add	%x24, %x24, %x22  #4 pc 16
	lw	%x5, 0(%x24)  #4 pc 20
	ret #pc 24
	nop #pc 28
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x3, 0  #3 pc 32
	addi	%x3, %x3, 8  #3 pc 36
	addi	%x24, %x0, 0  #3 f.6 pc 40
	addi	%x6, %x24, 0  #3 pc 44
	add	%x24, %x0, %x5  #3 pc 48
	sw	%x6, 0(%x24)  #3 pc 52
	addi	%x22, %x3, 0  #4 pc 56
	addi	%x3, %x3, 8  #4 pc 60
	addi	%x24, %x0, 12  #4 g.8 pc 64
	addi	%x6, %x24, 0  #4 pc 68
	add	%x24, %x0, %x22  #4 pc 72
	sw	%x6, 0(%x24)  #4 pc 76
	addi	%x24, %x0, 4  #pc 80
	add	%x24, %x24, %x22  #4 pc 84
	sw	%x5, 0(%x24)  #4 pc 88
	addi	%x5, %x0, 456  #0 pc 92
	sw	%x1, 12(%x2)  #5 pc 96
	lw	%x23, 0(%x22)  #5 pc 100
	addi	%x2, %x2, 16  #5 pc 104
	jalr	%x1, %x23, 0  #5 pc 108
	addi	%x2, %x2, -16  #5 pc 112
	lw	%x1, 12(%x2)  #5 pc 116
	addi	%x22, %x5, 0  #5 pc 120
	addi	%x5, %x0, 789  #0 pc 124
	sw	%x1, 12(%x2)  #5 pc 128
	lw	%x23, 0(%x22)  #5 pc 132
	addi	%x2, %x2, 16  #5 pc 136
	jalr	%x1, %x23, 0  #5 pc 140
	addi	%x2, %x2, -16  #5 pc 144
	lw	%x1, 12(%x2)  #5 pc 148
	sw	%x1, 12(%x2)  #5 pc 152
	addi	%x2, %x2, 16  #5 pc 156
	jal	%x1, min_caml_print_int  #5 pc 160
	addi	%x2, %x2, -16  #5 pc 164
	lw	%x1, 12(%x2) #5 pc 168
	addi	%x2, %x2, 112
