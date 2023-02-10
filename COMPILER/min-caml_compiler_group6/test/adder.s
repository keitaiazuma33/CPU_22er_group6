.section	".rodata"
.align	8
.section	".text"
adder.11:  #pc 0
	addi	%x24, %x0, 4  #pc 4
	add	%x24, %x24, %x22  #2 pc 8
	lw	%x6, 0(%x24)  #2 pc 12
	add	%x5, %x6, %x5  #2 pc 16
	ret #pc 20
	nop #pc 24
make_adder.5:  #pc 24
	mv	%x6, %x3  #2 pc 28
	addi	%x3, %x3, 8  #2 pc 32
	addi	%x24, %x0, 0  #2 adder.11 pc 36
	mv	%x7, %x24  #2 pc 40
	add	%x24, %x0, %x6  #2 pc 44
	sw	%x7, 0(%x24)  #2 pc 48
	addi	%x24, %x0, 4  #pc 52
	add	%x24, %x24, %x6  #2 pc 56
	sw	%x5, 0(%x24)  #2 pc 60
	mv	%x5, %x6  #3 pc 64
	ret #pc 68
	nop #pc 72
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 3  #0 pc 76
	sw	%x1, 12(%x2)  #4 pc 80
	addi	%x2, %x2, 16  #4 pc 84
	jal	%x1, make_adder.5  #4 pc 88
	addi	%x2, %x2, -16  #4 pc 92
	lw	%x1, 12(%x2) #4 pc 96
	mv	%x22, %x5  #4 pc 100
	addi	%x5, %x0, 7  #0 pc 104
	sw	%x1, 12(%x2)  #4 pc 108
	lw	%x23, 0(%x22)  #4 pc 112
	addi	%x2, %x2, 16  #4 pc 116
	jalr	%x1, %x23, 0  #4 pc 120
	addi	%x2, %x2, -16  #4 pc 124
	lw	%x1, 12(%x2)  #4 pc 128
	sw	%x1, 12(%x2)  #4 pc 132
	addi	%x2, %x2, 16  #4 pc 136
	jal	%x1, min_caml_print_int  #4 pc 140
	addi	%x2, %x2, -16  #4 pc 144
	lw	%x1, 12(%x2) #4 pc 148
	addi	%x2, %x2, 112
