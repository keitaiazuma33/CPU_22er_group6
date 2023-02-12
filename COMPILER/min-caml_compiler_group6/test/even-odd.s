.section	".rodata"
.align	8
.section	".text"
print_int.166:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
odd.192:  #pc 16
	bge	%x0, %x6, 12  #211 pc 16
	j	ble_else.338 #pc 20
	nop #pc 24
	bge	%x6, %x0, 12  #212 pc 28
	j	bge_else.339 #pc 32
	nop #pc 36
	addi	%x6, %x0, 456  #0 pc 40
	ret #pc 44
	nop #pc 48
bge_else.339: #pc 52
	addi	%x6, %x6, 1  #212 pc 52
	j	even.188  #212 pc 56
	nop #pc 60
ble_else.338: #pc 64
	addi	%x6, %x6, -1  #211 pc 64
	j	even.188  #211 pc 68
	nop #pc 72
even.188:  #pc 76
	bge	%x0, %x6, 12  #214 pc 76
	j	ble_else.340 #pc 80
	nop #pc 84
	bge	%x6, %x0, 12  #215 pc 88
	j	bge_else.341 #pc 92
	nop #pc 96
	addi	%x6, %x0, 123  #0 pc 100
	ret #pc 104
	nop #pc 108
bge_else.341: #pc 112
	addi	%x6, %x6, 1  #215 pc 112
	j	odd.192  #215 pc 116
	nop #pc 120
ble_else.340: #pc 124
	addi	%x6, %x6, -1  #214 pc 124
	j	odd.192  #214 pc 128
	nop #pc 132
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x6, %x0, 789  #0 pc 144
	sw	%x1, 0(%x2)  #217 pc 148
	addi	%x2, %x2, 4  #217 pc 152
	jal	%x1, even.188  #217 pc 156
	addi	%x2, %x2, -4  #217 pc 160
	lw	%x1, 0(%x2) #217 pc 164
	sw	%x1, 0(%x2)  #217 pc 168
	addi	%x2, %x2, 4  #217 pc 172
	jal	%x1, print_int.166  #217 pc 176
	addi	%x2, %x2, -4  #217 pc 180
	lw	%x1, 0(%x2) #217 pc 184
	addi	%x2, %x2, 112
