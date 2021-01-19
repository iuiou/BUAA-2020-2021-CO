.data 
a:.space 1024
bb:.space 1024
ans:.space 1024
blank:.asciiz" "
puts:.asciiz"\n"

.macro get(%i,%j,%ans)
sll %ans %i 4
add %ans %ans %j
sll %ans %ans 2
.end_macro

.macro cin(%i)
li $v0 5
syscall
move %i $v0
.end_macro

.macro cout(%i)
move $a0 %i
li $v0 1
syscall
.end_macro

.macro return
li $v0 10
syscall
.end_macro

.macro get_mul(%i,%j)
mult %i %j
mflo %i
.end_macro

.macro cout_string
li $v0 4
syscall
.end_macro
.text
    cin($s0)
    cin($s1)
    cin($s2)
    cin($s3)
    li $t0 0
for_i:
    beq $t0 $s0 end_i
    li $t1 0
for_j:
    beq $t1 $s1 end_j
    cin($t2)
    get($t0,$t1,$t3)
    sw $t2 a($t3)
    addi $t1 $t1 1
    j for_j
end_j:
    addi $t0 $t0 1
    j for_i
end_i:
     li $t0 0
for_i_2:
    beq $t0 $s2 end_i_2
    li $t1 0
for_j_2:
    beq $t1 $s3 end_j_2
    cin($t2)
    get($t0,$t1,$t3)
    sw $t2 bb($t3)
    addi $t1 $t1 1
    j for_j_2
end_j_2:
    addi $t0 $t0 1
    j for_i_2
end_i_2:
    sub $s4 $s0 $s2
    sub $s5 $s1 $s3
    li $t0 0
cal_i:
    bgt $t0 $s4 cend_i
    li $t1 0
cal_j:
    bgt $t1 $s5 cend_j
    li $t2 0
    li $t7 0#存放每次计算出来的和
cal_i_2:
    beq $t2 $s2 cend_i_2
    li $t3 0
cal_j_2:
    beq $t3 $s3 cend_j_2
    get($t2,$t3,$t4)
    lw $t4 bb($t4)
    add $a1 $t2 $t0
    add $a2 $t3 $t1
    get($a1,$a2,$t6)
    lw $t6 a($t6)
    get_mul($t4,$t6)
    add $t7 $t7 $t4
    addi $t3 $t3 1
    j cal_j_2
cend_j_2:
    addi $t2 $t2 1
    j cal_i_2
cend_i_2:
    get($t0,$t1,$t5)
    sw $t7 ans($t5)
    addi $t1 $t1 1
    j cal_j
cend_j:
    addi $t0 $t0 1
    j cal_i
cend_i:
    li $t0 0
out_i:
    bgt $t0 $s4 end_out_i
    li $t1 0
out_j:
    bgt $t1 $s5 end_out_j
    get($t0,$t1,$t2)
    lw $t3 ans($t2)
    cout($t3)
    la $a0 blank
    cout_string
    addi $t1 $t1 1
    j out_j
end_out_j:
    la $a0 puts
    cout_string
    addi $t0 $t0 1
    j out_i
end_out_i:
    return
    
