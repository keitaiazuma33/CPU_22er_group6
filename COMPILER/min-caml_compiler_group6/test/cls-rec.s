.section	".rodata"
.align	8
.section	".text"
print_int.158:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
f.179:  #pc 16
	lw	%x7, 4(%x29)  #0 pc 16
	beq	%x6, %x0, 12  #210 pc 20
	j	be_else.323 #pc 24
	nop #pc 28
	addi	%x6, %x0, 0  #0 pc 32
	ret #pc 36
	nop #pc 40
be_else.323: #pc 44
	addi	%x6, %x6, -1  #211 pc 44
	sw	%x7, 0(%x2)  #211 pc 48
	sw	%x1, 4(%x2)  #211 pc 52
	lw	%x30, 0(%x29)  #211 pc 56
	addi	%x2, %x2, 8  #211 pc 60
	jalr	%x1, %x30, 0  #211 pc 64
	addi	%x2, %x2, -8  #211 pc 68
	lw	%x1, 4(%x2)  #211 pc 72
	lw	%x7, 0(%x2)  #211 pc 76
	add	%x6, %x7, %x6  #211 pc 80
	ret #pc 84
	nop #pc 88
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x6, %x0, 10  #0 pc 100
	addi	%x29, %x3, 0  #209 pc 104
	addi	%x3, %x3, 8  #209 pc 108
	addi	%x31, %x0, 16  #209 f.179 pc 112
	addi	%x7, %x31, 0  #209 pc 116
	sw	%x7, 0(%x29)  #209 pc 120
	sw	%x6, 4(%x29)  #209 pc 124
	addi	%x6, %x0, 123  #0 pc 128
	sw	%x1, 0(%x2)  #212 pc 132
	lw	%x30, 0(%x29)  #212 pc 136
	addi	%x2, %x2, 4  #212 pc 140
	jalr	%x1, %x30, 0  #212 pc 144
	addi	%x2, %x2, -4  #212 pc 148
	lw	%x1, 0(%x2)  #212 pc 152
	sw	%x1, 0(%x2)  #212 pc 156
	addi	%x2, %x2, 4  #212 pc 160
	jal	%x1, print_int.158  #212 pc 164
	addi	%x2, %x2, -4  #212 pc 168
	lw	%x1, 0(%x2) #212 pc 172
	addi	%x2, %x2, 112
