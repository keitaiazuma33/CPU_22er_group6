.section	".rodata"
.align	8
.section	".text"
composed.22:  #pc:0
	lw	%x6, 8(%x22)  #0 pc:4
	lw	%x22, 4(%x22)  #0 pc:8
	sw	%x6, 0(%x2)  #2 pc:12
	sw	%x1, 4(%x2)  #2 pc:16
	lw	%x23, 0(%x22)  #2 pc:20
	addi	%x2, %x2, 8  #2 pc:24
	jalr	%x1, %x23, 0  #2 pc:28
	addi	%x2, %x2, -8  #2 pc:32
	lw	%x1, 4(%x2)  #2 pc:36
	lw	%x22, 0(%x2)  #2 pc:40
	lw	0(%x23), %x22  #2 pc:44
	jalr	%x0, %x23, 0  #2 pc:48
	nop #pc:52
compose.7:  #pc:52
	mv	%x7, %x3  #2 pc:56
	addi	%x3, %x3, 16  #2 pc:60
	addi	%x24, %x0, 0  #2 composed.22 pc:64
	mv	%x9, %x24  #2 pc:68
	sw	%x9, 0(%x7)  #2 pc:72
	sw	%x6, 8(%x7)  #2 pc:76
	sw	%x5, 4(%x7)  #2 pc:80
	mv	%x5, %x7  #3 pc:84
	ret #pc:88
	nop #pc:92
dbl.10:  #pc:92
	add	%x5, %x5, %x5  #4 pc:96
	ret #pc:100
	nop #pc:104
inc.12:  #pc:104
	addi	%x5, %x5, 1  #5 pc:108
	ret #pc:112
	nop #pc:116
dec.14:  #pc:116
	addi	%x5, %x5, -1  #6 pc:120
	ret #pc:124
	nop #pc:128
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	mv	%x5, %x3  #4 pc:132
	addi	%x3, %x3, 8  #4 pc:136
	addi	%x24, %x0, 92  #4 dbl.10 pc:140
	mv	%x6, %x24  #4 pc:144
	sw	%x6, 0(%x5)  #4 pc:148
	mv	%x6, %x3  #5 pc:152
	addi	%x3, %x3, 8  #5 pc:156
	addi	%x24, %x0, 104  #5 inc.12 pc:160
	mv	%x7, %x24  #5 pc:164
	sw	%x7, 0(%x6)  #5 pc:168
	mv	%x7, %x3  #6 pc:172
	addi	%x3, %x3, 8  #6 pc:176
	addi	%x24, %x0, 116  #6 dec.14 pc:180
	mv	%x9, %x24  #6 pc:184
	sw	%x9, 0(%x7)  #6 pc:188
	sw	%x6, 8(%x2)  #7 pc:192
	mv	%x6, %x7 #pc:196
	sw	%x1, 12(%x2)  #7 pc:200
	addi	%x2, %x2, 16  #7 pc:204
	jal	%x1, compose.7  #7 pc:208
	addi	%x2, %x2, -16  #7 pc:212
	lw	%x1, 12(%x2) #7 pc:216
	mv	%x6, %x5  #7 pc:220
	lw	%x5, 8(%x2)  #7 pc:224
	sw	%x1, 12(%x2)  #7 pc:228
	addi	%x2, %x2, 16  #7 pc:232
	jal	%x1, compose.7  #7 pc:236
	addi	%x2, %x2, -16  #7 pc:240
	lw	%x1, 12(%x2) #7 pc:244
	mv	%x22, %x5  #7 pc:248
	addi	%x5, %x0, 123  #0 pc:252
	sw	%x1, 12(%x2)  #8 pc:256
	lw	%x23, 0(%x22)  #8 pc:260
	addi	%x2, %x2, 16  #8 pc:264
	jalr	%x1, %x23, 0  #8 pc:268
	addi	%x2, %x2, -16  #8 pc:272
	lw	%x1, 12(%x2)  #8 pc:276
	sw	%x1, 12(%x2)  #8 pc:280
	addi	%x2, %x2, 16  #8 pc:284
	jal	%x1, min_caml_print_int  #8 pc:288
	addi	%x2, %x2, -16  #8 pc:292
	lw	%x1, 12(%x2) #8 pc:296
	addi	%x2, %x2, 112
