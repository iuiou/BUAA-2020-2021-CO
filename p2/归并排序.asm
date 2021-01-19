.data
a:.space 4000
bb:.space 4000
kongge:.asciiz" "

.macro cin
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

.macro mid(%i,%j,%ans)
add $t9 %i %j
li $t8 2
div $t9 $t8
mflo %ans
.end_macro

.text
    cin
    move $s0 $v0
    li $t0 1
for_i:
    bgt $t0 $s0 end_i
    cin
    sll $t1 $t0 2
    sw $v0 a($t1)
    addi $t0 $t0 1
    j for_i
end_i:
    li $t0 1
    move $t1 $s0
    move $s1 $sp
    jal merge
    li $t0 1
out_i:
    bgt $t0 $s0 end_out_i
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
merge:
    sw $ra 0($sp)
    subi $sp $sp 4
    beq $t0 $t1 hui_su
    mid($t0,$t1,$t2)
    addi $t3 $t2 1
    sw $t0 0($sp)
    subi $sp $sp 4
    sw $t1 0($sp)
    subi $sp $sp 4
    move $t1 $t2
    jal merge
    mid($t0,$t1,$t2)
    addi $t3 $t2 1
    sw $t0 0($sp)
    subi $sp $sp 4
    sw $t1 0($sp)
    subi $sp $sp 4
    move $t0 $t3
    jal merge
    mid($t0,$t1,$t2)
    move $s2 $t0
    move $s3 $t1
    move $t4 $t1   #t4:r
    addi $t1 $t2 1 #t1:q
    move $t3 $t0 #t3:s   t0:p    t2:mid
while:
    ble $t0 $t2 ok1
    j for_p
ok1: 
    ble $t1 $t4 ok2
    j for_p
ok2:
    sll $t5 $t0 2
    lw $t5 a($t5)
    sll $t6 $t1 2
    lw $t6 a($t6)
    ble $t5 $t6 p
    sll $t7 $t3 2
    sw $t6 bb($t7)
    addi $t1 $t1 1
    addi $t3 $t3 1
    j while
p:  
    sll $t7 $t3 2
    sw $t5 bb($t7)
    addi $t0 $t0 1
    addi $t3 $t3 1
    j while
for_p:
    bgt $t0 $t2 for_q
    sll $t5 $t0 2
    lw $t5 a($t5)
    sll $t7 $t3 2
    sw $t5 bb($t7)
    addi $t0 $t0 1
    addi $t3 $t3 1
    j for_p
for_q:
    bgt $t1 $t4 work
    sll $t6 $t1 2
    lw $t6 a($t6)
    sll $t7 $t3 2
    sw $t6 bb($t7)
    addi $t1 $t1 1
    addi $t3 $t3 1
    j for_q
work:
    move $t0 $s2
swap:
    bgt $t0 $s3 hui_su
    sll $t1 $t0 2
    lw $t2 bb($t1)
    sw $t2 a($t1)
    addi $t0 $t0 1
    j swap
hui_su:
    addi $sp $sp 4
    lw $ra 0($sp)
    beq $sp $s1 jump
    addi $sp $sp 4
    lw $t1 0($sp)
    addi $sp $sp 4
    lw $t0 0($sp)
jump:
    jr $31
    
    
    
     
        
    
