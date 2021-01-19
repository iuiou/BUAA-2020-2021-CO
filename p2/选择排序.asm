.data
a:.space 100
kongge:.asciiz" "
.macro cin
li $v0 5
syscall
.end_macro

.macro cout
li $v0 1
syscall
.end_macro

.macro swap(%i,%j)
sll $t9 %i 2
sll $t8 %j 2
lw $t7 a($t9)
lw $t6 a($t8)
sw $t6 a($t9)
sw $t7 a($t8)
.end_macro

.macro return
li $v0 10
syscall
.end_macro

.text
    cin
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
pai_i:
    beq $t0 $s0 end_pai
    move $t1 $t0
    move $t5 $t1
    sll $t3 $t1 2
    lw $t2 a($t3)
for_j:
    beq $t1 $s0 end_j
    sll $t3 $t1 2
    lw $t4 a($t3)
    bge $t4 $t2 con
    move $t2 $t4
    move $t5 $t1
con:
    addi $t1 $t1 1
    j for_j
end_j:
    swap($t0,$t5)
    addi $t0 $t0 1
    j pai_i
end_pai:
    li $t0 0
out_i:
    beq $t0 $s0 end_out_i
    sll $t1 $t0 2
    lw $a0 a($t1)
    cout
    la $a0 kongge
    li $v0 4
    syscall
    addi $t0 $t0 1
    j out_i
end_out_i:
    return
    
    
    
    
