.macro get(%i)
li $v0 5
syscall 
move %i $v0
.end_macro

.macro cout
li $v0 1
syscall 
.end_macro

.macro return
li $v0 10
syscall
.end_macro

.macro get_yu(%i,%j,%ans)
div %i %j 
mfhi %ans
.end_macro
 
.text
    get($a0)
    li $t0 2
for_i:
    beq $t0 $a0 end
    get_yu($a0,$t0,$t1)
    beq $t1 $0 no 
    addi $t0 $t0 1
    j for_i
end:
   li $a0 1
   cout
   return
no:
   li $a0 0
   cout
   return
    