.section	".rodata"
.align	8
.section	".text"
ack.15:  #pc:0
	bge	%x0, %x5, 12  #2 pc:4
	j	ble_else.34 #pc:8
	nop #pc:12
	addi	%x5, %x6, 1  #2 pc:16
	ret #pc:20
	nop #pc:24
ble_else.34: #pc:24
	bge	%x0, %x6, 12  #3 pc:28
	j	ble_else.35 #pc:32
	nop #pc:36
	addi	%x5, %x5, -1  #3 pc:40
	addi	%x6, %x0, 1  #0 pc:44
	j	ack.15  #3 pc:48
	nop #pc:52
ble_else.35: #pc:52
	addi	%x7, %x5, -1  #4 pc:56
	addi	%x6, %x6, -1  #4 pc:60
	sw	%x7, 0(%x2)  #4 pc:64
	sw	%x1, 4(%x2)  #4 pc:68
	addi	%x2, %x2, 8  #4 pc:72
	jal	%x1, ack.15  #4 pc:76
	addi	%x2, %x2, -8  #4 pc:80
	lw	%x1, 4(%x2) #4 pc:84
	mv	%x6, %x5  #4 pc:88
	lw	%x5, 0(%x2)  #4 pc:92
	j	ack.15  #4 pc:96
	nop #pc:100
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 3  #0 pc:104
	addi	%x6, %x0, 10  #0 pc:108
	sw	%x1, 12(%x2)  #5 pc:112
	addi	%x2, %x2, 16  #5 pc:116
	jal	%x1, ack.15  #5 pc:120
	addi	%x2, %x2, -16  #5 pc:124
	lw	%x1, 12(%x2) #5 pc:128
	sw	%x1, 12(%x2)  #5 pc:132
	addi	%x2, %x2, 16  #5 pc:136
	jal	%x1, min_caml_print_int  #5 pc:140
	addi	%x2, %x2, -16  #5 pc:144
	lw	%x1, 12(%x2) #5 pc:148
	addi	%x2, %x2, 112
