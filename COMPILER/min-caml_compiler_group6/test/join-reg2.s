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
	bge	%x0, %x6, 12  #212 pc 88
	j	ble_else.332 #pc 92
	nop #pc 96
	sw	%x6, 0(%x2)  #212 pc 100
	sw	%x1, 4(%x2)  #212 pc 104
	addi	%x2, %x2, 8  #212 pc 108
	jal	%x1, g.185  #212 pc 112
	addi	%x2, %x2, -8  #212 pc 116
	lw	%x1, 4(%x2) #212 pc 120
	lw	%x7, 0(%x2)  #212 pc 124
	add	%x6, %x6, %x7  #212 pc 128
	j	ble_cont.333 #pc 132
	nop #pc 136
ble_else.332: #pc 140
	sw	%x6, 0(%x2)  #212 pc 140
	sw	%x1, 4(%x2)  #212 pc 144
	addi	%x2, %x2, 8  #212 pc 148
	jal	%x1, h.187  #212 pc 152
	addi	%x2, %x2, -8  #212 pc 156
	lw	%x1, 4(%x2) #212 pc 160
	lw	%x7, 0(%x2)  #212 pc 164
	sub	%x6, %x6, %x7  #212 pc 168
ble_cont.333: #pc 172
	add	%x6, %x6, %x7  #212 pc 172
	sw	%x1, 4(%x2)  #212 pc 176
	addi	%x2, %x2, 8  #212 pc 180
	jal	%x1, print_int.163  #212 pc 184
	addi	%x2, %x2, -8  #212 pc 188
	lw	%x1, 4(%x2) #212 pc 192
