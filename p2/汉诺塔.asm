.data
vis:.space 64

.macro cin(%i)
li $v0 5
syscall
move %i $v0
.end_macro

.macro cout()
li $v0 1
syscall
.end_macro

.macro get(%i,%j,%ans)
sll %ans %i 2
add %ans %ans %j
sll %ans %ans 2
.end_macro

.macro return
li $v0 10
syscall
.end_macro

.text
    cin($s0)
    move $t3 $s0
    move $s1 $sp
    li $t0 0
    li $t1 1
    li $t2 2
    jal hanoi
    li $t0 0
    li $t1 1
    li $t2 2
    get($t0,$t1,$t4)
    lw $a0 vis($t4)
    cout
    return
hanoi:
    sw $ra 0($sp)
    subi $sp $sp 4
    bne $t3 1 work
    get($t0,$t2,$t5)
    lw $t4 vis($t5)
    addi $t4 $t4 1
    sw $t4 vis($t5)
    j huisu
work:
    sw $t3 0($sp)
    subi $sp $sp 4
    sw $t0 0($sp)
    subi $sp $sp 4
    sw $t1 0($sp)
    subi $sp $sp 4
    sw $t2 0($sp)
    subi $sp $sp 4
    move $t4 $t1
    move $t1 $t2
    move $t2 $t4
    subi $t3 $t3 1
    jal hanoi
    get($t0,$t2,$t5)
    lw $t4 vis($t5)
    addi $t4 $t4 1
    sw $t4 vis($t5)
    sw $t3 0($sp)
    subi $sp $sp 4
    sw $t0 0($sp)
    subi $sp $sp 4
    sw $t1 0($sp)
    subi $sp $sp 4
    sw $t2 0($sp)
    subi $sp $sp 4
    move $t4 $t1
    move $t1 $t0
    move $t0 $t4
    subi $t3 $t3 1
    jal hanoi
huisu:
    addi $sp $sp 4
    lw $ra 0($sp)
    beq $sp $s1 jump
    addi $sp $sp 4
    lw $t2 0($sp)
    addi $sp $sp 4
    lw $t1 0($sp)
    addi $sp $sp 4
    lw $t0 0($sp)
    addi $sp $sp 4
    lw $t3 0($sp)
jump: 
    jr $ra

