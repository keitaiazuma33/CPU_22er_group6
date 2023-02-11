.section	".rodata"
.align	8
.section	".text"
adder.11:  #pc 0
	addi	%x24, %x0, 4  #pc 0
	add	%x24, %x24, %x22  #2 pc 4
	lw	%x6, 0(%x24)  #2 pc 8
	add	%x5, %x6, %x5  #2 pc 12
	ret #pc 16
	nop #pc 20
make_adder.5:  #pc 24
	addi	%x6, %x3, 0  #2 pc 24
	addi	%x3, %x3, 8  #2 pc 28
	addi	%x24, %x0, 0  #2 adder.11 pc 32
	addi	%x7, %x24, 0  #2 pc 36
	add	%x24, %x0, %x6  #2 pc 40
	sw	%x7, 0(%x24)  #2 pc 44
	addi	%x24, %x0, 4  #pc 48
	add	%x24, %x24, %x6  #2 pc 52
	sw	%x5, 0(%x24)  #2 pc 56
	addi	%x5, %x6, 0  #3 pc 60
	ret #pc 64
	nop #pc 68
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 3  #0 pc 72
	sw	%x1, 12(%x2)  #4 pc 76
	addi	%x2, %x2, 16  #4 pc 80
	jal	%x1, make_adder.5  #4 pc 84
	addi	%x2, %x2, -16  #4 pc 88
	lw	%x1, 12(%x2) #4 pc 92
	addi	%x22, %x5, 0  #4 pc 96
	addi	%x5, %x0, 7  #0 pc 100
	sw	%x1, 12(%x2)  #4 pc 104
	lw	%x23, 0(%x22)  #4 pc 108
	addi	%x2, %x2, 16  #4 pc 112
	jalr	%x1, %x23, 0  #4 pc 116
	addi	%x2, %x2, -16  #4 pc 120
	lw	%x1, 12(%x2)  #4 pc 124
	sw	%x1, 12(%x2)  #4 pc 128
	addi	%x2, %x2, 16  #4 pc 132
	jal	%x1, min_caml_print_int  #4 pc 136
	addi	%x2, %x2, -16  #4 pc 140
	lw	%x1, 12(%x2) #4 pc 144
	addi	%x2, %x2, 112
