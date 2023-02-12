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
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	sw	%x1, 0(%x2)  #210 pc 48
	addi	%x2, %x2, 4  #210 pc 52
	jal	%x1, f.180  #210 pc 56
	addi	%x2, %x2, -4  #210 pc 60
	lw	%x1, 0(%x2) #210 pc 64
	sw	%x6, 0(%x2)  #211 pc 68
	bge	%x0, %x6, 12  #211 pc 72
	j	ble_else.325 #pc 76
	nop #pc 80
	sw	%x1, 4(%x2)  #211 pc 84
	addi	%x2, %x2, 8  #211 pc 88
	jal	%x1, g.182  #211 pc 92
	addi	%x2, %x2, -8  #211 pc 96
	lw	%x1, 4(%x2) #211 pc 100
	lw	%x7, 0(%x2)  #211 pc 104
	add	%x6, %x6, %x7  #211 pc 108
	j	ble_cont.326 #pc 112
	nop #pc 116
ble_else.325: #pc 120
ble_cont.326: #pc 120
	lw	%x7, 0(%x2)  #211 pc 120
	add	%x6, %x6, %x7  #211 pc 124
	sw	%x1, 4(%x2)  #211 pc 128
	addi	%x2, %x2, 8  #211 pc 132
	jal	%x1, print_int.160  #211 pc 136
	addi	%x2, %x2, -8  #211 pc 140
	lw	%x1, 4(%x2) #211 pc 144
	addi	%x2, %x2, 112
