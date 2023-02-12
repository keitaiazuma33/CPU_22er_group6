.section	".rodata"
.align	8
.section	".text"
print_int.158:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
gcd.178:  #pc 16
	beq	%x6, %x0, 12  #208 pc 16
	j	be_else.319 #pc 20
	nop #pc 24
	addi	%x6, %x7, 0  #208 pc 28
	ret #pc 32
	nop #pc 36
be_else.319: #pc 40
	bge	%x7, %x6, 12  #209 pc 40
	j	ble_else.320 #pc 44
	nop #pc 48
	sub	%x7, %x7, %x6  #209 pc 52
	j	gcd.178  #209 pc 56
	nop #pc 60
ble_else.320: #pc 64
	sub	%x6, %x6, %x7  #210 pc 64
	addi	%x30, %x7, 0  #0 pc 68
	addi	%x7, %x6, 0  #0 pc 72
	addi	%x6, %x30, 0  #0 pc 76
	j	gcd.178  #210 pc 80
	nop #pc 84
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 1000000
	addi	%x3, %x0, 1002000
	addi	%x4, %x0, 8192
	addi	%x5, %x0, 65536
	addi	%x6, %x0, 21600  #0 pc 104
	addi	%x7, %x0, 337500  #0 pc 108
	sw	%x1, 0(%x2)  #211 pc 112
	addi	%x2, %x2, 4  #211 pc 116
	jal	%x1, gcd.178  #211 pc 120
	addi	%x2, %x2, -4  #211 pc 124
	lw	%x1, 0(%x2) #211 pc 128
	sw	%x1, 0(%x2)  #211 pc 132
	addi	%x2, %x2, 4  #211 pc 136
	jal	%x1, print_int.158  #211 pc 140
	addi	%x2, %x2, -4  #211 pc 144
	lw	%x1, 0(%x2) #211 pc 148
