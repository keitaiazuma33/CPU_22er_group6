.section	".rodata"
.align	8
.section	".text"
foo.12:  #pc:0
	sw	%x11, 0(%x2)  #2 pc:4
	sw	%x10, 4(%x2)  #2 pc:8
	sw	%x9, 8(%x2)  #2 pc:12
	sw	%x7, 12(%x2)  #2 pc:16
	sw	%x6, 16(%x2)  #2 pc:20
	sw	%x1, 20(%x2)  #2 pc:24
	addi	%x2, %x2, 24  #2 pc:28
	jal	%x1, min_caml_print_int  #2 pc:32
	addi	%x2, %x2, -24  #2 pc:36
	lw	%x1, 20(%x2) #2 pc:40
	lw	%x5, 16(%x2)  #3 pc:44
	sw	%x1, 20(%x2)  #3 pc:48
	addi	%x2, %x2, 24  #3 pc:52
	jal	%x1, min_caml_print_int  #3 pc:56
	addi	%x2, %x2, -24  #3 pc:60
	lw	%x1, 20(%x2) #3 pc:64
	lw	%x5, 12(%x2)  #4 pc:68
	sw	%x1, 20(%x2)  #4 pc:72
	addi	%x2, %x2, 24  #4 pc:76
	jal	%x1, min_caml_print_int  #4 pc:80
	addi	%x2, %x2, -24  #4 pc:84
	lw	%x1, 20(%x2) #4 pc:88
	lw	%x5, 8(%x2)  #5 pc:92
	sw	%x1, 20(%x2)  #5 pc:96
	addi	%x2, %x2, 24  #5 pc:100
	jal	%x1, min_caml_print_int  #5 pc:104
	addi	%x2, %x2, -24  #5 pc:108
	lw	%x1, 20(%x2) #5 pc:112
	lw	%x5, 4(%x2)  #6 pc:116
	sw	%x1, 20(%x2)  #6 pc:120
	addi	%x2, %x2, 24  #6 pc:124
	jal	%x1, min_caml_print_int  #6 pc:128
	addi	%x2, %x2, -24  #6 pc:132
	lw	%x1, 20(%x2) #6 pc:136
	lw	%x5, 0(%x2)  #7 pc:140
	j	min_caml_print_int  #7 pc:144
	nop #pc:148
bar.19:  #pc:148
	mv	%x23, %x11 #pc:152
	mv	%x11, %x7 #pc:156
	mv	%x7, %x9 #pc:160
	mv	%x9, %x10 #pc:164
	mv	%x10, %x23 #pc:168
	mv	%x23, %x6 #pc:172
	mv	%x6, %x5 #pc:176
	mv	%x5, %x23 #pc:180
	j	foo.12  #9 pc:184
	nop #pc:188
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 1  #0 pc:192
	addi	%x6, %x0, 2  #0 pc:196
	addi	%x7, %x0, 3  #0 pc:200
	addi	%x9, %x0, 4  #0 pc:204
	addi	%x10, %x0, 5  #0 pc:208
	addi	%x11, %x0, 6  #0 pc:212
	sw	%x1, 12(%x2)  #10 pc:216
	addi	%x2, %x2, 16  #10 pc:220
	jal	%x1, bar.19  #10 pc:224
	addi	%x2, %x2, -16  #10 pc:228
	lw	%x1, 12(%x2) #10 pc:232
	addi	%x2, %x2, 112
