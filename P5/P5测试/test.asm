ori $28, $0, 0
ori $29, $0, 0
addu $16, $6, $23
sw $23, 2120($0)
sw $6, 3144($0)
addu $23, $23, $16
ori $6, $6, 27294
lui $6, 42612
lw $23, 3716($0)
subu $16, $6, $16
subu $16, $6, $6
addu $16, $23, $16
ori $23, $6, 5486
j label1
subu $6, $23, $6
lw $23, 920($0)
label1: sw $6, 644($0)
ori $16, $23, 42808
jal label2
ori $23, $0, 12
ori $16, $23, 41917
label2: addu $23, $23, $31
jr $23
sw $23, 2212($0)
lw $6, 1048($0)
beq $16, $6, label3
lui $23, 21157
lui $16, 35520
label3: sw $23, 100($0)
sw $16, 1144($0)
lw $6, 3552($0)
j label4
lw $6, 644($0)
lw $23, 2232($0)
label4: addu $23, $23, $16
addu $23, $16, $16
j label5
addu $6, $6, $23
lw $16, 2520($0)
label5: ori $6, $6, 9616
addu $16, $16, $16
sw $6, 2884($0)
beq $23, $23, label6
lui $23, 60274
ori $16, $23, 63663
label6: subu $23, $16, $23
j label7
ori $6, $23, 40011
lui $23, 8743
label7: lw $6, 2372($0)
j label8
subu $6, $23, $16
lw $16, 904($0)
label8: subu $6, $23, $16
lw $23, 1984($0)
ori $23, $6, 17620
subu $16, $16, $16
ori $23, $6, 34072
sw $23, 2448($0)
subu $6, $6, $16
addu $23, $23, $16
j label9
ori $23, $23, 19228
lw $16, 472($0)
label9: ori $23, $6, 42196
sw $6, 3548($0)
subu $6, $16, $6
lw $23, 2868($0)
lw $23, 168($0)
jal label10
ori $23, $0, 12
lw $16, 2956($0)
label10: addu $23, $23, $31
jr $23
lui $6, 11248
lw $6, 3420($0)
jal label11
ori $6, $0, 12
subu $6, $23, $6
label11: addu $6, $6, $31
jr $6
lw $6, 1724($0)
jal label12
ori $6, $0, 12
ori $6, $23, 31152
label12: addu $6, $6, $31
jr $6
lui $16, 51677
jal label13
ori $16, $0, 12
sw $16, 3100($0)
label13: addu $16, $16, $31
jr $16
ori $6, $23, 58041
jal label14
ori $23, $0, 12
addu $16, $16, $6
label14: addu $23, $23, $31
jr $23
addu $16, $23, $23
jal label15
ori $16, $0, 12
ori $23, $6, 20059
label15: addu $16, $16, $31
jr $16
ori $6, $16, 64279
subu $23, $23, $23
beq $16, $16, label16
subu $23, $16, $16
lw $16, 3524($0)
label16: subu $23, $23, $6
jal label17
ori $16, $0, 12
sw $23, 2992($0)
label17: addu $16, $16, $31
jr $16
sw $6, 3176($0)
addu $23, $6, $16
addu $23, $23, $6
addu $23, $23, $23
sw $23, 2580($0)
jal label18
ori $6, $0, 12
addu $6, $16, $6
label18: addu $6, $6, $31
jr $6
sw $6, 2376($0)
jal label19
ori $16, $0, 12
sw $23, 3072($0)
label19: addu $16, $16, $31
jr $16
sw $23, 3852($0)
sw $23, 200($0)
sw $16, 1268($0)
lui $23, 46296
beq $16, $23, label20
lui $16, 810
subu $23, $6, $16
label20: subu $23, $6, $23
subu $23, $23, $6
lui $16, 11881
ori $6, $16, 54052
lui $23, 43961
ori $23, $6, 32621
beq $6, $23, label21
sw $16, 1252($0)
addu $16, $16, $6
label21: lui $16, 50361
ori $6, $23, 29663
lui $16, 12970
lui $6, 8372
jal label22
ori $23, $0, 12
subu $23, $6, $6
label22: addu $23, $23, $31
jr $23
ori $6, $6, 51738
lw $23, 4044($0)
ori $23, $23, 15223
j label23
sw $16, 3744($0)
sw $6, 1036($0)
label23: lui $23, 12788
beq $23, $16, label24
subu $16, $23, $6
lui $23, 59049
label24: subu $16, $16, $16
lui $23, 64093
beq $16, $16, label25
subu $16, $6, $6
ori $16, $16, 7623
label25: sw $16, 384($0)
j label26
sw $23, 3548($0)
lw $23, 60($0)
label26: lui $6, 61021
lui $16, 29713
j label27
subu $23, $23, $16
lui $16, 4295
label27: lw $16, 1088($0)
ori $16, $23, 4923
j label28
lui $23, 60289
addu $6, $23, $23
label28: lw $23, 2552($0)
jal label29
ori $23, $0, 12
subu $6, $23, $23
label29: addu $23, $23, $31
jr $23
ori $16, $6, 53624
addu $23, $6, $16
lui $6, 24614
beq $6, $6, label30
ori $23, $23, 7859
subu $6, $6, $6
label30: sw $23, 1932($0)
lw $6, 3408($0)
beq $23, $6, label31
lw $6, 3668($0)
addu $16, $6, $23
label31: sw $6, 3548($0)
addu $23, $6, $16
ori $6, $23, 6937
subu $6, $23, $23
addu $6, $23, $23
beq $23, $23, label32
lw $16, 3916($0)
addu $6, $23, $16
label32: ori $6, $16, 1435
j label33
subu $16, $16, $23
subu $16, $16, $23
label33: sw $16, 1236($0)
subu $23, $16, $16
lw $6, 924($0)
subu $16, $6, $16
sw $6, 376($0)
subu $6, $16, $16
lui $16, 27223
beq $16, $6, label34
sw $23, 836($0)
addu $16, $16, $16
label34: subu $23, $16, $16
lw $6, 1620($0)
jal label35
ori $23, $0, 12
ori $23, $16, 47830
label35: addu $23, $23, $31
jr $23
sw $23, 2016($0)
addu $6, $16, $23
sw $23, 652($0)
beq $23, $16, label36
lw $16, 568($0)
subu $16, $16, $23
label36: lui $23, 4194
beq $6, $6, label37
lui $16, 64097
sw $16, 92($0)
label37: subu $6, $23, $6
beq $16, $6, label38
addu $6, $16, $6
ori $23, $6, 1882
label38: lw $6, 3960($0)
ori $6, $23, 22702
lui $23, 27457
ori $6, $6, 38255
lui $6, 994
ori $16, $23, 50036
j label39
ori $23, $6, 23477
addu $16, $23, $16
label39: ori $16, $16, 49087
ori $6, $16, 25764
jal label40
ori $6, $0, 12
subu $6, $6, $23
label40: addu $6, $6, $31
jr $6
subu $16, $16, $23
jal label41
ori $6, $0, 12
ori $16, $6, 45733
label41: addu $6, $6, $31
jr $6
ori $16, $6, 16601
subu $23, $6, $23
beq $16, $23, label42
addu $16, $23, $16
addu $23, $6, $6
label42: addu $6, $16, $16
lui $23, 5523
addu $23, $23, $16
lw $6, 3424($0)
lw $23, 1244($0)
addu $6, $23, $23
beq $6, $16, label43
addu $16, $23, $16
lw $23, 2976($0)
label43: ori $6, $6, 11394
subu $23, $6, $16
lw $23, 760($0)
beq $23, $23, label44
ori $16, $23, 59465
lw $23, 3812($0)
label44: sw $23, 2316($0)
subu $23, $16, $23
lw $23, 1220($0)
ori $6, $6, 24514
lui $23, 50761
subu $6, $23, $6
j label45
lui $16, 34553
sw $16, 28($0)
label45: lw $16, 280($0)
subu $16, $16, $6
lui $23, 15183
addu $16, $6, $6
lw $16, 1456($0)
j label46
sw $6, 2020($0)
ori $23, $6, 9609
label46: lui $16, 55577
sw $16, 648($0)
subu $16, $23, $6
sw $23, 1192($0)
j label47
lw $23, 2528($0)
addu $16, $23, $23
label47: subu $23, $16, $16
addu $23, $23, $23
ori $6, $23, 51504
beq $6, $6, label48
subu $16, $23, $6
addu $6, $23, $6
label48: lui $6, 7254
jal label49
ori $16, $0, 12
lw $23, 3944($0)
label49: addu $16, $16, $31
jr $16
ori $16, $23, 49842
ori $23, $23, 14637
sw $16, 312($0)
addu $23, $16, $23
jal label50
ori $23, $0, 12
ori $6, $23, 3905
label50: addu $23, $23, $31
jr $23
lw $16, 3244($0)
sw $16, 2916($0)
ori $16, $6, 2292
beq $16, $23, label51
sw $6, 3348($0)
addu $23, $6, $6
label51: ori $16, $6, 42214
jal label52
ori $16, $0, 12
sw $6, 2980($0)
label52: addu $16, $16, $31
jr $16
sw $16, 2200($0)
ori $23, $23, 60251
j label53
lui $23, 50010
addu $23, $6, $23
label53: addu $23, $16, $6
sw $6, 88($0)
lui $6, 4759
lw $16, 1684($0)
addu $23, $6, $23
sw $6, 1312($0)
j label54
sw $23, 332($0)
ori $23, $6, 35317
label54: ori $6, $16, 51391
lw $6, 1316($0)
ori $16, $16, 6869
jal label55
ori $6, $0, 12
lw $16, 644($0)
label55: addu $6, $6, $31
jr $6
lui $6, 64607
j label56
addu $6, $16, $16
sw $16, 240($0)
label56: addu $16, $6, $23
jal label57
ori $23, $0, 12
lw $23, 2760($0)
label57: addu $23, $23, $31
jr $23
lui $23, 24517
lw $16, 828($0)
ori $23, $6, 43512
addu $16, $16, $23
j label58
sw $16, 3424($0)
lui $6, 25384
label58: lw $23, 2180($0)
addu $23, $6, $16
lui $6, 56105
ori $16, $6, 53142
lw $6, 2368($0)
sw $16, 1048($0)
subu $16, $16, $23
jal label59
ori $6, $0, 12
sw $6, 4080($0)
label59: addu $6, $6, $31
jr $6
subu $23, $6, $16
sw $16, 1248($0)
ori $16, $16, 59548
ori $16, $6, 50454
ori $23, $6, 10209
lw $6, 2420($0)
ori $16, $23, 9036
ori $6, $23, 55210
addu $16, $23, $6
beq $23, $16, label60
ori $6, $6, 26125
sw $6, 2880($0)
label60: lui $23, 62184
lw $6, 2280($0)
lw $23, 2552($0)
j label61
subu $23, $23, $23
sw $6, 1556($0)
label61: subu $16, $23, $6
subu $16, $6, $6
subu $23, $23, $16
sw $6, 3608($0)
jal label62
ori $6, $0, 12
lui $6, 14456
label62: addu $6, $6, $31
jr $6
addu $16, $6, $23
sw $6, 984($0)
beq $6, $23, label63
ori $16, $6, 64134
subu $16, $23, $16
label63: ori $6, $16, 2384
ori $6, $6, 13929
addu $6, $6, $23
lw $6, 1720($0)
addu $6, $23, $16
addu $16, $16, $6
ori $16, $16, 14045
sw $23, 2312($0)
beq $6, $6, label64
lw $16, 4064($0)
addu $6, $6, $6
label64: ori $6, $23, 41308
sw $23, 1492($0)
sw $6, 404($0)
sw $16, 3416($0)
beq $6, $16, label65
sw $23, 3120($0)
addu $16, $6, $6
label65: lui $6, 29304
