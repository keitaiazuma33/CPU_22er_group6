.section	".rodata"
.align	8
.section	".text"
f.14:  #pc 0
	addi	%x5, %x0, 123  #0 pc 0
	ret #pc 4
	nop #pc 8
g.16:  #pc 12
	addi	%x5, %x0, 456  #0 pc 12
	ret #pc 16
	nop #pc 20
h.18:  #pc 24
	addi	%x5, %x0, 789  #0 pc 24
	ret #pc 28
	nop #pc 32
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 0  #0 pc 36
	sw	%x1, 12(%x2)  #5 pc 40
	addi	%x2, %x2, 16  #5 pc 44
	jal	%x1, f.14  #5 pc 48
	addi	%x2, %x2, -16  #5 pc 52
	lw	%x1, 12(%x2) #5 pc 56
	sw	%x5, 8(%x2)  #6 pc 60
	addi	%x5, %x0, 0  #0 pc 64
	sw	%x1, 12(%x2)  #6 pc 68
	addi	%x2, %x2, 16  #6 pc 72
	jal	%x1, g.16  #6 pc 76
	addi	%x2, %x2, -16  #6 pc 80
	lw	%x1, 12(%x2) #6 pc 84
	sw	%x5, 12(%x2)  #7 pc 88
	addi	%x5, %x0, 0  #0 pc 92
	sw	%x1, 20(%x2)  #7 pc 96
	addi	%x2, %x2, 24  #7 pc 100
	jal	%x1, h.18  #7 pc 104
	addi	%x2, %x2, -24  #7 pc 108
	lw	%x1, 20(%x2) #7 pc 112
	beq	%x5, %x0, 12  #7 pc 116
	j	be_else.35 #pc 120
	nop #pc 124
	lw	%x5, 8(%x2)  #7 pc 128
	addi	%x5, %x5, 1  #7 pc 132
	j	be_cont.36 #pc 136
	nop #pc 140
be_else.35: #pc 144
	lw	%x5, 12(%x2)  #7 pc 144
	addi	%x5, %x5, 2  #7 pc 148
be_cont.36: #pc 152
	lw	%x6, 8(%x2)  #7 pc 152
	add	%x5, %x5, %x6  #7 pc 156
	lw	%x6, 12(%x2)  #7 pc 160
	add	%x5, %x5, %x6  #7 pc 164
	sw	%x1, 20(%x2)  #7 pc 168
	addi	%x2, %x2, 24  #7 pc 172
	jal	%x1, min_caml_print_int  #7 pc 176
	addi	%x2, %x2, -24  #7 pc 180
	lw	%x1, 20(%x2) #7 pc 184
	addi	%x2, %x2, 112
