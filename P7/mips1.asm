.text

li $28, 0
li $29, 0

la $1, label1
la $2, label1
addiu $1, $1, 1
jr $1
nop
label1:

li $1, 0x2996
la $2, label2
jr $1
nop
label2:

li $1, 0x4fff
la $2, label3
jr $1
nop
label3:

end:j end


.ktext 0x4180
mfc0 $12, $12
mfc0 $13, $13
mfc0 $14, $14
mtc0 $2, $14
eret