.section	".rodata"
.align	8
.section	".text"
print_int.153:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x6, %x0, 6  #0 pc 24
	sw	%x1, 0(%x2)  #212 pc 28
	addi	%x2, %x2, 4  #212 pc 32
	jal	%x1, print_int.153  #212 pc 36
	addi	%x2, %x2, -4  #212 pc 40
	lw	%x1, 0(%x2) #212 pc 44
	addi	%x2, %x2, 112
