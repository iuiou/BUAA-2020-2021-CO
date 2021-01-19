ori $28, $0, 0
ori $29, $0, 0
lw $2, 3888($0)
beq $9, $15, label1
lui $2, 25775
ori $2, $9, 56595
label1: addu $9, $9, $2
lw $15, 1192($0)
jal label2
ori $2, $0, 12
addu $2, $9, $15
label2: addu $2, $2, $31
jr $2
subu $15, $9, $15
subu $2, $15, $15
beq $15, $9, label3
sw $15, 2212($0)
lui $9, 28870
label3: subu $2, $2, $9
j label4
subu $9, $2, $9
lw $9, 1620($0)
label4: lui $9, 20047
beq $15, $2, label5
lw $9, 92($0)
lw $15, 1316($0)
label5: lui $2, 47121
sw $9, 2224($0)
jal label6
ori $2, $0, 12
ori $2, $15, 36801
label6: addu $2, $2, $31
jr $2
lui $15, 477
sw $2, 1988($0)
sw $15, 668($0)
lui $2, 47486
jal label7
ori $9, $0, 12
ori $15, $9, 40637
label7: addu $9, $9, $31
jr $9
lw $15, 2736($0)
j label8
lw $2, 268($0)
lw $15, 184($0)
label8: ori $15, $15, 22955
lui $2, 42143
addu $9, $2, $15
subu $15, $2, $2
j label9
subu $9, $15, $15
addu $15, $15, $15
label9: sw $2, 3320($0)
beq $2, $9, label10
ori $9, $9, 41598
subu $15, $15, $2
label10: lw $15, 1808($0)
beq $9, $15, label11
addu $9, $15, $9
addu $9, $15, $2
label11: ori $9, $2, 35668
sw $9, 812($0)
j label12
lui $9, 10763
ori $9, $2, 50137
label12: ori $9, $2, 58999
sw $9, 3560($0)
subu $9, $9, $9
beq $9, $9, label13
lw $2, 500($0)
ori $2, $15, 5662
label13: addu $15, $2, $15
beq $9, $2, label14
lui $2, 32012
addu $15, $2, $2
label14: addu $2, $2, $2
lui $9, 18863
ori $15, $9, 30796
lui $15, 20765
j label15
addu $15, $15, $9
addu $9, $2, $15
label15: lui $15, 56338
jal label16
ori $9, $0, 12
ori $15, $9, 30544
label16: addu $9, $9, $31
jr $9
ori $15, $9, 30314
lw $2, 2964($0)
sw $2, 420($0)
j label17
lw $2, 1040($0)
lui $9, 17272
label17: sw $2, 2464($0)
subu $9, $15, $9
subu $9, $9, $2
ori $15, $2, 62116
ori $2, $15, 19517
beq $15, $15, label18
lui $2, 15813
subu $9, $9, $2
label18: sw $9, 396($0)
ori $2, $9, 31080
jal label19
ori $2, $0, 12
sw $2, 320($0)
label19: addu $2, $2, $31
jr $2
sw $15, 868($0)
subu $15, $2, $9
j label20
subu $15, $15, $2
addu $9, $15, $2
label20: lw $2, 2784($0)
subu $15, $15, $15
addu $9, $2, $9
sw $2, 1432($0)
subu $15, $2, $15
beq $9, $9, label21
lui $2, 39804
subu $2, $9, $9
label21: addu $15, $9, $9
sw $2, 2328($0)
ori $15, $9, 2487
beq $2, $2, label22
lui $15, 40751
addu $9, $15, $15
label22: lui $9, 6441
sw $9, 940($0)
lui $2, 6222
jal label23
ori $2, $0, 12
ori $15, $2, 14370
label23: addu $2, $2, $31
jr $2
lui $9, 23334
beq $9, $9, label24
ori $9, $2, 8005
subu $15, $9, $9
label24: lw $9, 2936($0)
j label25
sw $2, 2944($0)
addu $2, $9, $2
label25: subu $9, $2, $15
addu $2, $2, $15
beq $2, $2, label26
ori $2, $2, 31786
ori $2, $2, 31764
label26: addu $9, $9, $9
subu $2, $15, $2
addu $9, $2, $2
lui $15, 42836
ori $9, $15, 56307
j label27
subu $15, $9, $15
sw $9, 1584($0)
label27: addu $15, $15, $9
jal label28
ori $15, $0, 12
subu $2, $2, $2
label28: addu $15, $15, $31
jr $15
lui $15, 10258
j label29
addu $2, $15, $2
lw $9, 2096($0)
label29: addu $15, $9, $2
lw $9, 776($0)
ori $15, $15, 22252
addu $9, $15, $2
sw $15, 1996($0)
sw $2, 180($0)
addu $15, $15, $2
ori $15, $9, 37783
j label30
ori $9, $15, 25048
subu $9, $9, $9
label30: subu $9, $2, $2
j label31
subu $2, $15, $15
sw $15, 1392($0)
label31: lw $9, 3308($0)
jal label32
ori $15, $0, 12
lui $2, 52341
label32: addu $15, $15, $31
jr $15
sw $9, 176($0)
jal label33
ori $15, $0, 12
sw $9, 3028($0)
label33: addu $15, $15, $31
jr $15
ori $2, $9, 31111
jal label34
ori $2, $0, 12
sw $2, 3052($0)
label34: addu $2, $2, $31
jr $2
sw $9, 1468($0)
j label35
addu $2, $15, $2
lui $15, 7172
label35: lui $2, 10406
beq $9, $9, label36
addu $9, $2, $2
lui $9, 9748
label36: subu $9, $2, $2
jal label37
ori $9, $0, 12
ori $15, $9, 19971
label37: addu $9, $9, $31
jr $9
lw $2, 2588($0)
beq $15, $15, label38
ori $2, $15, 6689
subu $15, $2, $2
label38: lui $9, 31137
addu $9, $2, $15
beq $15, $15, label39
subu $15, $9, $15
sw $15, 1984($0)
label39: sw $2, 2012($0)
subu $9, $9, $9
lui $2, 63668
sw $9, 3264($0)
ori $9, $15, 8820
ori $2, $15, 61130
addu $15, $15, $2
j label40
addu $2, $2, $9
addu $15, $9, $2
label40: addu $15, $2, $15
ori $9, $9, 38736
subu $9, $15, $2
lw $2, 3956($0)
addu $15, $15, $2
sw $9, 2872($0)
ori $9, $2, 21300
addu $2, $15, $2
sw $2, 1988($0)
j label41
addu $2, $2, $15
addu $2, $2, $9
label41: lw $2, 3544($0)
beq $9, $9, label42
addu $15, $9, $15
lui $2, 15769
label42: sw $2, 992($0)
lw $2, 2080($0)
subu $9, $9, $2
lui $2, 23903
j label43
addu $15, $2, $15
subu $9, $15, $15
label43: sw $2, 2340($0)
beq $15, $2, label44
lui $2, 30261
sw $2, 360($0)
label44: addu $15, $9, $15
addu $2, $2, $9
lw $15, 2472($0)
jal label45
ori $2, $0, 12
lui $15, 31471
label45: addu $2, $2, $31
jr $2
subu $9, $15, $9
ori $9, $9, 25820
beq $2, $15, label46
ori $9, $2, 17426
subu $15, $2, $9
label46: addu $9, $2, $2
jal label47
ori $2, $0, 12
sw $15, 2780($0)
label47: addu $2, $2, $31
jr $2
addu $9, $15, $9
jal label48
ori $15, $0, 12
lui $2, 36530
label48: addu $15, $15, $31
jr $15
lw $2, 1348($0)
subu $2, $15, $15
lui $9, 19233
sw $2, 3092($0)
beq $2, $15, label49
ori $15, $2, 55347
subu $9, $9, $2
label49: lw $9, 784($0)
subu $9, $15, $15
lw $9, 2784($0)
jal label50
ori $15, $0, 12
sw $15, 8($0)
label50: addu $15, $15, $31
jr $15
sw $15, 3768($0)
jal label51
ori $15, $0, 12
addu $15, $9, $15
label51: addu $15, $15, $31
jr $15
lui $9, 44933
jal label52
ori $15, $0, 12
sw $15, 3208($0)
label52: addu $15, $15, $31
jr $15
subu $2, $15, $15
j label53
lui $15, 29511
lw $15, 3216($0)
label53: addu $2, $15, $15
sw $2, 2000($0)
lw $15, 1384($0)
jal label54
ori $2, $0, 12
sw $15, 3428($0)
label54: addu $2, $2, $31
jr $2
sw $15, 728($0)
subu $9, $15, $2
ori $2, $2, 39106
addu $9, $2, $2
lw $9, 212($0)
beq $15, $9, label55
addu $15, $15, $2
sw $2, 3528($0)
label55: lui $15, 26333
addu $15, $2, $9
subu $9, $2, $9
subu $9, $9, $15
ori $15, $9, 1630
j label56
lw $2, 752($0)
lw $9, 3888($0)
label56: ori $15, $15, 33570
beq $15, $15, label57
sw $2, 1796($0)
addu $9, $2, $9
label57: subu $15, $9, $2
lui $2, 37620
jal label58
ori $15, $0, 12
subu $2, $15, $2
label58: addu $15, $15, $31
jr $15
lw $2, 3792($0)
beq $15, $2, label59
addu $15, $9, $15
subu $2, $2, $15
label59: lw $2, 3292($0)
ori $15, $9, 44414
j label60
lui $2, 33083
lw $15, 2676($0)
label60: sw $15, 3720($0)
subu $9, $9, $9
beq $9, $2, label61
lui $2, 23412
subu $9, $9, $9
label61: sw $9, 580($0)
ori $2, $2, 51798
j label62
ori $15, $15, 40793
addu $9, $15, $9
label62: subu $15, $9, $9
lui $15, 23735
sw $15, 280($0)
ori $15, $9, 39292
jal label63
ori $2, $0, 12
ori $2, $2, 22871
label63: addu $2, $2, $31
jr $2
subu $9, $15, $2
jal label64
ori $15, $0, 12
lui $2, 13414
label64: addu $15, $15, $31
jr $15
ori $15, $15, 30726
sw $2, 2616($0)
jal label65
ori $9, $0, 12
subu $9, $2, $9
label65: addu $9, $9, $31
jr $9
lui $15, 12632
beq $9, $9, label66
sw $9, 3300($0)
addu $9, $15, $9
label66: sw $9, 1596($0)
lui $9, 7169
addu $15, $15, $2
beq $15, $2, label67
lw $15, 168($0)
lw $15, 2196($0)
label67: addu $9, $15, $9
subu $9, $9, $2
jal label68
ori $15, $0, 12
sw $9, 2456($0)
label68: addu $15, $15, $31
jr $15
subu $9, $9, $15
lw $15, 808($0)
ori $9, $9, 30788
ori $2, $9, 47813
lw $2, 2748($0)
jal label69
ori $2, $0, 12
lui $9, 57693
label69: addu $2, $2, $31
jr $2
sw $2, 3500($0)
sw $9, 2200($0)
j label70
ori $9, $2, 55947
sw $15, 776($0)
label70: addu $15, $9, $9
addu $2, $9, $2
ori $15, $2, 4383
j label71
ori $9, $9, 34494
ori $15, $15, 59930
label71: lw $2, 1180($0)
lw $2, 1336($0)
j label72
ori $2, $2, 54930
ori $15, $9, 3955
label72: ori $9, $9, 41294
j label73
lui $2, 49204
lui $9, 60928
label73: lui $15, 58474
sw $15, 1424($0)
addu $9, $15, $15
subu $2, $15, $9
subu $2, $15, $15
subu $2, $2, $15
addu $2, $15, $2
j label74
subu $9, $15, $15
subu $2, $15, $9
label74: sw $2, 3912($0)
lui $9, 20851
ori $2, $9, 46909
lw $15, 592($0)
beq $9, $15, label75
ori $15, $2, 51175
addu $9, $9, $2
label75: lw $15, 3636($0)
sw $15, 1124($0)
subu $2, $2, $9
addu $15, $2, $15
jal label76
ori $2, $0, 12
lw $15, 116($0)
label76: addu $2, $2, $31
jr $2
ori $2, $2, 4061
ori $15, $15, 6929
beq $2, $9, label77
ori $2, $15, 28458
addu $9, $9, $15
label77: sw $9, 3124($0)
beq $9, $15, label78
lui $2, 63608
addu $2, $9, $15
label78: lw $15, 3076($0)
subu $15, $2, $2
beq $2, $2, label79
ori $2, $15, 62843
lui $2, 58205
label79: lui $15, 8979
lui $15, 15311
sw $9, 1464($0)
j label80
addu $2, $2, $9
sw $2, 644($0)
label80: addu $15, $2, $2
lui $15, 18225
sw $15, 3068($0)
beq $15, $9, label81
lui $2, 43259
subu $9, $15, $2
label81: lui $15, 8297
sw $2, 2372($0)
ori $2, $15, 15745
lw $2, 604($0)
lui $9, 46044
j label82
lui $9, 18477
addu $15, $9, $2
label82: lw $15, 2248($0)
subu $2, $15, $2
lui $2, 61275
addu $9, $15, $9
lui $2, 12695
addu $15, $15, $2
addu $2, $2, $2
lui $9, 11902
j label83
sw $9, 3912($0)
lw $2, 2584($0)
label83: subu $9, $2, $9
j label84
subu $15, $2, $9
ori $2, $9, 14583
label84: sw $15, 1408($0)
beq $15, $2, label85
addu $2, $2, $2
lw $2, 3388($0)
label85: sw $2, 3652($0)
lw $15, 1820($0)
sw $9, 3984($0)
addu $9, $15, $2
sw $15, 1996($0)
sw $9, 2156($0)
ori $9, $9, 9742
sw $9, 3316($0)
j label86
addu $2, $2, $9
lui $15, 44279
label86: lw $2, 1984($0)
ori $2, $2, 34899
jal label87
ori $2, $0, 12
lui $9, 49924
label87: addu $2, $2, $31
jr $2
ori $9, $9, 15779
subu $9, $15, $9
lui $15, 36908
j label88
subu $9, $15, $9
ori $9, $9, 23581
label88: addu $9, $9, $2
ori $9, $15, 45739
sw $9, 3700($0)
lui $15, 58964
j label89
addu $15, $9, $2
lw $9, 296($0)
label89: lw $2, 1752($0)
subu $9, $15, $2
subu $2, $15, $15
beq $9, $9, label90
subu $9, $2, $2
sw $15, 1716($0)
label90: ori $15, $15, 38911
jal label91
ori $15, $0, 12
ori $2, $9, 2108
label91: addu $15, $15, $31
jr $15
addu $9, $2, $2
subu $2, $15, $9
beq $2, $2, label92
addu $15, $2, $2
lui $9, 28412
label92: addu $15, $9, $9
lw $2, 3712($0)
beq $15, $2, label93
lui $15, 45751
lui $15, 3458
label93: subu $9, $2, $15
j label94
ori $15, $15, 15223
lw $15, 3416($0)
label94: subu $2, $15, $15
beq $2, $2, label95
subu $2, $2, $15
sw $2, 3536($0)
label95: ori $2, $2, 30441
j label96
subu $9, $2, $9
addu $9, $2, $2
label96: lw $9, 1548($0)
sw $15, 920($0)
subu $15, $9, $15
lui $9, 26310
lw $15, 432($0)
subu $15, $15, $2
lui $15, 324
j label97
sw $15, 848($0)
lw $15, 412($0)
label97: sw $15, 1748($0)
lw $9, 2716($0)
beq $9, $9, label98
addu $15, $2, $9
lw $9, 568($0)
label98: sw $9, 2800($0)
subu $2, $2, $9
lui $15, 44937
lui $15, 28404
sw $15, 1676($0)
lw $9, 260($0)
addu $2, $9, $9
addu $15, $2, $2
j label99
lui $2, 27674
lw $15, 3192($0)
label99: sw $9, 3920($0)
jal label100
ori $9, $0, 12
addu $15, $15, $9
label100: addu $9, $9, $31
jr $9
lw $9, 3556($0)
addu $2, $9, $2
beq $15, $9, label101
addu $9, $9, $9
addu $2, $9, $9
label101: subu $2, $15, $15
subu $15, $9, $2
lw $9, 28($0)
ori $9, $9, 32802
lui $2, 58640
lw $15, 2616($0)
sw $9, 3020($0)
subu $15, $2, $15
addu $15, $9, $15
addu $2, $9, $2
subu $2, $9, $2
subu $15, $9, $2
addu $2, $9, $2
ori $15, $15, 47699
beq $9, $9, label102
lw $9, 2844($0)
addu $2, $9, $9
label102: addu $2, $2, $2
lw $2, 2916($0)
addu $15, $2, $15
lw $9, 964($0)
j label103
lw $2, 2948($0)
subu $2, $15, $15
label103: lui $15, 32864
lui $15, 22479
j label104
lw $15, 1732($0)
subu $15, $2, $9
label104: lw $2, 2032($0)
lui $9, 55986
ori $2, $9, 53018
jal label105
ori $9, $0, 12
lui $2, 1625
label105: addu $9, $9, $31
jr $9
ori $2, $15, 15561
lw $15, 668($0)
subu $9, $9, $15
j label106
ori $2, $9, 39723
lui $15, 43239
label106: ori $15, $2, 39946
lw $9, 3048($0)
j label107
sw $2, 680($0)
ori $2, $2, 32360
label107: ori $15, $9, 58692
addu $2, $15, $9
j label108
ori $2, $9, 18515
lui $2, 9916
label108: lui $15, 20290
beq $2, $15, label109
ori $15, $2, 18481
subu $15, $2, $9
label109: ori $9, $2, 37046
j label110
sw $2, 1844($0)
sw $9, 884($0)
label110: addu $9, $9, $15
addu $2, $15, $9
beq $2, $2, label111
addu $9, $2, $9
subu $15, $2, $2
label111: ori $9, $9, 14124
addu $15, $2, $15
jal label112
ori $9, $0, 12
lw $9, 2844($0)
label112: addu $9, $9, $31
jr $9
sw $2, 3512($0)
subu $9, $9, $9
lui $15, 25549
ori $9, $2, 8908
sw $9, 40($0)
jal label113
ori $2, $0, 12
lw $9, 2924($0)
label113: addu $2, $2, $31
jr $2
subu $9, $2, $15
jal label114
ori $2, $0, 12
ori $2, $2, 30832
label114: addu $2, $2, $31
jr $2
ori $9, $9, 13071
addu $2, $15, $2
lw $2, 1936($0)
subu $9, $9, $9
beq $9, $9, label115
addu $2, $2, $2
lui $15, 7072
label115: lui $9, 37194
ori $9, $9, 27878
addu $2, $2, $2
beq $9, $15, label116
addu $15, $2, $9
ori $15, $9, 4523
label116: lui $9, 42496
beq $15, $9, label117
ori $15, $2, 15061
lui $15, 14069
label117: addu $15, $9, $15
j label118
subu $2, $15, $15
lui $2, 22435
label118: addu $15, $2, $2
lui $2, 16221
j label119
subu $2, $15, $9
sw $15, 2924($0)
label119: ori $9, $2, 46129
beq $9, $2, label120
lw $2, 3328($0)
addu $9, $15, $15
label120: ori $9, $2, 28380
jal label121
ori $9, $0, 12
addu $15, $15, $2
label121: addu $9, $9, $31
jr $9
lui $9, 61999
