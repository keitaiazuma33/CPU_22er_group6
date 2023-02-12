.section	".rodata"
.align	8
.section	".text"
print_int.165:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
f.185:  #pc 16
	addi	%x6, %x0, 123  #0 pc 16
	ret #pc 20
	nop #pc 24
g.187:  #pc 28
	addi	%x6, %x0, 456  #0 pc 28
	ret #pc 32
	nop #pc 36
h.189:  #pc 40
	addi	%x6, %x0, 789  #0 pc 40
	ret #pc 44
	nop #pc 48
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	sw	%x1, 0(%x2)  #211 pc 60
	addi	%x2, %x2, 4  #211 pc 64
	jal	%x1, f.185  #211 pc 68
	addi	%x2, %x2, -4  #211 pc 72
	lw	%x1, 0(%x2) #211 pc 76
	sw	%x6, 0(%x2)  #212 pc 80
	sw	%x1, 4(%x2)  #212 pc 84
	addi	%x2, %x2, 8  #212 pc 88
	jal	%x1, g.187  #212 pc 92
	addi	%x2, %x2, -8  #212 pc 96
	lw	%x1, 4(%x2) #212 pc 100
	sw	%x6, 4(%x2)  #213 pc 104
	sw	%x1, 8(%x2)  #213 pc 108
	addi	%x2, %x2, 12  #213 pc 112
	jal	%x1, h.189  #213 pc 116
	addi	%x2, %x2, -12  #213 pc 120
	lw	%x1, 8(%x2) #213 pc 124
	beq	%x6, %x0, 12  #213 pc 128
	j	be_else.337 #pc 132
	nop #pc 136
	lw	%x6, 0(%x2)  #213 pc 140
	addi	%x6, %x6, 1  #213 pc 144
	j	be_cont.338 #pc 148
	nop #pc 152
be_else.337: #pc 156
	lw	%x6, 4(%x2)  #213 pc 156
	addi	%x6, %x6, 2  #213 pc 160
be_cont.338: #pc 164
	lw	%x7, 0(%x2)  #213 pc 164
	add	%x6, %x6, %x7  #213 pc 168
	lw	%x7, 4(%x2)  #213 pc 172
	add	%x6, %x6, %x7  #213 pc 176
	sw	%x1, 8(%x2)  #213 pc 180
	addi	%x2, %x2, 12  #213 pc 184
	jal	%x1, print_int.165  #213 pc 188
	addi	%x2, %x2, -12  #213 pc 192
	lw	%x1, 8(%x2) #213 pc 196
	addi	%x2, %x2, 112
