.data 
a:.space 100
.macro cin
li $v0 12
syscall
.end_macro
.macro cin_
li $v0 5
syscall
.end_macro
.macro cout
li $v0 1
syscall
.end_macro
.macro return
li $v0 10
syscall
.end_macro
.text
    cin_
    move $s0 $v0
    li $t0 0
for_i:
    beq $t0 $s0 end_i
    cin
    sll $t1 $t0 2
    sw $v0 a($t1)
    addi $t0 $t0 1
    j for_i
end_i:
    li $t0 0
    subi $t1 $s0 1
judge:
    bge $t0 $t1 end_judge
    sll $t2 $t0 2
    lw $t4 a($t2)
    sll $t3 $t1 2
    lw $t5 a($t3)
    beq $t4 $t5 con
    li $a0 0
    cout
    return
con:
    addi $t0 $t0 1
    subi $t1 $t1 1
    j judge
end_judge:
    li $a0 1
    cout 
    return
    
    
