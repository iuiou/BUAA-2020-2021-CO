ori $28, $0, 0
ori $29, $0, 0
lw $20, 412($0)
subu $26, $21, $21
lui $21, 63998
subu $26, $26, $21
beq $26, $21, label1
lui $26, 65204
subu $26, $26, $20
label1: addu $26, $20, $26
lw $26, 2184($0)
beq $21, $20, label2
lui $21, 41401
lw $21, 1876($0)
label2: sw $21, 3332($0)
sw $21, 2376($0)
lui $21, 31938
ori $20, $21, 20442
ori $20, $20, 26307
lui $26, 63811
subu $20, $26, $21
lw $20, 3064($0)
ori $26, $26, 3085
beq $21, $21, label3
ori $26, $20, 18026
sw $21, 1664($0)
label3: lui $21, 12113
lw $21, 1220($0)
jal label4
lw $21, 1688($0)
addu $20, $26, $21
label4:jr $31
lui $20, 56469
addu $26, $21, $26
sw $21, 1816($0)
addu $21, $26, $20
beq $26, $21, label5
lw $20, 1404($0)
lw $21, 1096($0)
label5: ori $20, $20, 39824
addu $26, $20, $26
j label6
lw $26, 2632($0)
lw $21, 2344($0)
label6: lui $20, 31872
addu $20, $26, $20
beq $26, $20, label7
lw $21, 2356($0)
lw $26, 1732($0)
label7: addu $20, $26, $20
beq $26, $20, label8
lui $20, 59500
lui $20, 57381
label8: subu $26, $20, $20
j label9
lw $20, 2056($0)
sw $26, 2160($0)
label9: subu $20, $26, $26
addu $21, $20, $21
beq $20, $21, label10
sw $21, 3872($0)
subu $26, $20, $21
label10: sw $20, 3340($0)
lui $20, 43793
sw $21, 3380($0)
subu $20, $26, $26
j label11
lw $21, 1196($0)
addu $20, $26, $26
label11: addu $21, $21, $21
j label12
addu $20, $26, $21
ori $20, $21, 2397
label12: lui $26, 26372
addu $20, $21, $26
ori $26, $21, 30847
jal label13
subu $21, $21, $26
addu $20, $20, $21
label13:jr $31
lw $26, 2808($0)
lw $20, 2756($0)
lw $26, 308($0)
lw $26, 4($0)
addu $21, $26, $21
beq $26, $26, label14
sw $20, 316($0)
addu $20, $26, $21
label14: lui $21, 16492
lui $26, 897
sw $21, 3288($0)
beq $26, $26, label15
lw $26, 3328($0)
subu $20, $21, $26
label15: subu $20, $26, $21
lui $21, 15247
subu $21, $20, $20
addu $21, $21, $26
addu $21, $20, $26
ori $26, $20, 8878
lui $26, 17131
j label16
lw $26, 3460($0)
lui $20, 46123
label16: lui $21, 38691
lw $21, 176($0)
beq $26, $21, label17
ori $26, $20, 19950
ori $21, $26, 10592
label17: lui $26, 15754
sw $20, 1476($0)
addu $26, $26, $26
lw $26, 3968($0)
lw $26, 1980($0)
jal label18
subu $26, $20, $20
addu $20, $26, $20
label18:jr $31
ori $21, $26, 63422
addu $26, $26, $26
lui $26, 41734
j label19
subu $20, $21, $26
addu $20, $20, $20
label19: ori $26, $26, 29552
sw $21, 2220($0)
beq $21, $26, label20
sw $21, 2712($0)
sw $20, 412($0)
label20: lw $20, 3604($0)
subu $20, $20, $21
sw $21, 8($0)
j label21
lw $20, 1272($0)
addu $26, $26, $20
label21: addu $26, $26, $26
subu $21, $21, $20
subu $20, $26, $20
sw $26, 2268($0)
lui $21, 30477
ori $20, $26, 55366
lw $26, 112($0)
ori $21, $20, 21989
lui $21, 31077
subu $20, $21, $20
jal label22
subu $20, $26, $21
subu $20, $20, $26
label22:jr $31
lui $20, 61681
addu $21, $20, $21
j label23
subu $21, $26, $21
addu $26, $26, $20
label23: subu $21, $26, $26
ori $20, $26, 7207
sw $21, 3028($0)
lw $26, 2704($0)
lw $20, 232($0)
jal label24
sw $26, 208($0)
addu $26, $21, $26
label24:jr $31
sw $21, 2344($0)
lui $20, 24766
lw $21, 748($0)
beq $26, $26, label25
addu $21, $26, $21
ori $20, $20, 2974
label25: ori $21, $21, 33209
j label26
lw $20, 0($0)
lw $20, 300($0)
label26: sw $21, 844($0)
beq $21, $20, label27
addu $20, $21, $21
ori $21, $26, 57796
label27: addu $26, $26, $21
ori $21, $20, 29067
sw $26, 252($0)
addu $26, $21, $20
lui $26, 627
lw $21, 3956($0)
jal label28
subu $26, $26, $26
ori $21, $26, 2503
label28:jr $31
sw $26, 2776($0)
ori $26, $20, 24967
lui $21, 21910
jal label29
sw $21, 1848($0)
ori $26, $26, 54830
label29:jr $31
ori $20, $26, 16313
ori $21, $20, 19137
ori $26, $20, 18963
addu $21, $20, $20
lui $20, 21485
beq $26, $20, label30
subu $21, $26, $21
addu $21, $21, $20
label30: ori $21, $21, 7688
subu $26, $21, $20
lw $26, 924($0)
subu $20, $21, $21
beq $20, $21, label31
sw $21, 3712($0)
sw $20, 1464($0)
label31: ori $21, $21, 13886
lui $20, 37166
subu $21, $21, $26
sw $20, 2764($0)
beq $20, $20, label32
lw $21, 1964($0)
lw $26, 2740($0)
label32: lui $21, 45242
addu $20, $21, $26
jal label33
sw $26, 2692($0)
ori $26, $26, 19850
label33:jr $31
sw $26, 1832($0)
ori $26, $26, 40524
beq $26, $21, label34
lui $21, 64411
addu $26, $21, $26
label34: ori $21, $21, 51725
sw $20, 3216($0)
jal label35
lw $21, 348($0)
subu $20, $26, $20
label35:jr $31
sw $26, 3812($0)
addu $20, $26, $20
sw $21, 2052($0)
ori $20, $26, 30745
ori $20, $21, 1159
addu $20, $26, $26
ori $20, $20, 16920
lw $21, 172($0)
addu $26, $21, $20
jal label36
subu $20, $21, $20
lui $20, 5485
label36:jr $31
sw $20, 3496($0)
sw $26, 2224($0)
beq $21, $21, label37
ori $26, $20, 4271
lui $21, 27519
label37: subu $21, $21, $21
j label38
lui $21, 30686
subu $26, $21, $21
label38: lui $21, 48703
lui $20, 31040
jal label39
addu $26, $26, $21
ori $26, $21, 35432
label39:jr $31
lw $20, 908($0)
sw $21, 1312($0)
beq $26, $26, label40
subu $26, $20, $26
subu $26, $21, $20
label40: subu $26, $26, $26
lw $21, 1808($0)
jal label41
lui $26, 14530
sw $26, 2668($0)
label41:jr $31
ori $21, $26, 43423
lui $26, 41959
beq $21, $26, label42
lui $21, 8004
lw $20, 2728($0)
label42: addu $21, $21, $21
ori $20, $20, 6392
j label43
subu $26, $26, $21
subu $20, $26, $21
label43: addu $20, $20, $26
jal label44
lui $26, 50239
ori $20, $21, 51385
label44:jr $31
subu $26, $26, $26
jal label45
ori $21, $20, 32142
sw $20, 2828($0)
label45:jr $31
addu $21, $26, $20
subu $26, $21, $20
lw $20, 2024($0)
sw $21, 3036($0)
lw $21, 116($0)
lui $20, 49300
j label46
addu $20, $26, $26
addu $20, $26, $21
label46: ori $21, $21, 46631
lui $21, 40429
sw $26, 3448($0)
j label47
subu $26, $26, $20
ori $21, $21, 57087
label47: ori $26, $26, 30244
lui $26, 1967
lui $26, 6041
lw $26, 3224($0)
sw $21, 152($0)
sw $21, 3040($0)
sw $20, 2356($0)
addu $26, $26, $21
lw $20, 3692($0)
sw $26, 2288($0)
j label48
addu $21, $21, $20
sw $26, 3964($0)
label48: sw $21, 700($0)
lui $21, 44960
j label49
lui $26, 47003
subu $26, $26, $20
label49: subu $21, $20, $26
addu $26, $26, $21
lui $26, 43049
lw $20, 716($0)
j label50
subu $26, $26, $21
lui $20, 1145
label50: addu $26, $26, $20
sw $20, 3692($0)
subu $26, $20, $26
addu $26, $26, $20
beq $20, $21, label51
ori $26, $21, 47433
ori $26, $26, 24316
label51: subu $21, $21, $26
addu $20, $20, $20
j label52
lw $20, 2384($0)
lui $26, 14680
label52: sw $21, 148($0)
jal label53
ori $20, $21, 50528
lui $26, 40227
label53:jr $31
addu $26, $26, $20
lui $21, 60863
j label54
lw $26, 3944($0)
subu $20, $20, $20
label54: sw $26, 1344($0)
beq $21, $20, label55
lw $26, 3608($0)
subu $21, $21, $21
label55: lui $21, 62545
beq $20, $26, label56
ori $26, $20, 4257
sw $21, 2120($0)
label56: addu $21, $21, $20
j label57
lui $26, 52138
lui $26, 37772
label57: ori $26, $20, 64265
jal label58
subu $20, $21, $21
subu $20, $21, $26
label58:jr $31
sw $21, 1160($0)
subu $21, $20, $21
addu $21, $26, $21
j label59
lw $21, 596($0)
ori $21, $26, 593
label59: subu $20, $20, $20
lw $26, 2384($0)
lui $20, 49528
lw $26, 1932($0)
lui $21, 33646
ori $26, $21, 21149
jal label60
subu $20, $21, $20
addu $21, $26, $26
label60:jr $31
sw $21, 2384($0)
jal label61
lui $20, 7737
ori $20, $21, 57787
label61:jr $31
lw $21, 3708($0)
lui $26, 4055
lw $20, 1992($0)
subu $26, $20, $20
addu $20, $26, $20
ori $20, $26, 25390
j label62
ori $20, $20, 892
subu $21, $26, $21
label62: lui $20, 42083
beq $20, $21, label63
lw $26, 484($0)
subu $21, $20, $20
label63: addu $21, $21, $20
sw $26, 1312($0)
j label64
lw $20, 2260($0)
subu $26, $21, $20
label64: lw $21, 2352($0)
addu $21, $21, $20
subu $21, $26, $26
lui $20, 32743
sw $26, 492($0)
jal label65
sw $21, 2656($0)
lw $26, 1052($0)
label65:jr $31
sw $26, 2200($0)
j label66
ori $21, $26, 48654
lw $20, 3400($0)
label66: ori $21, $26, 19255
lw $26, 3960($0)
beq $21, $26, label67
lui $21, 23185
sw $26, 1420($0)
label67: sw $21, 1372($0)
subu $21, $20, $21
beq $26, $26, label68
sw $26, 3712($0)
lui $26, 50526
label68: lui $21, 44105
lw $26, 1892($0)
j label69
sw $26, 2228($0)
ori $26, $20, 39347
label69: addu $20, $20, $20
sw $20, 2888($0)
beq $21, $21, label70
addu $26, $26, $20
lw $26, 1176($0)
label70: ori $26, $20, 29733
sw $20, 1484($0)
jal label71
ori $20, $26, 61388
ori $21, $21, 61821
label71:jr $31
sw $21, 12($0)
ori $20, $21, 18283
ori $21, $20, 38593
beq $21, $26, label72
lw $21, 560($0)
lw $21, 2236($0)
label72: subu $21, $21, $21
lw $20, 280($0)
beq $20, $26, label73
sw $21, 2284($0)
ori $26, $20, 37126
label73: sw $20, 2188($0)
lui $26, 15294
beq $20, $20, label74
lui $20, 23816
sw $21, 2648($0)
label74: lui $21, 28310
jal label75
sw $20, 1660($0)
ori $26, $20, 44569
label75:jr $31
subu $26, $26, $21
sw $21, 296($0)
ori $26, $26, 53649
lui $21, 33903
lui $20, 4126
j label76
sw $20, 2732($0)
subu $20, $21, $20
label76: ori $20, $21, 56651
ori $20, $20, 19000
sw $20, 2788($0)
jal label77
lw $26, 2356($0)
subu $26, $26, $21
label77:jr $31
addu $21, $21, $21
subu $26, $21, $21
lui $21, 35473
ori $21, $21, 10598
lw $21, 1848($0)
lui $26, 65265
jal label78
subu $21, $20, $20
lui $20, 64323
label78:jr $31
lw $26, 2060($0)
j label79
sw $26, 264($0)
sw $26, 244($0)
label79: subu $20, $26, $20
lui $26, 63997
addu $21, $26, $20
jal label80
addu $20, $20, $21
sw $21, 2320($0)
label80:jr $31
lui $20, 64382
subu $26, $21, $26
sw $21, 3704($0)
sw $26, 2736($0)
subu $21, $21, $21
lw $20, 2268($0)
lui $26, 24274
subu $21, $26, $26
lw $20, 404($0)
beq $20, $21, label81
subu $26, $21, $20
addu $26, $26, $20
label81: ori $21, $21, 2043
j label82
lui $26, 23089
subu $20, $21, $20
label82: lw $26, 2000($0)
jal label83
subu $21, $21, $20
ori $26, $21, 26791
label83:jr $31
lui $21, 21598
addu $26, $20, $20
sw $26, 3468($0)
j label84
sw $20, 8($0)
subu $21, $26, $21
label84: addu $20, $21, $21
beq $21, $21, label85
sw $21, 3264($0)
addu $21, $20, $26
label85: sw $20, 3516($0)
sw $21, 1044($0)
j label86
addu $26, $20, $26
lw $20, 3872($0)
label86: ori $26, $21, 60551
j label87
lw $21, 1336($0)
sw $20, 1840($0)
label87: subu $26, $26, $21
beq $21, $20, label88
addu $26, $20, $26
lw $20, 2780($0)
label88: lw $26, 1248($0)
ori $21, $26, 52466
addu $26, $21, $20
beq $26, $21, label89
subu $26, $26, $20
lui $21, 16466
label89: sw $21, 2596($0)
sw $20, 1448($0)
beq $26, $26, label90
lui $26, 14170
lui $21, 41107
label90: ori $26, $20, 9336
beq $26, $21, label91
subu $20, $20, $26
addu $26, $26, $26
label91: ori $26, $21, 31755
jal label92
lw $21, 3836($0)
addu $21, $26, $26
label92:jr $31
ori $21, $26, 56113
ori $26, $21, 578
ori $26, $20, 54412
jal label93
sw $20, 2528($0)
ori $26, $21, 27734
label93:jr $31
subu $21, $20, $20
sw $20, 1692($0)
jal label94
subu $26, $26, $26
subu $26, $21, $26
label94:jr $31
lw $20, 3188($0)
j label95
lw $26, 1556($0)
lui $20, 23665
label95: ori $26, $26, 51356
jal label96
lw $20, 1048($0)
ori $20, $26, 33109
label96:jr $31
addu $20, $20, $26
beq $20, $26, label97
sw $20, 2232($0)
sw $26, 3904($0)
label97: lui $21, 40884
lw $20, 1952($0)
jal label98
lui $26, 54412
addu $20, $21, $26
label98:jr $31
sw $20, 2352($0)
j label99
lui $21, 60292
lw $21, 1296($0)
label99: subu $21, $26, $26
j label100
subu $20, $20, $21
subu $26, $26, $26
label100: lw $20, 2888($0)
beq $21, $21, label101
lw $21, 1400($0)
lw $21, 1616($0)
label101: ori $26, $20, 45554
subu $20, $20, $20
ori $21, $21, 4273
jal label102
ori $20, $26, 9529
sw $21, 732($0)
label102:jr $31
ori $21, $21, 34029
lui $26, 23620
ori $26, $21, 48803
subu $21, $21, $20
lui $21, 38268
lui $26, 48420
subu $20, $20, $26
jal label103
ori $21, $20, 14179
lw $20, 1320($0)
label103:jr $31
lw $20, 92($0)
