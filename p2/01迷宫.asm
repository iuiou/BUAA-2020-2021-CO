.data
vis:.space 200
a:.space 200
dir:.space 32
.macro cin
li $v0 5
syscall
.end_macro
.macro cout
li $v0 1
syscall
.end_macro
.macro get(%i,%j,%ans)
sll %ans %i 3
add %ans %ans %j
sll %ans %ans 2
.end_macro
.macro return
li $v0 10
syscall
.end_macro
.text
    cin
    move $a1 $v0#a1和a2表示矩阵长宽
    cin
    move $a2 $v0
    move $a3 $sp
    li $s7 0
    li $t0 0
for_i:
    beq $t0 $a1 end_i
    li $t1 0
for_j:
    beq $t1 $a2 end_j
    cin
    get($t0,$t1,$t2)
    sw $v0 a($t2)
    addi $t1 $t1 1
    j for_j
end_j:
    addi $t0 $t0 1
    j for_i
end_i:
    cin
    subi $s0 $v0 1
    cin
    subi $s1 $v0 1
    cin
    subi $s2 $v0 1
    cin
    subi $s3 $v0 1
    get($s0,$s1,$t5)
    li $t6 1
    sw $t6 vis($t5)
    subi $t0 $0 1
    addi $t1 $0 1
    li $t2 0
    li $t3 0
    get($t2,$t3,$t4)
    sw $t0 dir($t4)
    addi $t3 $t3 1
    get($t2,$t3,$t4)
    sw $0 dir($t4)
    li $t2 1
    li $t3 0
    get($t2,$t3,$t4)
    sw $t1 dir($t4)
    addi $t3 $t3 1
    get($t2,$t3,$t4)
    sw $0 dir($t4)
    li $t2 2
    li $t3 0
    get($t2,$t3,$t4)
    sw $0 dir($t4)
    addi $t3 $t3 1
    get($t2,$t3,$t4)
    sw $t1 dir($t4)
    li $t2 3
    li $t3 0
    get($t2,$t3,$t4)
    sw $0 dir($t4)
    addi $t3 $t3 1
    get($t2,$t3,$t4)
    sw $t0 dir($t4)
    ##################上面全是初始化
    move $t0 $s0
    move $t1 $s1##当前点
    li $t2 0#默认方向
    jal dfs
    move $a0 $s7
    cout
    return
dfs:
    sw $ra 0($sp)
    subi $sp $sp 4
    get($t0,$t1,$t3)
    get($s2,$s3,$t4)
    beq $t3 $t4 ok 
after:
    beq $t2 4 hui_su
    li $t4 1
    get($t2,$0,$t5)
    get($t2,$t4,$t6)
    lw $t3 dir($t5)
    lw $t4 dir($t6)
    add $t3 $t3 $t0
    add $t4 $t4 $t1
    bgt $0 $t3 continue
    bge $t3 $a1 continue
    bgt $0 $t4 continue
    bge $t4 $a2 continue
    get($t3,$t4,$t5)
    lw $t6 a($t5)
    beq $t6 1 continue
    lw $t6 vis($t5)
    beq $t6 1 continue
    j con
continue:
    addi $t2 $t2 1
    j after
con:
    li $t6 1
    get($t3,$t4,$t5)
    sw $t6 vis($t5)
    sw $t0 0($sp)#先存从哪来
    subi $sp $sp 4
    sw $t1 0($sp)
    subi $sp $sp 4
    sw $t3 0($sp)#再存到哪去
    subi $sp $sp 4
    sw $t4 0($sp)
    subi $sp $sp 4
    sw $t2 0($sp)#最后存方向
    subi $sp $sp 4
    li $t2 0
    move $t0 $t3
    move $t1 $t4
    jal dfs
    get($t3,$t4,$t5)
    sw $0 vis($t5)
    j continue
ok: 
    addi $s7 $s7 1
    j hui_su
hui_su:
    addi $sp $sp 4
    lw $ra 0($sp)
    beq $sp $a3 jump
    addi $sp $sp 4
    lw $t2 0($sp)
    addi $sp $sp 4
    lw $t4 0($sp)
    addi $sp $sp 4
    lw $t3 0($sp)
    addi $sp $sp 4
    lw $t1 0($sp)
    addi $sp $sp 4
    lw $t0 0($sp)
jump:
    jr $31
    
    
    
    
