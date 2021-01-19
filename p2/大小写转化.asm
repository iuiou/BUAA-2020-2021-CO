.data
s:.space 400 

.macro cind
li $v0 5
syscall
.end_macro

.macro cin
li $v0 12
syscall
.end_macro

.macro cout
li $v0 11
syscall
.end_macro

.macro return
li $v0 10
syscall
.end_macro

.text
    cind
    move $s0 $v0
    li $t0 0
for_i:
    beq $t0 $s0 end_i
    cin
    sll $t1 $t0 2
    sw $v0 s($t1)
    addi $t0 $t0 1
    j for_i
end_i:
    li $t0 0
out_i:
    beq $t0 $s0 end_out_i
    sll $t1 $t0 2
    lw $t2 s($t1)
    bgt $t2 90 con
    addi $t2 $t2 32
con:
    move $a0 $t2
    cout
    addi $t0 $t0 1
    j out_i
end_out_i:
    return
     
    
    