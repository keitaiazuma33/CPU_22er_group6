.section	".rodata"
.align	8
.section	".text"
print_int.160:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x6, %x0, 123  #0 pc 24
	sw	%x1, 0(%x2)  #207 pc 28
	addi	%x2, %x2, 4  #207 pc 32
	jal	%x1, print_int.160  #207 pc 36
	addi	%x2, %x2, -4  #207 pc 40
	lw	%x1, 0(%x2) #207 pc 44
	addi	%x6, %x0, -456  #0 pc 48
	sw	%x1, 0(%x2)  #208 pc 52
	addi	%x2, %x2, 4  #208 pc 56
	jal	%x1, print_int.160  #208 pc 60
	addi	%x2, %x2, -4  #208 pc 64
	lw	%x1, 0(%x2) #208 pc 68
	addi	%x6, %x0, 789  #0 pc 72
	sw	%x1, 0(%x2)  #209 pc 76
	addi	%x2, %x2, 4  #209 pc 80
	jal	%x1, print_int.160  #209 pc 84
	addi	%x2, %x2, -4  #209 pc 88
	lw	%x1, 0(%x2) #209 pc 92
	addi	%x2, %x2, 112
