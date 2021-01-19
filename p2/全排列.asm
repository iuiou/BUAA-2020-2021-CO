.data
a:.space 56
vis:.space 56
puts:.asciiz"\n"
blank:.asciiz" "
.macro cin
li $v0 5
syscall
.end_macro
.macro cout
li $v0 1
syscall
.end_macro
.macro cout_string
li $v0 4
syscall
.end_macro
.macro save(%i,%j)
sll $t7 %i 2
sw %j a($t7)
.end_macro
.macro return
li $v0 10
syscall
.end_macro
.text
cin
move $s0 $v0
move $a1 $sp
li $t1 0#t1表示已经dfs到了几个数
li $t0 1
jal dfs
return
dfs:
   sw $ra 0($sp)
   subi $sp $sp 4 
   beq $t1 $s0 out
after:
   bgt $t0 $s0 hui_su
   sll $t2 $t0 2
   lw $t3 vis($t2)
   bne $t3 1 con
continue:
   addi $t0 $t0 1
   j after
con:
   addi $t1 $t1 1
   save($t1,$t0)
   sll $t2 $t0 2
   li $t3 1
   sw $t3 vis($t2)
   sw $t0 0($sp)
   subi $sp $sp 4
   li $t0 1
   jal dfs
   subi $t1 $t1 1
   sll $t2 $t0 2
   sw $0 vis($t2)
   j continue
out:
   li $t5 1
for_i:
   bgt $t5 $s0 end_i 
   sll $t6 $t5 2
   lw $a0 a($t6)
   cout
   la $a0 blank
   cout_string
   addi $t5 $t5 1
   j for_i
end_i:
   la $a0 puts
   cout_string
hui_su:
   addi $sp $sp 4
   lw $ra 0($sp)
   beq $sp $a1 jump
   addi $sp $sp 4
   lw $t0 0($sp)
jump:
   jr $31
   
   
   
   
   
   



