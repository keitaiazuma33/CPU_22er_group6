.section	".rodata"
.align	8
.section	".text"
print_int.156:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
adder.182:  #pc 16
	lw	%x7, 4(%x29)  #208 pc 16
	add	%x6, %x7, %x6  #208 pc 20
	ret #pc 24
	nop #pc 28
make_adder.176:  #pc 32
	addi	%x7, %x3, 0  #208 pc 32
	addi	%x3, %x3, 8  #208 pc 36
	addi	%x31, %x0, 16  #208 adder.182 pc 40
	addi	%x8, %x31, 0  #208 pc 44
	sw	%x8, 0(%x7)  #208 pc 48
	sw	%x6, 4(%x7)  #208 pc 52
	addi	%x6, %x7, 0  #209 pc 56
	ret #pc 60
	nop #pc 64
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x6, %x0, 3  #0 pc 76
	sw	%x1, 0(%x2)  #210 pc 80
	addi	%x2, %x2, 4  #210 pc 84
	jal	%x1, make_adder.176  #210 pc 88
	addi	%x2, %x2, -4  #210 pc 92
	lw	%x1, 0(%x2) #210 pc 96
	addi	%x29, %x6, 0  #210 pc 100
	addi	%x6, %x0, 7  #0 pc 104
	sw	%x1, 0(%x2)  #210 pc 108
	lw	%x30, 0(%x29)  #210 pc 112
	addi	%x2, %x2, 4  #210 pc 116
	jalr	%x1, %x30, 0  #210 pc 120
	addi	%x2, %x2, -4  #210 pc 124
	lw	%x1, 0(%x2)  #210 pc 128
	sw	%x1, 0(%x2)  #210 pc 132
	addi	%x2, %x2, 4  #210 pc 136
	jal	%x1, print_int.156  #210 pc 140
	addi	%x2, %x2, -4  #210 pc 144
	lw	%x1, 0(%x2) #210 pc 148
	addi	%x2, %x2, 112
