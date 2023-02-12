.section	".rodata"
.align	8
.section	".text"
print_int.163:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
f.183:  #pc 16
	addi	%x6, %x0, 123  #0 pc 16
	ret #pc 20
	nop #pc 24
g.185:  #pc 28
	addi	%x6, %x0, 456  #0 pc 28
	ret #pc 32
	nop #pc 36
h.187:  #pc 40
	addi	%x6, %x0, 789  #0 pc 40
	ret #pc 44
	nop #pc 48
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 1000000
	addi	%x3, %x0, 1002000
	addi	%x4, %x0, 8192
	addi	%x5, %x0, 65536
	sw	%x1, 0(%x2)  #211 pc 68
	addi	%x2, %x2, 4  #211 pc 72
	jal	%x1, f.183  #211 pc 76
	addi	%x2, %x2, -4  #211 pc 80
	lw	%x1, 0(%x2) #211 pc 84
	sw	%x6, 0(%x2)  #212 pc 88
	sw	%x1, 4(%x2)  #212 pc 92
	addi	%x2, %x2, 8  #212 pc 96
	jal	%x1, g.185  #212 pc 100
	addi	%x2, %x2, -8  #212 pc 104
	lw	%x1, 4(%x2) #212 pc 108
	sw	%x6, 4(%x2)  #213 pc 112
	sw	%x1, 8(%x2)  #213 pc 116
	addi	%x2, %x2, 12  #213 pc 120
	jal	%x1, h.187  #213 pc 124
	addi	%x2, %x2, -12  #213 pc 128
	lw	%x1, 8(%x2) #213 pc 132
	beq	%x6, %x0, 12  #213 pc 136
	j	be_else.333 #pc 140
	nop #pc 144
	lw	%x6, 4(%x2)  #213 pc 148
	lw	%x7, 0(%x2)  #213 pc 152
	sub	%x6, %x7, %x6  #213 pc 156
	j	be_cont.334 #pc 160
	nop #pc 164
be_else.333: #pc 168
	lw	%x6, 0(%x2)  #213 pc 168
	lw	%x7, 4(%x2)  #213 pc 172
	sub	%x6, %x7, %x6  #213 pc 176
be_cont.334: #pc 180
	lw	%x7, 0(%x2)  #213 pc 180
	add	%x6, %x6, %x7  #213 pc 184
	lw	%x7, 4(%x2)  #213 pc 188
	add	%x6, %x6, %x7  #213 pc 192
	sw	%x1, 8(%x2)  #213 pc 196
	addi	%x2, %x2, 12  #213 pc 200
	jal	%x1, print_int.163  #213 pc 204
	addi	%x2, %x2, -12  #213 pc 208
	lw	%x1, 8(%x2) #213 pc 212
