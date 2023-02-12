.section	".rodata"
.align	8
.section	".text"
print_int.157:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
f.177:  #pc 16
	addi	%x6, %x6, 123  #209 pc 16
	ret #pc 20
	nop #pc 24
g.179:  #pc 28
	lw	%x6, 4(%x29)  #210 pc 28
	ret #pc 32
	nop #pc 36
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x6, %x3, 0  #209 pc 48
	addi	%x3, %x3, 4  #209 pc 52
	addi	%x31, %x0, 16  #209 f.177 pc 56
	addi	%x7, %x31, 0  #209 pc 60
	sw	%x7, 0(%x6)  #209 pc 64
	addi	%x29, %x3, 0  #210 pc 68
	addi	%x3, %x3, 8  #210 pc 72
	addi	%x31, %x0, 28  #210 g.179 pc 76
	addi	%x7, %x31, 0  #210 pc 80
	sw	%x7, 0(%x29)  #210 pc 84
	sw	%x6, 4(%x29)  #210 pc 88
	addi	%x6, %x0, 456  #0 pc 92
	sw	%x1, 0(%x2)  #211 pc 96
	lw	%x30, 0(%x29)  #211 pc 100
	addi	%x2, %x2, 4  #211 pc 104
	jalr	%x1, %x30, 0  #211 pc 108
	addi	%x2, %x2, -4  #211 pc 112
	lw	%x1, 0(%x2)  #211 pc 116
	addi	%x29, %x6, 0  #211 pc 120
	addi	%x6, %x0, 789  #0 pc 124
	sw	%x1, 0(%x2)  #211 pc 128
	lw	%x30, 0(%x29)  #211 pc 132
	addi	%x2, %x2, 4  #211 pc 136
	jalr	%x1, %x30, 0  #211 pc 140
	addi	%x2, %x2, -4  #211 pc 144
	lw	%x1, 0(%x2)  #211 pc 148
	sw	%x1, 0(%x2)  #211 pc 152
	addi	%x2, %x2, 4  #211 pc 156
	jal	%x1, print_int.157  #211 pc 160
	addi	%x2, %x2, -4  #211 pc 164
	lw	%x1, 0(%x2) #211 pc 168
	addi	%x2, %x2, 112
