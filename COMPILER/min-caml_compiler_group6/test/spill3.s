.section	".rodata"
.align	8
.section	".text"
f.56:  #0
	addi	%x6, %x5, 1  #3
	addi	%x7, %x6, 1  #4
	addi	%x9, %x7, 1  #5
	addi	%x10, %x9, 1  #6
	addi	%x11, %x10, 1  #7
	addi	%x12, %x11, 1  #8
	addi	%x13, %x12, 1  #9
	addi	%x14, %x13, 1  #10
	addi	%x15, %x14, 1  #11
	addi	%x16, %x15, 1  #12
	addi	%x17, %x16, 1  #13
	addi	%x18, %x17, 1  #14
	addi	%x19, %x18, 1  #15
	addi	%x20, %x19, 1  #16
	addi	%x21, %x20, 1  #17
	addi	%x22, %x21, 1  #18
	addi	%x23, %x22, 1  #19
	sw	%x5, 0(%x2)  #20
	addi	%x5, %x23, 1  #20
	sw	%x5, 4(%x2)  #21
	add	%x5, %x5, %x6  #21
	sw	%x5, 8(%x2)  #22
	add	%x5, %x5, %x7  #22
	sw	%x5, 12(%x2)  #23
	add	%x5, %x5, %x9  #23
	sw	%x5, 16(%x2)  #24
	add	%x5, %x5, %x10  #24
	sw	%x5, 20(%x2)  #25
	add	%x5, %x5, %x11  #25
	sw	%x5, 24(%x2)  #26
	add	%x5, %x5, %x12  #26
	sw	%x5, 28(%x2)  #27
	add	%x5, %x5, %x13  #27
	sw	%x5, 32(%x2)  #28
	add	%x5, %x5, %x14  #28
	sw	%x5, 36(%x2)  #29
	add	%x5, %x5, %x15  #29
	sw	%x5, 40(%x2)  #30
	add	%x5, %x5, %x16  #30
	sw	%x5, 44(%x2)  #31
	add	%x5, %x5, %x17  #31
	sw	%x5, 48(%x2)  #32
	add	%x5, %x5, %x18  #32
	sw	%x5, 52(%x2)  #33
	add	%x5, %x5, %x19  #33
	sw	%x5, 56(%x2)  #34
	add	%x5, %x5, %x20  #34
	sw	%x5, 60(%x2)  #35
	add	%x5, %x5, %x21  #35
	sw	%x5, 64(%x2)  #36
	add	%x5, %x5, %x22  #36
	sw	%x5, 68(%x2)  #37
	add	%x5, %x5, %x23  #37
	sw	%x23, 72(%x2)  #38
	lw	%x23, 0(%x2)  #38
	add	%x23, %x5, %x23  #38
	add	%x6, %x6, %x7  #39
	add	%x6, %x6, %x9  #39
	add	%x6, %x6, %x10  #39
	add	%x6, %x6, %x11  #39
	add	%x6, %x6, %x12  #39
	add	%x6, %x6, %x13  #39
	add	%x6, %x6, %x14  #39
	add	%x6, %x6, %x15  #39
	add	%x6, %x6, %x16  #39
	add	%x6, %x6, %x17  #39
	add	%x6, %x6, %x18  #39
	add	%x6, %x6, %x19  #39
	add	%x6, %x6, %x20  #39
	add	%x6, %x6, %x21  #39
	add	%x6, %x6, %x22  #39
	lw	%x7, 72(%x2)  #39
	add	%x6, %x6, %x7  #39
	lw	%x7, 4(%x2)  #39
	add	%x6, %x6, %x7  #39
	lw	%x7, 8(%x2)  #39
	add	%x6, %x6, %x7  #39
	lw	%x7, 12(%x2)  #39
	add	%x6, %x6, %x7  #39
	lw	%x7, 16(%x2)  #39
	add	%x6, %x6, %x7  #39
	lw	%x7, 20(%x2)  #39
	add	%x6, %x6, %x7  #39
	lw	%x7, 24(%x2)  #39
	add	%x6, %x6, %x7  #39
	lw	%x7, 28(%x2)  #39
	add	%x6, %x6, %x7  #39
	lw	%x7, 32(%x2)  #39
	add	%x6, %x6, %x7  #39
	lw	%x7, 36(%x2)  #39
	add	%x6, %x6, %x7  #39
	lw	%x7, 40(%x2)  #39
	add	%x6, %x6, %x7  #39
	lw	%x7, 44(%x2)  #39
	add	%x6, %x6, %x7  #39
	lw	%x7, 48(%x2)  #39
	add	%x6, %x6, %x7  #39
	lw	%x7, 52(%x2)  #39
	add	%x6, %x6, %x7  #39
	lw	%x7, 56(%x2)  #39
	add	%x6, %x6, %x7  #39
	lw	%x7, 60(%x2)  #39
	add	%x6, %x6, %x7  #39
	lw	%x7, 64(%x2)  #39
	add	%x6, %x6, %x7  #39
	lw	%x7, 68(%x2)  #39
	add	%x6, %x6, %x7  #39
	add	%x5, %x6, %x5  #39
	add	%x5, %x5, %x23  #39
	lw	%x6, 0(%x2)  #39
	add	%x5, %x5, %x6  #39
	ret
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 0  #0
	sw	%x1, 12(%x2)  #43
	addi	%x2, %x2, 16  #43
	jal	%x1, f.56  #43
	addi	%x2, %x2, -16  #43
	lw	%x1, 12(%x2) #43
	sw	%x1, 12(%x2)  #43
	addi	%x2, %x2, 16  #43
	jal	%x1, min_caml_print_int  #43
	addi	%x2, %x2, -16  #43
	lw	%x1, 12(%x2) #43
	addi	%x2, %x2, 112
