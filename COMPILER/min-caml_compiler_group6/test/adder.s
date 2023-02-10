.section	".rodata"
.align	8
.section	".text"
adder.11:  #pc:0
	lw	%x6, 4(%x22)  #2 pc:4
	add	%x5, %x6, %x5  #2 pc:8
	ret #pc:12
	nop #pc:16
make_adder.5:  #pc:16
	mv	%x6, %x3  #2 pc:20
	addi	%x3, %x3, 8  #2 pc:24
	addi	%x24, %x0, 0  #2 adder.11 pc:28
	mv	%x7, %x24  #2 pc:32
	sw	%x7, 0(%x6)  #2 pc:36
	sw	%x5, 4(%x6)  #2 pc:40
	mv	%x5, %x6  #3 pc:44
	ret #pc:48
	nop #pc:52
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 3  #0 pc:56
	sw	%x1, 12(%x2)  #4 pc:60
	addi	%x2, %x2, 16  #4 pc:64
	jal	%x1, make_adder.5  #4 pc:68
	addi	%x2, %x2, -16  #4 pc:72
	lw	%x1, 12(%x2) #4 pc:76
	mv	%x22, %x5  #4 pc:80
	addi	%x5, %x0, 7  #0 pc:84
	sw	%x1, 12(%x2)  #4 pc:88
	lw	%x23, 0(%x22)  #4 pc:92
	addi	%x2, %x2, 16  #4 pc:96
	jalr	%x1, %x23, 0  #4 pc:100
	addi	%x2, %x2, -16  #4 pc:104
	lw	%x1, 12(%x2)  #4 pc:108
	sw	%x1, 12(%x2)  #4 pc:112
	addi	%x2, %x2, 16  #4 pc:116
	jal	%x1, min_caml_print_int  #4 pc:120
	addi	%x2, %x2, -16  #4 pc:124
	lw	%x1, 12(%x2) #4 pc:128
	addi	%x2, %x2, 112
