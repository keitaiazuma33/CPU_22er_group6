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
	mv	%x5, %g0 #pc 40
	sw	%x1, 12(%x2)  #5 pc 44
	addi	%x2, %x2, 16  #5 pc 48
	jal	%x1, f.12  #5 pc 52
	addi	%x2, %x2, -16  #5 pc 56
	lw	%x1, 12(%x2) #5 pc 60
	sw	%x5, 8(%x2)  #6 pc 64
	mv	%x5, %g0 #pc 68
	sw	%x1, 12(%x2)  #6 pc 72
	addi	%x2, %x2, 16  #6 pc 76
	jal	%x1, g.14  #6 pc 80
	addi	%x2, %x2, -16  #6 pc 84
	lw	%x1, 12(%x2) #6 pc 88
	sw	%x5, 12(%x2)  #7 pc 92
	mv	%x5, %g0 #pc 96
	sw	%x1, 20(%x2)  #7 pc 100
	addi	%x2, %x2, 24  #7 pc 104
	jal	%x1, h.16  #7 pc 108
	addi	%x2, %x2, -24  #7 pc 112
	lw	%x1, 20(%x2) #7 pc 116
	beq	%x5, %x0, 12  #7 pc 120
	j	be_else.31 #pc 124
	nop #pc 128
	lw	%x5, 12(%x2)  #7 pc 132
	lw	%x6, 8(%x2)  #7 pc 136
	sub	%x5, %x6, %x5  #7 pc 140
	j	be_cont.32 #pc 144
	nop #pc 148
be_else.31: #pc 148
	lw	%x5, 8(%x2)  #7 pc 152
	lw	%x6, 12(%x2)  #7 pc 156
	sub	%x5, %x6, %x5  #7 pc 160
be_cont.32: #pc 160
	lw	%x6, 8(%x2)  #7 pc 164
	add	%x5, %x5, %x6  #7 pc 168
	lw	%x6, 12(%x2)  #7 pc 172
	add	%x5, %x5, %x6  #7 pc 176
	sw	%x1, 20(%x2)  #7 pc 180
	addi	%x2, %x2, 24  #7 pc 184
	jal	%x1, min_caml_print_int  #7 pc 188
	addi	%x2, %x2, -24  #7 pc 192
	lw	%x1, 20(%x2) #7 pc 196
	addi	%x2, %x2, 112
