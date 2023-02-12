.section	".rodata"
.align	8
.section	".text"
print_int.159:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
sum.179:  #pc 16
	bge	%x0, %x7, 12  #208 pc 16
	j	ble_else.321 #pc 20
	nop #pc 24
	ret #pc 28
	nop #pc 32
ble_else.321: #pc 36
	add	%x6, %x6, %x7  #209 pc 36
	addi	%x7, %x7, -1  #209 pc 40
	j	sum.179  #209 pc 44
	nop #pc 48
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x6, %x0, 0  #0 pc 60
	addi	%x7, %x0, 10000  #0 pc 64
	sw	%x1, 0(%x2)  #210 pc 68
	addi	%x2, %x2, 4  #210 pc 72
	jal	%x1, sum.179  #210 pc 76
	addi	%x2, %x2, -4  #210 pc 80
	lw	%x1, 0(%x2) #210 pc 84
	sw	%x1, 0(%x2)  #210 pc 88
	addi	%x2, %x2, 4  #210 pc 92
	jal	%x1, print_int.159  #210 pc 96
	addi	%x2, %x2, -4  #210 pc 100
	lw	%x1, 0(%x2) #210 pc 104
	addi	%x2, %x2, 112
