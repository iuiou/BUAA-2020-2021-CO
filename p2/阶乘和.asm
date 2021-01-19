.macro cin
li $v0 5
syscall
.end_macro

.macro cout
li $v0 1
syscall
.end_macro

.macro get(%i,%j,%ans)
mult %i %j
mflo %ans
.end_macro

.text
    cin
    move $s0 $v0
    li $t0 1
    li $t1 1
    li $s1 0
for_i:
    bgt $t0 $s0 end_i
    get($t1,$t0,$t1)
    add $s1 $s1 $t1
    addi $t0 $t0 1
    j for_i
end_i:
    move $a0 $s1
    cout