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
	addi	%x2, %x0, 1000000
	addi	%x3, %x0, 1002000
	addi	%x4, %x0, 8192
	addi	%x5, %x0, 65536
	addi	%x6, %x3, 0  #209 pc 56
	addi	%x3, %x3, 4  #209 pc 60
	addi	%x31, %x0, 16  #209 f.177 pc 64
	addi	%x7, %x31, 0  #209 pc 68
	sw	%x7, 0(%x6)  #209 pc 72
	addi	%x29, %x3, 0  #210 pc 76
	addi	%x3, %x3, 8  #210 pc 80
	addi	%x31, %x0, 28  #210 g.179 pc 84
	addi	%x7, %x31, 0  #210 pc 88
	sw	%x7, 0(%x29)  #210 pc 92
	sw	%x6, 4(%x29)  #210 pc 96
	addi	%x6, %x0, 456  #0 pc 100
	sw	%x1, 0(%x2)  #211 pc 104
	lw	%x30, 0(%x29)  #211 pc 108
	addi	%x2, %x2, 4  #211 pc 112
	jalr	%x1, %x30, 0  #211 pc 116
	addi	%x2, %x2, -4  #211 pc 120
	lw	%x1, 0(%x2)  #211 pc 124
	addi	%x29, %x6, 0  #211 pc 128
	addi	%x6, %x0, 789  #0 pc 132
	sw	%x1, 0(%x2)  #211 pc 136
	lw	%x30, 0(%x29)  #211 pc 140
	addi	%x2, %x2, 4  #211 pc 144
	jalr	%x1, %x30, 0  #211 pc 148
	addi	%x2, %x2, -4  #211 pc 152
	lw	%x1, 0(%x2)  #211 pc 156
	sw	%x1, 0(%x2)  #211 pc 160
	addi	%x2, %x2, 4  #211 pc 164
	jal	%x1, print_int.157  #211 pc 168
	addi	%x2, %x2, -4  #211 pc 172
	lw	%x1, 0(%x2) #211 pc 176
