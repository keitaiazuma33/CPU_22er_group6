.section	".rodata"
.align	8
.section	".text"
f.9:  #pc:0
	addi	%x5, %x0, 123  #0 pc:4
	ret #pc:8
	nop #pc:12
g.11:  #pc:12
	addi	%x5, %x0, 456  #0 pc:16
	ret #pc:20
	nop #pc:24
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	mv	%x5, %g0 #pc:28
	sw	%x1, 12(%x2)  #4 pc:32
	addi	%x2, %x2, 16  #4 pc:36
	jal	%x1, f.9  #4 pc:40
	addi	%x2, %x2, -16  #4 pc:44
	lw	%x1, 12(%x2) #4 pc:48
	sw	%x5, 8(%x2)  #5 pc:52
	bge	%x0, %x5, 12  #5 pc:56
	j	ble_else.23 #pc:60
	nop #pc:64
	mv	%x5, %g0 #pc:68
	sw	%x1, 12(%x2)  #5 pc:72
	addi	%x2, %x2, 16  #5 pc:76
	jal	%x1, g.11  #5 pc:80
	addi	%x2, %x2, -16  #5 pc:84
	lw	%x1, 12(%x2) #5 pc:88
	lw	%x6, 8(%x2)  #5 pc:92
	add	%x5, %x5, %x6  #5 pc:96
	j	ble_cont.24 #pc:100
	nop #pc:104
ble_else.23: #pc:104
ble_cont.24: #pc:104
	lw	%x6, 8(%x2)  #5 pc:108
	add	%x5, %x5, %x6  #5 pc:112
	sw	%x1, 12(%x2)  #5 pc:116
	addi	%x2, %x2, 16  #5 pc:120
	jal	%x1, min_caml_print_int  #5 pc:124
	addi	%x2, %x2, -16  #5 pc:128
	lw	%x1, 12(%x2) #5 pc:132
	addi	%x2, %x2, 112
