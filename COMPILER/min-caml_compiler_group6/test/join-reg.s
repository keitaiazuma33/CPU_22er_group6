.section	".rodata"
.align	8
.section	".text"
f.12:  #pc 0
	addi	%x5, %x0, 123  #0 pc 4
	ret #pc 8
	nop #pc 12
g.14:  #pc 12
	addi	%x5, %x0, 456  #0 pc 16
	ret #pc 20
	nop #pc 24
h.16:  #pc 24
	addi	%x5, %x0, 789  #0 pc 28
	ret #pc 32
	nop #pc 36
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 0  #0 pc 44
	sw	%x1, 12(%x2)  #5 pc 48
	addi	%x2, %x2, 16  #5 pc 52
	jal	%x1, f.12  #5 pc 56
	addi	%x2, %x2, -16  #5 pc 60
	lw	%x1, 12(%x2) #5 pc 64
	sw	%x5, 8(%x2)  #6 pc 68
	addi	%x5, %x0, 0  #0 pc 76
	sw	%x1, 12(%x2)  #6 pc 80
	addi	%x2, %x2, 16  #6 pc 84
	jal	%x1, g.14  #6 pc 88
	addi	%x2, %x2, -16  #6 pc 92
	lw	%x1, 12(%x2) #6 pc 96
	sw	%x5, 12(%x2)  #7 pc 100
	addi	%x5, %x0, 0  #0 pc 108
	sw	%x1, 20(%x2)  #7 pc 112
	addi	%x2, %x2, 24  #7 pc 116
	jal	%x1, h.16  #7 pc 120
	addi	%x2, %x2, -24  #7 pc 124
	lw	%x1, 20(%x2) #7 pc 128
	beq	%x5, %x0, 12  #7 pc 132
	j	be_else.31 #pc 136
	nop #pc 140
	lw	%x5, 12(%x2)  #7 pc 144
	lw	%x6, 8(%x2)  #7 pc 148
	sub	%x5, %x6, %x5  #7 pc 152
	j	be_cont.32 #pc 156
	nop #pc 160
be_else.31: #pc 160
	lw	%x5, 8(%x2)  #7 pc 164
	lw	%x6, 12(%x2)  #7 pc 168
	sub	%x5, %x6, %x5  #7 pc 172
be_cont.32: #pc 172
	lw	%x6, 8(%x2)  #7 pc 176
	add	%x5, %x5, %x6  #7 pc 180
	lw	%x6, 12(%x2)  #7 pc 184
	add	%x5, %x5, %x6  #7 pc 188
	sw	%x1, 20(%x2)  #7 pc 192
	addi	%x2, %x2, 24  #7 pc 196
	jal	%x1, min_caml_print_int  #7 pc 200
	addi	%x2, %x2, -24  #7 pc 204
	lw	%x1, 20(%x2) #7 pc 208
	addi	%x2, %x2, 112
