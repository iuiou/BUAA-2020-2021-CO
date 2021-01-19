.data
a:.space 4000
puts:.asciiz"\n"
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

.macro get(%i,%j,%ans)
sll %ans %i 4
add %ans %ans %j
sll %ans %ans 2
.end_macro
.text
    cin
    move $s0 $v0
    cin
    move $s1 $v0
    li $t0 0
for_i:
    beq $t0 $s0 end_i
    li $t1 0
for_j:
    beq $t1 $s1 end_j
    get($t0,$t1,$t2)
    cin 
    sw $v0 a($t2)
    addi $t1 $t1 1
    j for_j
end_j:
    addi $t0 $t0 1
    j for_i
end_i:
    li $t0 0
out_i:
    beq $t0 $s1 end_out_i
    li $t1 0
out_j:
    beq $t1 $s0 end_out_j
    get($t1,$t0,$t2)
    lw $a0 a($t2)
    cout
    la $a0 kongge
    li $v0 4
    syscall
    addi $t1 $t1 1
    j out_j
end_out_j:
    la $a0 puts
    li $v0 4
    syscall
    addi $t0 $t0 1
    j out_i
end_out_i:
    return

