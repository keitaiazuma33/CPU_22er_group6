.section	".rodata"
.align	8
.section	".text"
sum.7:  #pc:0
	bge	%x0, %x5, 12  #2 pc:4
	j	ble_else.17 #pc:8
	nop #pc:12
	addi	%x5, %x0, 0  #0 pc:16
	ret #pc:20
	nop #pc:24
ble_else.17: #pc:24
	addi	%x6, %x5, -1  #3 pc:28
	sw	%x5, 0(%x2)  #3 pc:32
	mv	%x5, %x6 #pc:36
	sw	%x1, 4(%x2)  #3 pc:40
	addi	%x2, %x2, 8  #3 pc:44
	jal	%x1, sum.7  #3 pc:48
	addi	%x2, %x2, -8  #3 pc:52
	lw	%x1, 4(%x2) #3 pc:56
	lw	%x6, 0(%x2)  #3 pc:60
	add	%x5, %x5, %x6  #3 pc:64
	ret #pc:68
	nop #pc:72
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 10000  #0 pc:76
	sw	%x1, 12(%x2)  #4 pc:80
	addi	%x2, %x2, 16  #4 pc:84
	jal	%x1, sum.7  #4 pc:88
	addi	%x2, %x2, -16  #4 pc:92
	lw	%x1, 12(%x2) #4 pc:96
	sw	%x1, 12(%x2)  #4 pc:100
	addi	%x2, %x2, 16  #4 pc:104
	jal	%x1, min_caml_print_int  #4 pc:108
	addi	%x2, %x2, -16  #4 pc:112
	lw	%x1, 12(%x2) #4 pc:116
	addi	%x2, %x2, 112
