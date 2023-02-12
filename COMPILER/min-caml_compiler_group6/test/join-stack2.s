.section	".rodata"
.align	8
.section	".text"
print_int.160:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
f.180:  #pc 16
	addi	%x6, %x0, 123  #0 pc 16
	ret #pc 20
	nop #pc 24
g.182:  #pc 28
	addi	%x6, %x0, 456  #0 pc 28
	ret #pc 32
	nop #pc 36
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 1000000
	addi	%x3, %x0, 1002000
	addi	%x4, %x0, 8192
	addi	%x5, %x0, 65536
	sw	%x1, 0(%x2)  #210 pc 56
	addi	%x2, %x2, 4  #210 pc 60
	jal	%x1, f.180  #210 pc 64
	addi	%x2, %x2, -4  #210 pc 68
	lw	%x1, 0(%x2) #210 pc 72
	sw	%x6, 0(%x2)  #211 pc 76
	bge	%x0, %x6, 12  #211 pc 80
	j	ble_else.325 #pc 84
	nop #pc 88
	sw	%x1, 4(%x2)  #211 pc 92
	addi	%x2, %x2, 8  #211 pc 96
	jal	%x1, g.182  #211 pc 100
	addi	%x2, %x2, -8  #211 pc 104
	lw	%x1, 4(%x2) #211 pc 108
	lw	%x7, 0(%x2)  #211 pc 112
	add	%x6, %x6, %x7  #211 pc 116
	j	ble_cont.326 #pc 120
	nop #pc 124
ble_else.325: #pc 128
ble_cont.326: #pc 128
	lw	%x7, 0(%x2)  #211 pc 128
	add	%x6, %x6, %x7  #211 pc 132
	sw	%x1, 4(%x2)  #211 pc 136
	addi	%x2, %x2, 8  #211 pc 140
	jal	%x1, print_int.160  #211 pc 144
	addi	%x2, %x2, -8  #211 pc 148
	lw	%x1, 4(%x2) #211 pc 152
