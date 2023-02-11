.section	".rodata"
.align	8
.section	".text"
adder.11:  #pc 0
	lw	%x6, 4(%x29)  #2 pc 0
	add	%x5, %x6, %x5  #2 pc 4
	ret #pc 8
	nop #pc 12
make_adder.5:  #pc 16
	addi	%x6, %x3, 0  #2 pc 16
	addi	%x3, %x3, 8  #2 pc 20
	addi	%x31, %x0, 0  #2 adder.11 pc 24
	addi	%x7, %x31, 0  #2 pc 28
	sw	%x7, 0(%x6)  #2 pc 32
	sw	%x5, 4(%x6)  #2 pc 36
	addi	%x5, %x6, 0  #3 pc 40
	ret #pc 44
	nop #pc 48
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x5, %x0, 3  #0 pc 60
	sw	%x1, 0(%x2)  #4 pc 64
	addi	%x2, %x2, 4  #4 pc 68
	jal	%x1, make_adder.5  #4 pc 72
	addi	%x2, %x2, -4  #4 pc 76
	lw	%x1, 0(%x2) #4 pc 80
	addi	%x29, %x5, 0  #4 pc 84
	addi	%x5, %x0, 7  #0 pc 88
	sw	%x1, 0(%x2)  #4 pc 92
	lw	%x30, 0(%x29)  #4 pc 96
	addi	%x2, %x2, 4  #4 pc 100
	jalr	%x1, %x30, 0  #4 pc 104
	addi	%x2, %x2, -4  #4 pc 108
	lw	%x1, 0(%x2)  #4 pc 112
	sw	%x1, 0(%x2)  #4 pc 116
	addi	%x2, %x2, 4  #4 pc 120
	jal	%x1, min_caml_print_int  #4 pc 124
	addi	%x2, %x2, -4  #4 pc 128
	lw	%x1, 0(%x2) #4 pc 132
	addi	%x2, %x2, 112
