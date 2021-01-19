ori $28, $0, 0
ori $29, $0, 0
ori $28, $28, 50668
mult $4, $28
ori $27, $28, 12184
mthi $27
addu $4, $28, $27
ori $27, $0, 0
lh $4, 8($27)
sra $27, $27, 24
jal label1
ori $27, $0, 16
sub $4, $28, $28
label1: addu $27, $27, $31
jalr $27, $27
nop
ori $4, $4, 1
divu $4, $4
srl $28, $27, 13
sltiu $27, $27, -18425
ori $4, $0, 0
lh $4, 0($4)
andi $4, $4, 56015
addiu $28, $27, -12629
addu $28, $28, $28
j label2
srlv $28, $4, $27
mthi $28
label2: ori $27, $27, 1
div $4, $27
slti $27, $27, 18416
addu $28, $27, $27
ori $4, $0, 0
lh $27, 14($4)
mflo $27
ori $27, $0, 0
lbu $4, 6($27)
add $28, $0, $27
addiu $28, $4, 27565
jal label3
ori $27, $0, 16
mflo $4
label3: addu $27, $27, $31
jr $27
nop
addiu $28, $4, -18129
ori $4, $0, 0
lhu $27, 10($4)
ori $28, $0, 0
lw $4, 8($28)
ori $27, $0, 0
lh $4, 14($27)
and $27, $27, $27
j label4
mult $28, $28
subu $28, $27, $28
label4: mtlo $28
slti $4, $4, 20244
addi $28, $28, 0
andi $4, $4, 35661
xori $27, $28, 505
nor $27, $28, $4
sub $27, $4, $4
and $27, $28, $27
sra $4, $4, 22
mthi $28
multu $27, $28
sra $4, $28, 18
ori $27, $0, 0
lhu $4, 0($27)
blez $4, label5
and $28, $4, $4
mtlo $27
label5: mult $28, $28
ori $4, $0, 0
lbu $4, 9($4)
xori $28, $28, 56941
addi $27, $28, 0
blez $27, label6
mflo $4
addiu $4, $27, 6243
label6: xor $4, $28, $27
ori $28, $0, 0
sb $28, 6($28)
bgtz $28, label7
or $28, $27, $4
srlv $27, $4, $28
label7: andi $4, $4, 20558
slt $27, $27, $27
mflo $28
slti $4, $28, -11310
bgez $28, label8
ori $27, $0, 0
lb $28, 12($27)
srl $28, $28, 10
label8: addi $27, $28, 0
ori $4, $0, 0
lhu $28, 0($4)
sltu $28, $27, $4
nor $28, $28, $28
slt $28, $4, $28
and $4, $4, $28
sll $27, $28, 14
nor $4, $28, $27
subu $28, $28, $27
or $27, $4, $28
xor $28, $4, $4
srl $28, $28, 25
sltu $27, $27, $28
mthi $28
ori $27, $27, 1
div $4, $27
sra $27, $4, 10
sltiu $27, $4, 10516
nor $27, $28, $28
srl $4, $27, 5
andi $4, $28, 27259
ori $4, $0, 0
lb $28, 14($4)
ori $27, $27, 1
divu $27, $27
jal label9
ori $4, $0, 16
mflo $4
label9: addu $4, $4, $31
jalr $28, $4
nop
sll $4, $27, 9
jal label10
ori $28, $0, 16
xori $27, $28, 9058
label10: addu $28, $28, $31
jr $28
nop
sltiu $28, $4, 5001
jal label11
ori $27, $0, 16
sltiu $27, $4, 7902
label11: addu $27, $27, $31
jr $27
nop
sltu $27, $28, $27
ori $4, $0, 0
sh $4, 10($4)
blez $28, label12
mult $27, $28
ori $27, $0, 0
lbu $28, 2($27)
label12: lui $4, 32046
ori $27, $27, 1
div $27, $27
mult $28, $27
mthi $4
bne $28, $28, label13
ori $4, $0, 0
sh $4, 6($4)
or $4, $28, $4
label13: nor $4, $27, $28
mult $4, $4
ori $4, $0, 0
lhu $28, 14($4)
ori $28, $0, 0
lhu $4, 6($28)
bgtz $27, label14
mthi $28
mfhi $27
label14: ori $4, $0, 0
lh $28, 10($4)
ori $28, $0, 0
lbu $28, 11($28)
add $4, $0, $28
sllv $28, $28, $27
slti $28, $27, -10855
ori $28, $0, 0
lhu $4, 14($28)
ori $4, $4, 1
divu $28, $4
bgez $4, label15
sra $4, $4, 1
xori $28, $27, 34320
label15: addi $27, $28, 0
ori $4, $0, 0
lw $27, 12($4)
ori $28, $0, 0
sw $4, 4($28)
ori $27, $0, 0
lhu $4, 6($27)
sra $27, $27, 7
mult $27, $4
sll $4, $4, 17
multu $28, $4
ori $27, $27, 1
divu $27, $27
slt $28, $27, $27
ori $4, $0, 0
lb $27, 1($4)
mfhi $4
sltu $4, $27, $27
ori $27, $27, 1
divu $27, $27
sltiu $28, $4, 26280
bgtz $27, label16
xor $28, $4, $4
srav $27, $27, $28
label16: ori $28, $28, 1
div $27, $28
ori $4, $0, 0
lw $4, 12($4)
add $4, $0, $28
sltu $28, $28, $28
nor $27, $27, $4
blez $4, label17
mthi $27
multu $4, $27
label17: multu $27, $4
ori $28, $0, 0
lb $28, 3($28)
xori $4, $28, 16180
or $27, $28, $28
addu $28, $4, $28
ori $27, $0, 0
lw $28, 4($27)
mthi $27
madd $28 $4
srl $4, $28, 8
sll $27, $28, 30
addu $28, $27, $27
ori $27, $27, 1
div $4, $27
madd $27 $4
sltu $4, $4, $28
bltz $27, label18
nor $27, $27, $27
sltu $27, $4, $27
label18: xor $4, $28, $28
sltiu $27, $4, 5746
ori $4, $0, 0
lb $27, 15($4)
ori $27, $0, 0
lb $27, 2($27)
bltz $4, label19
srl $4, $4, 18
sltiu $27, $28, 24205
label19: sltu $28, $4, $27
add $4, $0, $4
lui $28, 49763
jal label20
ori $28, $0, 16
sra $4, $28, 27
label20: addu $28, $28, $31
jalr $28, $28
nop
srlv $4, $27, $27
ori $28, $28, 1
divu $4, $28
addi $27, $27, 0
ori $4, $0, 0
lw $27, 0($4)
bne $4, $28, label21
xor $28, $28, $28
subu $4, $4, $27
label21: andi $27, $27, 61281
multu $4, $27
mtlo $27
srl $27, $28, 18
ori $27, $0, 0
lbu $27, 11($27)
mult $27, $28
addiu $4, $4, 31308
mult $28, $4
ori $4, $0, 0
sb $4, 4($4)
ori $28, $4, 12108
and $4, $28, $27
mfhi $27
beq $4, $27, label22
multu $4, $27
mflo $4
label22: and $27, $27, $28
ori $4, $4, 1
div $27, $4
sll $28, $27, 26
mtlo $28
sltu $28, $28, $28
ori $28, $28, 1
div $27, $28
beq $27, $27, label23
srlv $27, $27, $27
ori $4, $4, 1
divu $27, $4
label23: ori $4, $4, 1
div $4, $4
add $28, $0, $27
beq $4, $4, label24
sub $27, $4, $4
mflo $28
label24: sll $4, $28, 31
j label25
add $28, $0, $28
addiu $4, $4, -30397
label25: andi $28, $28, 7215
j label26
multu $27, $28
ori $28, $0, 0
lh $4, 4($28)
label26: add $4, $0, $4
srav $4, $28, $28
srl $28, $27, 17
sra $4, $27, 17
ori $27, $0, 0
lh $28, 4($27)
nor $28, $27, $28
or $27, $4, $4
addi $27, $4, 0
add $28, $0, $28
j label27
ori $4, $0, 0
sh $4, 10($4)
ori $28, $0, 0
lbu $28, 15($28)
label27: xor $28, $27, $28
madd $28 $4
madd $27 $28
srav $27, $27, $4
lui $28, 13751
addu $28, $27, $28
xor $28, $28, $28
jal label28
ori $4, $0, 16
subu $4, $28, $4
label28: addu $4, $4, $31
jalr $27, $4
nop
andi $27, $4, 16419
jal label29
ori $28, $0, 16
sltiu $4, $4, -10726
label29: addu $28, $28, $31
jr $28
nop
ori $28, $0, 0
sb $28, 12($28)
mfhi $28
multu $4, $27
mflo $27
sltu $4, $28, $4
addi $27, $28, 0
slti $28, $4, 17414
mfhi $27
madd $28 $27
ori $4, $0, 0
lhu $27, 14($4)
bltz $28, label30
subu $28, $27, $4
srl $28, $28, 14
label30: srlv $28, $27, $4
ori $28, $0, 0
lbu $28, 7($28)
andi $4, $27, 18392
subu $27, $4, $27
ori $28, $0, 0
sb $4, 14($28)
xor $27, $28, $4
sltu $4, $27, $28
madd $28 $27
ori $27, $0, 0
sh $4, 6($27)
ori $27, $0, 0
lw $28, 0($27)
ori $4, $0, 0
sb $28, 9($4)
ori $4, $0, 0
sb $28, 1($4)
sra $4, $28, 31
subu $28, $28, $27
sltu $4, $4, $28
subu $27, $27, $27
slti $27, $28, -428
lui $27, 10542
nor $27, $27, $4
andi $27, $27, 25247
xor $28, $28, $28
blez $28, label31
ori $28, $0, 0
sh $4, 2($28)
slt $28, $27, $27
label31: ori $27, $27, 1
div $4, $27
lui $27, 37227
lui $28, 26149
ori $28, $0, 0
sh $28, 8($28)
addu $27, $4, $27
beq $27, $4, label32
sllv $27, $28, $27
ori $28, $0, 0
lb $28, 5($28)
label32: multu $28, $28
ori $28, $0, 0
sb $4, 14($28)
srl $4, $27, 0
srl $28, $27, 30
ori $4, $0, 0
lhu $27, 2($4)
addiu $27, $28, 2713
bltz $4, label33
slt $28, $28, $4
ori $27, $0, 0
lb $28, 10($27)
label33: ori $4, $0, 0
lbu $4, 0($4)
bgez $28, label34
sllv $28, $27, $4
and $27, $4, $27
label34: slti $28, $28, 23025
mfhi $27
sltiu $27, $27, -2459
xor $28, $28, $27
mult $27, $4
bne $4, $28, label35
ori $4, $0, 0
lbu $28, 12($4)
multu $4, $4
label35: slti $27, $27, 1841
mflo $28
subu $4, $27, $4
and $27, $28, $4
xori $28, $27, 50125
srl $27, $4, 16
bgez $27, label36
ori $4, $0, 0
lh $4, 10($4)
ori $28, $0, 0
lh $4, 8($28)
label36: sub $28, $28, $28
subu $28, $4, $4
nor $27, $4, $4
ori $28, $0, 0
sb $27, 2($28)
bgez $27, label37
and $27, $4, $27
ori $28, $0, 0
lw $4, 8($28)
label37: ori $4, $0, 0
sh $4, 12($4)
and $27, $27, $28
andi $4, $27, 14129
sltu $28, $27, $27
sll $4, $28, 17
mtlo $4
blez $28, label38
mult $4, $28
sll $4, $28, 31
label38: ori $28, $0, 0
lhu $28, 0($28)
ori $27, $0, 0
lbu $28, 6($27)
andi $28, $4, 61235
srlv $27, $28, $28
ori $27, $27, 1
divu $27, $27
mult $28, $27
slti $4, $27, -894
sltu $28, $28, $27
j label39
multu $27, $4
sltiu $28, $28, 32536
label39: srav $4, $28, $27
bgtz $28, label40
mfhi $28
ori $28, $0, 0
lhu $4, 4($28)
label40: addi $27, $27, 0
ori $4, $0, 0
sb $4, 1($4)
beq $4, $4, label41
mthi $4
ori $4, $0, 0
lh $4, 12($4)
label41: or $27, $27, $4
ori $27, $0, 0
sw $28, 12($27)
sltiu $27, $28, 29664
sltiu $27, $28, -10150
ori $27, $0, 0
lb $28, 5($27)
addiu $28, $4, 19099
subu $27, $27, $28
ori $4, $0, 0
lh $27, 14($4)
bne $28, $27, label42
ori $4, $0, 0
sw $27, 4($4)
sltiu $27, $4, 15661
label42: addu $28, $4, $27
bne $27, $27, label43
ori $28, $27, 54021
ori $4, $0, 0
lb $28, 9($4)
label43: ori $4, $0, 0
lh $4, 10($4)
sllv $4, $4, $4
srlv $28, $27, $27
and $27, $4, $28
blez $27, label44
ori $27, $0, 0
lb $27, 0($27)
ori $28, $0, 0
lhu $27, 2($28)
label44: and $27, $28, $4
mtlo $27
srlv $28, $28, $27
ori $4, $4, 1
div $28, $4
mult $27, $4
sll $4, $28, 14
ori $28, $0, 0
sb $28, 14($28)
ori $27, $27, 21570
ori $4, $0, 0
sh $27, 2($4)
j label45
ori $28, $0, 0
lhu $27, 2($28)
xori $27, $4, 28573
label45: or $4, $4, $28
addu $28, $27, $27
ori $28, $28, 1
divu $28, $28
mflo $27
jal label46
ori $4, $0, 16
subu $27, $27, $4
label46: addu $4, $4, $31
jalr $4, $4
nop
sllv $28, $4, $4
lui $27, 7078
ori $4, $0, 0
lw $28, 12($4)
ori $4, $4, 1
divu $27, $4
sltiu $4, $28, -10901
sllv $28, $4, $28
bgtz $28, label47
srlv $27, $4, $28
addi $4, $4, 0
label47: addiu $28, $28, -22387
ori $4, $0, 0
sb $27, 4($4)
ori $27, $0, 0
lh $28, 4($27)
beq $4, $27, label48
ori $4, $4, 1
div $27, $4
ori $4, $0, 0
lw $27, 12($4)
label48: sra $27, $28, 8
ori $4, $0, 0
lbu $28, 3($4)
ori $4, $0, 0
lb $28, 7($4)
mfhi $27
mfhi $4
sltu $27, $4, $4
srl $27, $27, 11
ori $4, $4, 1
divu $4, $4
sltiu $4, $27, -26498
ori $27, $28, 23514
sra $27, $4, 23
lui $27, 28442
addu $28, $4, $27
sltiu $4, $4, 9545
srav $28, $28, $28
xor $27, $27, $28
bne $4, $4, label49
ori $4, $4, 1
div $28, $4
subu $28, $27, $28
label49: ori $28, $0, 0
lw $28, 0($28)
add $4, $0, $28
beq $28, $4, label50
andi $27, $4, 15075
multu $4, $28
label50: sltiu $4, $27, 18733
bltz $28, label51
sltu $4, $4, $4
mfhi $4
label51: nor $4, $4, $28
bltz $4, label52
xor $27, $27, $27
slt $4, $28, $27
label52: mthi $4
ori $28, $0, 0
sb $28, 2($28)
ori $4, $4, 1
div $28, $4
beq $28, $4, label53
ori $4, $0, 0
sb $28, 2($4)
and $28, $28, $27
label53: mfhi $27
ori $28, $0, 0
sh $28, 14($28)
sub $27, $4, $4
or $28, $4, $28
ori $4, $0, 0
sb $4, 3($4)
sub $4, $28, $28
nor $28, $4, $27
ori $27, $0, 0
lbu $4, 6($27)
ori $4, $0, 0
lb $27, 4($4)
srlv $4, $4, $28
mult $4, $28
ori $4, $0, 0
sh $28, 6($4)
sra $28, $27, 23
mthi $27
multu $27, $27
ori $4, $0, 0
lh $27, 4($4)
addi $27, $27, 0
ori $4, $0, 0
lh $28, 2($4)
andi $28, $27, 51581
srav $27, $4, $27
ori $4, $0, 0
lbu $4, 15($4)
bne $28, $27, label54
and $28, $4, $28
ori $28, $0, 0
sb $28, 10($28)
label54: srlv $28, $28, $28
srl $27, $27, 20
bgtz $27, label55
xori $28, $28, 54138
andi $27, $4, 50184
label55: ori $27, $27, 1
divu $27, $27
madd $28 $27
ori $27, $28, 40744
addiu $4, $28, 24143
ori $28, $0, 0
sw $27, 8($28)
srav $28, $4, $28
bltz $27, label56
mfhi $27
and $27, $27, $28
label56: ori $27, $0, 0
lb $4, 13($27)
beq $4, $28, label57
sllv $28, $4, $4
and $27, $28, $27
label57: sltu $4, $27, $27
bne $28, $4, label58
ori $28, $0, 0
lhu $27, 10($28)
addi $28, $4, 0
label58: multu $28, $27
multu $4, $27
nor $4, $28, $4
sltiu $28, $4, 12519
multu $4, $4
sltiu $28, $27, 18690
lui $27, 19633
ori $28, $0, 0
lw $28, 4($28)
ori $28, $0, 0
lbu $27, 13($28)
mfhi $27
jal label59
ori $28, $0, 16
mtlo $4
label59: addu $28, $28, $31
jr $28
nop
mthi $4
lui $28, 54108
lui $28, 50281
jal label60
ori $28, $0, 16
nor $4, $27, $28
label60: addu $28, $28, $31
jr $28
nop
mfhi $27
addu $4, $28, $28
ori $27, $0, 0
lb $28, 9($27)
and $27, $27, $28
beq $27, $27, label61
ori $28, $27, 53516
mfhi $27
label61: sll $27, $4, 20
mtlo $27
add $28, $0, $4
bne $4, $28, label62
ori $4, $0, 0
sb $28, 2($4)
sub $4, $28, $28
label62: ori $27, $0, 0
lhu $27, 12($27)
sra $28, $28, 29
addiu $4, $4, 4156
ori $28, $0, 0
sb $4, 0($28)
ori $4, $4, 1
div $27, $4
ori $4, $0, 0
lbu $4, 6($4)
ori $27, $27, 50964
addi $4, $4, 0
jal label63
ori $4, $0, 16
sltiu $4, $28, 28014
label63: addu $4, $4, $31
jr $4
nop
madd $27 $27
lui $4, 46512
ori $27, $0, 0
lhu $4, 8($27)
subu $4, $4, $27
sra $4, $27, 6
beq $28, $28, label64
ori $4, $27, 62479
andi $4, $4, 40480
label64: addiu $4, $28, 13325
madd $4 $28
subu $4, $4, $4
bgez $27, label65
sll $4, $28, 18
xor $28, $27, $4
label65: ori $27, $0, 0
sb $28, 2($27)
blez $28, label66
ori $4, $0, 0
sh $27, 14($4)
ori $28, $0, 0
sb $27, 1($28)
label66: ori $4, $0, 0
lw $28, 8($4)
subu $28, $27, $28
ori $4, $4, 1
div $27, $4
mthi $28
madd $28 $28
sllv $28, $4, $27
ori $27, $0, 0
lhu $4, 4($27)
addiu $27, $4, -15726
ori $27, $27, 1
div $28, $27
and $4, $4, $28
ori $27, $0, 0
lbu $28, 1($27)
slt $28, $28, $28
bgez $28, label67
sub $27, $4, $4
ori $28, $0, 0
sb $4, 14($28)
label67: ori $27, $27, 1
divu $4, $27
or $4, $27, $4
mthi $27
ori $4, $0, 0
sb $27, 15($4)
addiu $4, $28, 25842
ori $28, $0, 0
lh $28, 6($28)
addi $28, $27, 0
sllv $4, $4, $4
xori $4, $28, 60813
madd $4 $4
mthi $27
sra $4, $27, 14
ori $27, $0, 0
sw $4, 12($27)
bgez $27, label68
xori $27, $28, 2807
sra $4, $28, 15
label68: sllv $4, $4, $4
bne $28, $4, label69
addi $27, $4, 0
ori $28, $0, 0
sb $27, 13($28)
label69: sltu $28, $4, $27
addi $27, $4, 0
j label70
ori $28, $28, 1
divu $4, $28
ori $27, $0, 0
sh $28, 14($27)
label70: ori $28, $28, 1
div $4, $28
and $28, $28, $4
jal label71
ori $27, $0, 16
addiu $4, $27, 11555
label71: addu $27, $27, $31
jr $27
nop
srlv $28, $28, $4
ori $28, $27, 15435
slt $27, $28, $27
bgtz $27, label72
subu $28, $27, $28
srl $4, $4, 30
label72: ori $28, $0, 0
sb $27, 13($28)
srlv $4, $28, $28
ori $28, $28, 1
div $27, $28
subu $27, $28, $28
ori $27, $0, 0
lb $28, 5($27)
jal label73
ori $4, $0, 16
sll $4, $27, 27
label73: addu $4, $4, $31
jr $4
nop
add $27, $0, $4
subu $4, $27, $28
ori $4, $4, 1
divu $4, $4
ori $27, $0, 0
lbu $27, 9($27)
srav $28, $4, $4
subu $28, $28, $4
jal label74
ori $4, $0, 16
mfhi $27
label74: addu $4, $4, $31
jr $4
nop
ori $27, $0, 0
sh $4, 12($27)
srav $4, $28, $27
addiu $4, $28, 1766
sra $4, $28, 29
sll $4, $27, 15
nor $27, $27, $4
bne $27, $28, label75
sltu $27, $28, $27
sra $28, $4, 14
label75: ori $27, $0, 0
sh $4, 12($27)
mtlo $27
slti $28, $27, -10077
addiu $4, $4, -28354
bgez $27, label76
srl $28, $4, 29
ori $27, $0, 0
lhu $4, 14($27)
label76: ori $27, $0, 0
sw $4, 0($27)
addi $28, $28, 0
jal label77
ori $28, $0, 16
and $4, $4, $28
label77: addu $28, $28, $31
jalr $27, $28
nop
mtlo $4
ori $27, $0, 0
sh $4, 14($27)
and $27, $4, $4
sll $28, $28, 13
ori $28, $0, 0
lb $27, 5($28)
ori $28, $28, 4582
sll $28, $4, 13
sllv $28, $4, $27
sll $4, $4, 5
ori $27, $0, 0
lw $28, 0($27)
mthi $4
ori $4, $0, 0
sb $27, 10($4)
ori $27, $0, 0
lh $28, 12($27)
mtlo $4
j label78
add $28, $0, $4
add $4, $0, $28
label78: subu $27, $27, $28
addiu $27, $28, -13076
multu $27, $4
add $28, $0, $28
addu $27, $28, $27
blez $28, label79
ori $4, $0, 0
lb $27, 13($4)
ori $4, $4, 19090
label79: slt $4, $4, $27
mtlo $28
mthi $27
jal label80
ori $4, $0, 16
srl $27, $4, 19
label80: addu $4, $4, $31
jalr $28, $4
nop
ori $4, $4, 5949
slt $4, $28, $4
ori $27, $0, 0
sw $27, 12($27)
mflo $4
bne $27, $28, label81
srav $27, $4, $28
andi $28, $28, 39904
label81: add $27, $0, $4
ori $27, $0, 0
lh $27, 10($27)
