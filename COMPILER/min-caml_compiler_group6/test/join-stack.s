.section	".rodata"
.align	8
.section	".text"
f.14:  #pc 0
	addi	%x5, %x0, 123  #0 pc 4
	ret #pc 8
	nop #pc 12
g.16:  #pc 12
	addi	%x5, %x0, 456  #0 pc 16
	ret #pc 20
	nop #pc 24
h.18:  #pc 24
	addi	%x5, %x0, 789  #0 pc 28
	ret #pc 32
	nop #pc 36
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 0  #0 pc 44
	sw	%x1, 12(%x2)  #5 pc 48
	addi	%x2, %x2, 16  #5 pc 52
	jal	%x1, f.14  #5 pc 56
	addi	%x2, %x2, -16  #5 pc 60
	lw	%x1, 12(%x2) #5 pc 64
	sw	%x5, 8(%x2)  #6 pc 68
	addi	%x5, %x0, 0  #0 pc 76
	sw	%x1, 12(%x2)  #6 pc 80
	addi	%x2, %x2, 16  #6 pc 84
	jal	%x1, g.16  #6 pc 88
	addi	%x2, %x2, -16  #6 pc 92
	lw	%x1, 12(%x2) #6 pc 96
	sw	%x5, 12(%x2)  #7 pc 100
	addi	%x5, %x0, 0  #0 pc 108
	sw	%x1, 20(%x2)  #7 pc 112
	addi	%x2, %x2, 24  #7 pc 116
	jal	%x1, h.18  #7 pc 120
	addi	%x2, %x2, -24  #7 pc 124
	lw	%x1, 20(%x2) #7 pc 128
	beq	%x5, %x0, 12  #7 pc 132
	j	be_else.35 #pc 136
	nop #pc 140
	lw	%x5, 8(%x2)  #7 pc 144
	addi	%x5, %x5, 1  #7 pc 148
	j	be_cont.36 #pc 152
	nop #pc 156
be_else.35: #pc 156
	lw	%x5, 12(%x2)  #7 pc 160
	addi	%x5, %x5, 2  #7 pc 164
be_cont.36: #pc 164
	lw	%x6, 8(%x2)  #7 pc 168
	add	%x5, %x5, %x6  #7 pc 172
	lw	%x6, 12(%x2)  #7 pc 176
	add	%x5, %x5, %x6  #7 pc 180
	sw	%x1, 20(%x2)  #7 pc 184
	addi	%x2, %x2, 24  #7 pc 188
	jal	%x1, min_caml_print_int  #7 pc 192
	addi	%x2, %x2, -24  #7 pc 196
	lw	%x1, 20(%x2) #7 pc 200
	addi	%x2, %x2, 112
