.section	".rodata"
.align	8
.section	".text"
print_int.161:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
f.181:  #pc 16
	addi	%x6, %x0, 123  #0 pc 16
	ret #pc 20
	nop #pc 24
g.183:  #pc 28
	addi	%x6, %x0, 456  #0 pc 28
	ret #pc 32
	nop #pc 36
h.185:  #pc 40
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
	jal	%x1, f.181  #211 pc 76
	addi	%x2, %x2, -4  #211 pc 80
	lw	%x1, 0(%x2) #211 pc 84
	sw	%x6, 0(%x2)  #212 pc 88
	bge	%x0, %x6, 12  #212 pc 92
	j	ble_else.329 #pc 96
	nop #pc 100
	sw	%x1, 4(%x2)  #212 pc 104
	addi	%x2, %x2, 8  #212 pc 108
	jal	%x1, g.183  #212 pc 112
	addi	%x2, %x2, -8  #212 pc 116
	lw	%x1, 4(%x2) #212 pc 120
	j	ble_cont.330 #pc 124
	nop #pc 128
ble_else.329: #pc 132
	sw	%x1, 4(%x2)  #212 pc 132
	addi	%x2, %x2, 8  #212 pc 136
	jal	%x1, h.185  #212 pc 140
	addi	%x2, %x2, -8  #212 pc 144
	lw	%x1, 4(%x2) #212 pc 148
ble_cont.330: #pc 152
	lw	%x7, 0(%x2)  #212 pc 152
	add	%x6, %x6, %x7  #212 pc 156
	sw	%x1, 4(%x2)  #212 pc 160
	addi	%x2, %x2, 8  #212 pc 164
	jal	%x1, print_int.161  #212 pc 168
	addi	%x2, %x2, -8  #212 pc 172
	lw	%x1, 4(%x2) #212 pc 176
