.section	".rodata"
.align	8
.section	".text"
foo.12:  #pc 0
	sw	%x11, 0(%x2)  #2 pc 4
	sw	%x10, 4(%x2)  #2 pc 8
	sw	%x9, 8(%x2)  #2 pc 12
	sw	%x7, 12(%x2)  #2 pc 16
	sw	%x6, 16(%x2)  #2 pc 20
	sw	%x1, 20(%x2)  #2 pc 24
	addi	%x2, %x2, 24  #2 pc 28
	jal	%x1, min_caml_print_int  #2 pc 32
	addi	%x2, %x2, -24  #2 pc 36
	lw	%x1, 20(%x2) #2 pc 40
	lw	%x5, 16(%x2)  #3 pc 44
	sw	%x1, 20(%x2)  #3 pc 48
	addi	%x2, %x2, 24  #3 pc 52
	jal	%x1, min_caml_print_int  #3 pc 56
	addi	%x2, %x2, -24  #3 pc 60
	lw	%x1, 20(%x2) #3 pc 64
	lw	%x5, 12(%x2)  #4 pc 68
	sw	%x1, 20(%x2)  #4 pc 72
	addi	%x2, %x2, 24  #4 pc 76
	jal	%x1, min_caml_print_int  #4 pc 80
	addi	%x2, %x2, -24  #4 pc 84
	lw	%x1, 20(%x2) #4 pc 88
	lw	%x5, 8(%x2)  #5 pc 92
	sw	%x1, 20(%x2)  #5 pc 96
	addi	%x2, %x2, 24  #5 pc 100
	jal	%x1, min_caml_print_int  #5 pc 104
	addi	%x2, %x2, -24  #5 pc 108
	lw	%x1, 20(%x2) #5 pc 112
	lw	%x5, 4(%x2)  #6 pc 116
	sw	%x1, 20(%x2)  #6 pc 120
	addi	%x2, %x2, 24  #6 pc 124
	jal	%x1, min_caml_print_int  #6 pc 128
	addi	%x2, %x2, -24  #6 pc 132
	lw	%x1, 20(%x2) #6 pc 136
	lw	%x5, 0(%x2)  #7 pc 140
	j	min_caml_print_int  #7 pc 144
	nop #pc 148
bar.19:  #pc 148
	addi	%x23, %x11, 0  #0 pc 156
	addi	%x11, %x7, 0  #0 pc 164
	addi	%x7, %x9, 0  #0 pc 172
	addi	%x9, %x10, 0  #0 pc 180
	addi	%x10, %x23, 0  #0 pc 188
	addi	%x23, %x6, 0  #0 pc 196
	addi	%x6, %x5, 0  #0 pc 204
	addi	%x5, %x23, 0  #0 pc 212
	j	foo.12  #9 pc 216
	nop #pc 220
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 1  #0 pc 224
	addi	%x6, %x0, 2  #0 pc 228
	addi	%x7, %x0, 3  #0 pc 232
	addi	%x9, %x0, 4  #0 pc 236
	addi	%x10, %x0, 5  #0 pc 240
	addi	%x11, %x0, 6  #0 pc 244
	sw	%x1, 12(%x2)  #10 pc 248
	addi	%x2, %x2, 16  #10 pc 252
	jal	%x1, bar.19  #10 pc 256
	addi	%x2, %x2, -16  #10 pc 260
	lw	%x1, 12(%x2) #10 pc 264
	addi	%x2, %x2, 112
