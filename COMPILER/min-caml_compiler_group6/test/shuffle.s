.section	".rodata"
.align	8
.section	".text"
foo.12:  #pc 0
	sw	%x10, 0(%x2)  #2 pc 0
	sw	%x9, 4(%x2)  #2 pc 4
	sw	%x8, 8(%x2)  #2 pc 8
	sw	%x7, 12(%x2)  #2 pc 12
	sw	%x6, 16(%x2)  #2 pc 16
	sw	%x1, 20(%x2)  #2 pc 20
	addi	%x2, %x2, 24  #2 pc 24
	jal	%x1, min_caml_print_int  #2 pc 28
	addi	%x2, %x2, -24  #2 pc 32
	lw	%x1, 20(%x2) #2 pc 36
	lw	%x5, 16(%x2)  #3 pc 40
	sw	%x1, 20(%x2)  #3 pc 44
	addi	%x2, %x2, 24  #3 pc 48
	jal	%x1, min_caml_print_int  #3 pc 52
	addi	%x2, %x2, -24  #3 pc 56
	lw	%x1, 20(%x2) #3 pc 60
	lw	%x5, 12(%x2)  #4 pc 64
	sw	%x1, 20(%x2)  #4 pc 68
	addi	%x2, %x2, 24  #4 pc 72
	jal	%x1, min_caml_print_int  #4 pc 76
	addi	%x2, %x2, -24  #4 pc 80
	lw	%x1, 20(%x2) #4 pc 84
	lw	%x5, 8(%x2)  #5 pc 88
	sw	%x1, 20(%x2)  #5 pc 92
	addi	%x2, %x2, 24  #5 pc 96
	jal	%x1, min_caml_print_int  #5 pc 100
	addi	%x2, %x2, -24  #5 pc 104
	lw	%x1, 20(%x2) #5 pc 108
	lw	%x5, 4(%x2)  #6 pc 112
	sw	%x1, 20(%x2)  #6 pc 116
	addi	%x2, %x2, 24  #6 pc 120
	jal	%x1, min_caml_print_int  #6 pc 124
	addi	%x2, %x2, -24  #6 pc 128
	lw	%x1, 20(%x2) #6 pc 132
	lw	%x5, 0(%x2)  #7 pc 136
	j	min_caml_print_int  #7 pc 140
	nop #pc 144
bar.19:  #pc 148
	addi	%x30, %x10, 0  #0 pc 148
	addi	%x10, %x7, 0  #0 pc 152
	addi	%x7, %x8, 0  #0 pc 156
	addi	%x8, %x9, 0  #0 pc 160
	addi	%x9, %x30, 0  #0 pc 164
	addi	%x30, %x6, 0  #0 pc 168
	addi	%x6, %x5, 0  #0 pc 172
	addi	%x5, %x30, 0  #0 pc 176
	j	foo.12  #9 pc 180
	nop #pc 184
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x5, %x0, 1  #0 pc 196
	addi	%x6, %x0, 2  #0 pc 200
	addi	%x7, %x0, 3  #0 pc 204
	addi	%x8, %x0, 4  #0 pc 208
	addi	%x9, %x0, 5  #0 pc 212
	addi	%x10, %x0, 6  #0 pc 216
	sw	%x1, 0(%x2)  #10 pc 220
	addi	%x2, %x2, 4  #10 pc 224
	jal	%x1, bar.19  #10 pc 228
	addi	%x2, %x2, -4  #10 pc 232
	lw	%x1, 0(%x2) #10 pc 236
	addi	%x2, %x2, 112
