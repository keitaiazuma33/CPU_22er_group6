.section	".rodata"
.align	8
.section	".text"
print_int.158:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
sum.178:  #pc 16
	bge	%x0, %x6, 12  #208 pc 16
	j	ble_else.319 #pc 20
	nop #pc 24
	addi	%x6, %x0, 0  #0 pc 28
	ret #pc 32
	nop #pc 36
ble_else.319: #pc 40
	addi	%x7, %x6, -1  #209 pc 40
	sw	%x6, 0(%x2)  #209 pc 44
	addi	%x6, %x7, 0  #0 pc 48
	sw	%x1, 4(%x2)  #209 pc 52
	addi	%x2, %x2, 8  #209 pc 56
	jal	%x1, sum.178  #209 pc 60
	addi	%x2, %x2, -8  #209 pc 64
	lw	%x1, 4(%x2) #209 pc 68
	lw	%x7, 0(%x2)  #209 pc 72
	add	%x6, %x6, %x7  #209 pc 76
	ret #pc 80
	nop #pc 84
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 1000000
	addi	%x3, %x0, 1002000
	addi	%x4, %x0, 8192
	addi	%x5, %x0, 65536
	addi	%x6, %x0, 10000  #0 pc 104
	sw	%x1, 0(%x2)  #210 pc 108
	addi	%x2, %x2, 4  #210 pc 112
	jal	%x1, sum.178  #210 pc 116
	addi	%x2, %x2, -4  #210 pc 120
	lw	%x1, 0(%x2) #210 pc 124
	sw	%x1, 0(%x2)  #210 pc 128
	addi	%x2, %x2, 4  #210 pc 132
	jal	%x1, print_int.158  #210 pc 136
	addi	%x2, %x2, -4  #210 pc 140
	lw	%x1, 0(%x2) #210 pc 144
