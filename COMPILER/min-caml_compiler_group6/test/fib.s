.section	".rodata"
.align	8
.section	".text"
print_int.161:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
fib.181:  #pc 16
	addi	%x31, %x0, 1  #pc 16
	bge	%x31, %x6, 12  #208 pc 20
	j	ble_else.326 #pc 24
	nop #pc 28
	ret #pc 32
	nop #pc 36
ble_else.326: #pc 40
	addi	%x7, %x6, -1  #209 pc 40
	sw	%x6, 0(%x2)  #209 pc 44
	addi	%x6, %x7, 0  #0 pc 48
	sw	%x1, 4(%x2)  #209 pc 52
	addi	%x2, %x2, 8  #209 pc 56
	jal	%x1, fib.181  #209 pc 60
	addi	%x2, %x2, -8  #209 pc 64
	lw	%x1, 4(%x2) #209 pc 68
	lw	%x7, 0(%x2)  #209 pc 72
	addi	%x7, %x7, -2  #209 pc 76
	sw	%x6, 4(%x2)  #209 pc 80
	addi	%x6, %x7, 0  #0 pc 84
	sw	%x1, 8(%x2)  #209 pc 88
	addi	%x2, %x2, 12  #209 pc 92
	jal	%x1, fib.181  #209 pc 96
	addi	%x2, %x2, -12  #209 pc 100
	lw	%x1, 8(%x2) #209 pc 104
	lw	%x7, 4(%x2)  #209 pc 108
	add	%x6, %x7, %x6  #209 pc 112
	ret #pc 116
	nop #pc 120
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x6, %x0, 30  #0 pc 132
	sw	%x1, 0(%x2)  #210 pc 136
	addi	%x2, %x2, 4  #210 pc 140
	jal	%x1, fib.181  #210 pc 144
	addi	%x2, %x2, -4  #210 pc 148
	lw	%x1, 0(%x2) #210 pc 152
	sw	%x1, 0(%x2)  #210 pc 156
	addi	%x2, %x2, 4  #210 pc 160
	jal	%x1, print_int.161  #210 pc 164
	addi	%x2, %x2, -4  #210 pc 168
	lw	%x1, 0(%x2) #210 pc 172
	addi	%x2, %x2, 112
