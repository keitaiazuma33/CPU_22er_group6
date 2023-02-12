.section	".rodata"
.align	8
.section	".text"
print_int.166:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
ack.186:  #pc 16
	bge	%x0, %x6, 12  #208 pc 16
	j	ble_else.336 #pc 20
	nop #pc 24
	addi	%x6, %x7, 1  #208 pc 28
	ret #pc 32
	nop #pc 36
ble_else.336: #pc 40
	bge	%x0, %x7, 12  #209 pc 40
	j	ble_else.337 #pc 44
	nop #pc 48
	addi	%x6, %x6, -1  #209 pc 52
	addi	%x7, %x0, 1  #0 pc 56
	j	ack.186  #209 pc 60
	nop #pc 64
ble_else.337: #pc 68
	addi	%x8, %x6, -1  #210 pc 68
	addi	%x7, %x7, -1  #210 pc 72
	sw	%x8, 0(%x2)  #210 pc 76
	sw	%x1, 4(%x2)  #210 pc 80
	addi	%x2, %x2, 8  #210 pc 84
	jal	%x1, ack.186  #210 pc 88
	addi	%x2, %x2, -8  #210 pc 92
	lw	%x1, 4(%x2) #210 pc 96
	addi	%x7, %x6, 0  #210 pc 100
	lw	%x6, 0(%x2)  #210 pc 104
	j	ack.186  #210 pc 108
	nop #pc 112
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x6, %x0, 3  #0 pc 124
	addi	%x7, %x0, 10  #0 pc 128
	sw	%x1, 0(%x2)  #211 pc 132
	addi	%x2, %x2, 4  #211 pc 136
	jal	%x1, ack.186  #211 pc 140
	addi	%x2, %x2, -4  #211 pc 144
	lw	%x1, 0(%x2) #211 pc 148
	sw	%x1, 0(%x2)  #211 pc 152
	addi	%x2, %x2, 4  #211 pc 156
	jal	%x1, print_int.166  #211 pc 160
	addi	%x2, %x2, -4  #211 pc 164
	lw	%x1, 0(%x2) #211 pc 168
	addi	%x2, %x2, 112
