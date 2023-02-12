.section	".rodata"
.align	8
.section	".text"
print_int.159:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
x.179:  #pc 16
	sub	%x7, %x0, %x6  #208 pc 16
	sub	%x6, %x6, %x7  #208 pc 20
	sub	%x7, %x0, %x6  #209 pc 24
	sub	%x8, %x0, %x7  #209 pc 28
	sub	%x7, %x7, %x8  #209 pc 32
	sub	%x6, %x6, %x7  #209 pc 36
	sub	%x7, %x0, %x6  #210 pc 40
	sub	%x6, %x6, %x7  #210 pc 44
	ret #pc 48
	nop #pc 52
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x6, %x0, 125  #0 pc 64
	sw	%x1, 0(%x2)  #211 pc 68
	addi	%x2, %x2, 4  #211 pc 72
	jal	%x1, x.179  #211 pc 76
	addi	%x2, %x2, -4  #211 pc 80
	lw	%x1, 0(%x2) #211 pc 84
	sub	%x7, %x0, %x6  #211 pc 88
	sub	%x6, %x6, %x7  #211 pc 92
	sw	%x1, 0(%x2)  #211 pc 96
	addi	%x2, %x2, 4  #211 pc 100
	jal	%x1, print_int.159  #211 pc 104
	addi	%x2, %x2, -4  #211 pc 108
	lw	%x1, 0(%x2) #211 pc 112
	addi	%x2, %x2, 112
