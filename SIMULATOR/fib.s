fib.10:
	li a0, 1
	bge	a0, %x5, 12  #bge	1, %x5, 12  #2
	j	ble_else.24
	nop
	ret #ble_elseの続き
	nop
ble_else.24:   
	addi	%x6, %x5, -1  #3
	sw	%x5, 0(%x2)  #3
	mv	%x5, %x6
	sw	%x1, 4(%x2)  #3
	addi	%x2, %x2, 8	 #! delay slot  3
	jal	fib.10  #3#fib(n-1)
	addi	%x2, %x2, -8  #3 #ok
	lw	%x1, 4(%x2) #3
	lw	%x6, 0(%x2)  #3
	addi	%x6, %x6, -2  #3
	sw	%x5, 4(%x2)  #3
	mv	%x5, %x6
	sw	%x1, 12(%x2)  #3
	addi	%x2, %x2, 16	#! delay slot  3
	jal	fib.10  #3#fib(n-2)
	addi	%x2, %x2, -16  #3
	lw	%x1, 12(%x2) #3
	lw	%x6, 4(%x2)  #3
	add	%x5, %x6, %x5  #3#fib(n-1)+fib(n-2)
	ret #min_caml_start
	nop
min_caml_start:
	addi sp, sp, -112 #save	%sp, -112, %sp
	addi	%x5, %x0,10  #0
	sw	%x1, 4(%x2)  #4
	addi	%x2, %x2, 8	#! delay slot  4
	jal	fib.10  #4
	addi	%x2, %x2, -8  #4
	lw	%x1, 4(%x2) #4
	sw	%x1, 4(%x2)  #4 
*	addi	%x2, %x2, 8	#! delay slot  4 #jal	min_caml_print_int  #4
	addi	%x2, %x2, -8  #4
	lw	%x1, 4(%x2) #4 #ret
	addi sp, sp, 112 #restore
