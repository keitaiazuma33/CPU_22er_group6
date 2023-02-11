.section	".rodata"
.align	8
.section	".text"
sum.8:  #pc 0
	bge	%x0, %x6, 12  #2 pc 0
	j	ble_else.19 #pc 4
	nop #pc 8
	ret #pc 12
	nop #pc 16
ble_else.19: #pc 20
	add	%x5, %x5, %x6  #3 pc 20
	addi	%x6, %x6, -1  #3 pc 24
	j	sum.8  #3 pc 28
	nop #pc 32
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x5, %x0, 0  #0 pc 44
	addi	%x6, %x0, 10000  #0 pc 48
	sw	%x1, 0(%x2)  #4 pc 52
	addi	%x2, %x2, 4  #4 pc 56
	jal	%x1, sum.8  #4 pc 60
	addi	%x2, %x2, -4  #4 pc 64
	lw	%x1, 0(%x2) #4 pc 68
	sw	%x1, 0(%x2)  #4 pc 72
	addi	%x2, %x2, 4  #4 pc 76
	jal	%x1, min_caml_print_int  #4 pc 80
	addi	%x2, %x2, -4  #4 pc 84
	lw	%x1, 0(%x2) #4 pc 88
	addi	%x2, %x2, 112
