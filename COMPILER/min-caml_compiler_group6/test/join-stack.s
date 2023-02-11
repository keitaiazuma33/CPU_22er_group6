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
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	sw	%x1, 0(%x2)  #5 pc 44
	addi	%x2, %x2, 4  #5 pc 48
	jal	%x1, f.14  #5 pc 52
	addi	%x2, %x2, -4  #5 pc 56
	lw	%x1, 0(%x2) #5 pc 60
	sw	%x5, 0(%x2)  #6 pc 64
	sw	%x1, 4(%x2)  #6 pc 68
	addi	%x2, %x2, 8  #6 pc 72
	jal	%x1, g.16  #6 pc 76
	addi	%x2, %x2, -8  #6 pc 80
	lw	%x1, 4(%x2) #6 pc 84
	sw	%x5, 4(%x2)  #7 pc 88
	sw	%x1, 8(%x2)  #7 pc 92
	addi	%x2, %x2, 12  #7 pc 96
	jal	%x1, h.18  #7 pc 100
	addi	%x2, %x2, -12  #7 pc 104
	lw	%x1, 8(%x2) #7 pc 108
	beq	%x5, %x0, 12  #7 pc 112
	j	be_else.35 #pc 116
	nop #pc 120
	lw	%x5, 0(%x2)  #7 pc 124
	addi	%x5, %x5, 1  #7 pc 128
	j	be_cont.36 #pc 132
	nop #pc 136
be_else.35: #pc 140
	lw	%x5, 4(%x2)  #7 pc 140
	addi	%x5, %x5, 2  #7 pc 144
be_cont.36: #pc 148
	lw	%x6, 0(%x2)  #7 pc 148
	add	%x5, %x5, %x6  #7 pc 152
	lw	%x6, 4(%x2)  #7 pc 156
	add	%x5, %x5, %x6  #7 pc 160
	sw	%x1, 8(%x2)  #7 pc 164
	addi	%x2, %x2, 12  #7 pc 168
	jal	%x1, min_caml_print_int  #7 pc 172
	addi	%x2, %x2, -12  #7 pc 176
	lw	%x1, 8(%x2) #7 pc 180
	addi	%x2, %x2, 112
