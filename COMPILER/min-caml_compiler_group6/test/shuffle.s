.section	".rodata"
.align	8
.section	".text"
print_int.163:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
foo.183:  #pc 16
	sw	%x11, 0(%x2)  #208 pc 16
	sw	%x10, 4(%x2)  #208 pc 20
	sw	%x9, 8(%x2)  #208 pc 24
	sw	%x8, 12(%x2)  #208 pc 28
	sw	%x7, 16(%x2)  #208 pc 32
	sw	%x1, 20(%x2)  #208 pc 36
	addi	%x2, %x2, 24  #208 pc 40
	jal	%x1, print_int.163  #208 pc 44
	addi	%x2, %x2, -24  #208 pc 48
	lw	%x1, 20(%x2) #208 pc 52
	lw	%x6, 16(%x2)  #209 pc 56
	sw	%x1, 20(%x2)  #209 pc 60
	addi	%x2, %x2, 24  #209 pc 64
	jal	%x1, print_int.163  #209 pc 68
	addi	%x2, %x2, -24  #209 pc 72
	lw	%x1, 20(%x2) #209 pc 76
	lw	%x6, 12(%x2)  #210 pc 80
	sw	%x1, 20(%x2)  #210 pc 84
	addi	%x2, %x2, 24  #210 pc 88
	jal	%x1, print_int.163  #210 pc 92
	addi	%x2, %x2, -24  #210 pc 96
	lw	%x1, 20(%x2) #210 pc 100
	lw	%x6, 8(%x2)  #211 pc 104
	sw	%x1, 20(%x2)  #211 pc 108
	addi	%x2, %x2, 24  #211 pc 112
	jal	%x1, print_int.163  #211 pc 116
	addi	%x2, %x2, -24  #211 pc 120
	lw	%x1, 20(%x2) #211 pc 124
	lw	%x6, 4(%x2)  #212 pc 128
	sw	%x1, 20(%x2)  #212 pc 132
	addi	%x2, %x2, 24  #212 pc 136
	jal	%x1, print_int.163  #212 pc 140
	addi	%x2, %x2, -24  #212 pc 144
	lw	%x1, 20(%x2) #212 pc 148
	lw	%x6, 0(%x2)  #213 pc 152
	j	print_int.163  #213 pc 156
	nop #pc 160
bar.190:  #pc 164
	addi	%x30, %x11, 0  #0 pc 164
	addi	%x11, %x8, 0  #0 pc 168
	addi	%x8, %x9, 0  #0 pc 172
	addi	%x9, %x10, 0  #0 pc 176
	addi	%x10, %x30, 0  #0 pc 180
	addi	%x30, %x7, 0  #0 pc 184
	addi	%x7, %x6, 0  #0 pc 188
	addi	%x6, %x30, 0  #0 pc 192
	j	foo.183  #215 pc 196
	nop #pc 200
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 1000000
	addi	%x3, %x0, 1002000
	addi	%x4, %x0, 8192
	addi	%x5, %x0, 65536
	addi	%x6, %x0, 1  #0 pc 220
	addi	%x7, %x0, 2  #0 pc 224
	addi	%x8, %x0, 3  #0 pc 228
	addi	%x9, %x0, 4  #0 pc 232
	addi	%x10, %x0, 5  #0 pc 236
	addi	%x11, %x0, 6  #0 pc 240
	sw	%x1, 0(%x2)  #216 pc 244
	addi	%x2, %x2, 4  #216 pc 248
	jal	%x1, bar.190  #216 pc 252
	addi	%x2, %x2, -4  #216 pc 256
	lw	%x1, 0(%x2) #216 pc 260
