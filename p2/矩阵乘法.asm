.data 
a:.space 256
bb:.space 256
ans:.space 256
puts:.asciiz "\n"
blank:.asciiz " "
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
.macro return
li $v0 10
syscall
.end_macro
.macro get(%i,%j,%ans)
sll %ans %i 3
add %ans %ans %j
sll %ans %ans 2
.end_macro
.macro cal(%i,%j,%ans)
mult %i %j
mflo %ans
.end_macro
.text
     cin
     move $s0 $v0
     li $t0 0
     li $t5 0
fori:beq $t0 $s0 end_i
     li $t1 0
forj:beq $t1 $s0 end_j
     cin
     get($t0,$t1,$t2)
     beq $t5 0 cin_a
     sw $v0 bb($t2)
     j con
cin_a:sw $v0 a($t2)
con:  addi $t1 $t1 1
      j forj
end_j:addi $t0 $t0 1
      j fori
end_i:beq $t5 1 continue
      addi $t5 $t5 1
      li $t0 0
      j fori
continue:
      li $t0 0
cfori:beq $t0 $s0 cend_i
      li $t1 0
cforj:beq $t1 $s0 cend_j
      li $t2 0
      li $t3 0 #乘法的循环变量
      get($t0,$t1,$t7)
cforz:beq $t3 $s0 cend_z
      get($t0,$t3,$t4)
      get($t3,$t1,$t5)
      lw $s1 a($t4)
      lw $s2 bb($t5)
      cal($s1,$s2,$t6)
      add $t2 $t2 $t6
      addi $t3 $t3 1
      j cforz
cend_z:sw $t2 ans($t7)
      addi $t1 $t1 1
      j cforj
cend_j:
      addi $t0 $t0 1
      j cfori
cend_i:
      li $t0 0
out_i:beq $t0 $s0 oend_i
      li $t1 0
out_j:beq $t1 $s0 oend_j
      get($t0,$t1,$t2)
      lw $a0 ans($t2)
      cout
      la $a0 blank
      cout_string
      addi $t1 $t1 1
      j out_j
oend_j:
      la $a0 puts
      cout_string
      addi $t0 $t0 1
      j out_i
oend_i:
      return
      
      
      
 
      
