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
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	sw	%x1, 0(%x2)  #211 pc 60
	addi	%x2, %x2, 4  #211 pc 64
	jal	%x1, f.181  #211 pc 68
	addi	%x2, %x2, -4  #211 pc 72
	lw	%x1, 0(%x2) #211 pc 76
	sw	%x6, 0(%x2)  #212 pc 80
	bge	%x0, %x6, 12  #212 pc 84
	j	ble_else.329 #pc 88
	nop #pc 92
	sw	%x1, 4(%x2)  #212 pc 96
	addi	%x2, %x2, 8  #212 pc 100
	jal	%x1, g.183  #212 pc 104
	addi	%x2, %x2, -8  #212 pc 108
	lw	%x1, 4(%x2) #212 pc 112
	j	ble_cont.330 #pc 116
	nop #pc 120
ble_else.329: #pc 124
	sw	%x1, 4(%x2)  #212 pc 124
	addi	%x2, %x2, 8  #212 pc 128
	jal	%x1, h.185  #212 pc 132
	addi	%x2, %x2, -8  #212 pc 136
	lw	%x1, 4(%x2) #212 pc 140
ble_cont.330: #pc 144
	lw	%x7, 0(%x2)  #212 pc 144
	add	%x6, %x6, %x7  #212 pc 148
	sw	%x1, 4(%x2)  #212 pc 152
	addi	%x2, %x2, 8  #212 pc 156
	jal	%x1, print_int.161  #212 pc 160
	addi	%x2, %x2, -8  #212 pc 164
	lw	%x1, 4(%x2) #212 pc 168
	addi	%x2, %x2, 112
