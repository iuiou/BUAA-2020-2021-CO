.text

li		$t0,0
sw		$t0,400($0)
li		$t0,-2147483648
sw		$t0,404($0)
li		$t0,2147483647
sw		$t0,408($0)
li		$t0,0x7F00
sw		$t0,412($0)
li		$t0,0x7F10
sw		$t0,416($0)

li		$s3,400
li		$s1,5
li		$s0,0

LOOP_BEGIN:
	slt		$s2,$s0,$s1
	beq		$s2,$0,LOOP_END
	lw		$1,0($s3)
	addi	$s3,$s3,4
	#-------------------------
	addi	$t0,$0,-1
	sw		$t0,-16($1)
	addi	$t0,$0,-1
	sw		$t0,-15($1)
	addi	$t0,$0,-1
	sw		$t0,-14($1)
	addi	$t0,$0,-1
	sw		$t0,-13($1)
	addi	$t0,$0,-1
	sw		$t0,-12($1)
	addi	$t0,$0,-1
	sw		$t0,-11($1)
	addi	$t0,$0,-1
	sw		$t0,-10($1)
	addi	$t0,$0,-1
	sw		$t0,-9($1)
	addi	$t0,$0,-1
	sw		$t0,-8($1)
	addi	$t0,$0,-1
	sw		$t0,-7($1)
	addi	$t0,$0,-1
	sw		$t0,-6($1)
	addi	$t0,$0,-1
	sw		$t0,-5($1)
	addi	$t0,$0,-1
	sw		$t0,-4($1)
	addi	$t0,$0,-1
	sw		$t0,-3($1)
	addi	$t0,$0,-1
	sw		$t0,-2($1)
	addi	$t0,$0,-1
	sw		$t0,-1($1)
	addi	$t0,$0,-1
	sw		$t0,0($1)
	addi	$t0,$0,-1
	sw		$t0,1($1)
	addi	$t0,$0,-1
	sw		$t0,2($1)
	addi	$t0,$0,-1
	sw		$t0,3($1)
	addi	$t0,$0,-1
	sw		$t0,4($1)
	addi	$t0,$0,-1
	sw		$t0,5($1)
	addi	$t0,$0,-1
	sw		$t0,6($1)
	addi	$t0,$0,-1
	sw		$t0,7($1)
	addi	$t0,$0,-1
	sw		$t0,8($1)
	addi	$t0,$0,-1
	sw		$t0,9($1)
	addi	$t0,$0,-1
	sw		$t0,10($1)
	addi	$t0,$0,-1
	sw		$t0,11($1)
	addi	$t0,$0,-1
	sw		$t0,12($1)
	addi	$t0,$0,-1
	sw		$t0,13($1)
	addi	$t0,$0,-1
	sw		$t0,14($1)
	addi	$t0,$0,-1
	sw		$t0,15($1)
	addi	$t0,$0,-1
	sw		$t0,16($1)

	addi	$t0,$0,-1
	sh		$t0,-16($1)
	addi	$t0,$0,-1
	sh		$t0,-15($1)
	addi	$t0,$0,-1
	sh		$t0,-14($1)
	addi	$t0,$0,-1
	sh		$t0,-13($1)
	addi	$t0,$0,-1
	sh		$t0,-12($1)
	addi	$t0,$0,-1
	sh		$t0,-11($1)
	addi	$t0,$0,-1
	sh		$t0,-10($1)
	addi	$t0,$0,-1
	sh		$t0,-9($1)
	addi	$t0,$0,-1
	sh		$t0,-8($1)
	addi	$t0,$0,-1
	sh		$t0,-7($1)
	addi	$t0,$0,-1
	sh		$t0,-6($1)
	addi	$t0,$0,-1
	sh		$t0,-5($1)
	addi	$t0,$0,-1
	sh		$t0,-4($1)
	addi	$t0,$0,-1
	sh		$t0,-3($1)
	addi	$t0,$0,-1
	sh		$t0,-2($1)
	addi	$t0,$0,-1
	sh		$t0,-1($1)
	addi	$t0,$0,-1
	sh		$t0,0($1)
	addi	$t0,$0,-1
	sh		$t0,1($1)
	addi	$t0,$0,-1
	sh		$t0,2($1)
	addi	$t0,$0,-1
	sh		$t0,3($1)
	addi	$t0,$0,-1
	sh		$t0,4($1)
	addi	$t0,$0,-1
	sh		$t0,5($1)
	addi	$t0,$0,-1
	sh		$t0,6($1)
	addi	$t0,$0,-1
	sh		$t0,7($1)
	addi	$t0,$0,-1
	sh		$t0,8($1)
	addi	$t0,$0,-1
	sh		$t0,9($1)
	addi	$t0,$0,-1
	sh		$t0,10($1)
	addi	$t0,$0,-1
	sh		$t0,11($1)
	addi	$t0,$0,-1
	sh		$t0,12($1)
	addi	$t0,$0,-1
	sh		$t0,13($1)
	addi	$t0,$0,-1
	sh		$t0,14($1)
	addi	$t0,$0,-1
	sh		$t0,15($1)
	addi	$t0,$0,-1
	sh		$t0,16($1)

	addi	$t0,$0,-1
	sb		$t0,-16($1)
	addi	$t0,$0,-1
	sb		$t0,-15($1)
	addi	$t0,$0,-1
	sb		$t0,-14($1)
	addi	$t0,$0,-1
	sb		$t0,-13($1)
	addi	$t0,$0,-1
	sb		$t0,-12($1)
	addi	$t0,$0,-1
	sb		$t0,-11($1)
	addi	$t0,$0,-1
	sb		$t0,-10($1)
	addi	$t0,$0,-1
	sb		$t0,-9($1)
	addi	$t0,$0,-1
	sb		$t0,-8($1)
	addi	$t0,$0,-1
	sb		$t0,-7($1)
	addi	$t0,$0,-1
	sb		$t0,-6($1)
	addi	$t0,$0,-1
	sb		$t0,-5($1)
	addi	$t0,$0,-1
	sb		$t0,-4($1)
	addi	$t0,$0,-1
	sb		$t0,-3($1)
	addi	$t0,$0,-1
	sb		$t0,-2($1)
	addi	$t0,$0,-1
	sb		$t0,-1($1)
	addi	$t0,$0,-1
	sb		$t0,0($1)
	addi	$t0,$0,-1
	sb		$t0,1($1)
	addi	$t0,$0,-1
	sb		$t0,2($1)
	addi	$t0,$0,-1
	sb		$t0,3($1)
	addi	$t0,$0,-1
	sb		$t0,4($1)
	addi	$t0,$0,-1
	sb		$t0,5($1)
	addi	$t0,$0,-1
	sb		$t0,6($1)
	addi	$t0,$0,-1
	sb		$t0,7($1)
	addi	$t0,$0,-1
	sb		$t0,8($1)
	addi	$t0,$0,-1
	sb		$t0,9($1)
	addi	$t0,$0,-1
	sb		$t0,10($1)
	addi	$t0,$0,-1
	sb		$t0,11($1)
	addi	$t0,$0,-1
	sb		$t0,12($1)
	addi	$t0,$0,-1
	sb		$t0,13($1)
	addi	$t0,$0,-1
	sb		$t0,14($1)
	addi	$t0,$0,-1
	sb		$t0,15($1)
	addi	$t0,$0,-1
	sb		$t0,16($1)

	addi	$t0,$0,-1
	lw		$t0,-16($1)
	addi	$t0,$0,-1
	lw		$t0,-15($1)
	addi	$t0,$0,-1
	lw		$t0,-14($1)
	addi	$t0,$0,-1
	lw		$t0,-13($1)
	addi	$t0,$0,-1
	lw		$t0,-12($1)
	addi	$t0,$0,-1
	lw		$t0,-11($1)
	addi	$t0,$0,-1
	lw		$t0,-10($1)
	addi	$t0,$0,-1
	lw		$t0,-9($1)
	addi	$t0,$0,-1
	lw		$t0,-8($1)
	addi	$t0,$0,-1
	lw		$t0,-7($1)
	addi	$t0,$0,-1
	lw		$t0,-6($1)
	addi	$t0,$0,-1
	lw		$t0,-5($1)
	addi	$t0,$0,-1
	lw		$t0,-4($1)
	addi	$t0,$0,-1
	lw		$t0,-3($1)
	addi	$t0,$0,-1
	lw		$t0,-2($1)
	addi	$t0,$0,-1
	lw		$t0,-1($1)
	addi	$t0,$0,-1
	lw		$t0,0($1)
	addi	$t0,$0,-1
	lw		$t0,1($1)
	addi	$t0,$0,-1
	lw		$t0,2($1)
	addi	$t0,$0,-1
	lw		$t0,3($1)
	addi	$t0,$0,-1
	lw		$t0,4($1)
	addi	$t0,$0,-1
	lw		$t0,5($1)
	addi	$t0,$0,-1
	lw		$t0,6($1)
	addi	$t0,$0,-1
	lw		$t0,7($1)
	addi	$t0,$0,-1
	lw		$t0,8($1)
	addi	$t0,$0,-1
	lw		$t0,9($1)
	addi	$t0,$0,-1
	lw		$t0,10($1)
	addi	$t0,$0,-1
	lw		$t0,11($1)
	addi	$t0,$0,-1
	lw		$t0,12($1)
	addi	$t0,$0,-1
	lw		$t0,13($1)
	addi	$t0,$0,-1
	lw		$t0,14($1)
	addi	$t0,$0,-1
	lw		$t0,15($1)
	addi	$t0,$0,-1
	lw		$t0,16($1)

	addi	$t0,$0,-1
	lh		$t0,-16($1)
	addi	$t0,$0,-1
	lh		$t0,-15($1)
	addi	$t0,$0,-1
	lh		$t0,-14($1)
	addi	$t0,$0,-1
	lh		$t0,-13($1)
	addi	$t0,$0,-1
	lh		$t0,-12($1)
	addi	$t0,$0,-1
	lh		$t0,-11($1)
	addi	$t0,$0,-1
	lh		$t0,-10($1)
	addi	$t0,$0,-1
	lh		$t0,-9($1)
	addi	$t0,$0,-1
	lh		$t0,-8($1)
	addi	$t0,$0,-1
	lh		$t0,-7($1)
	addi	$t0,$0,-1
	lh		$t0,-6($1)
	addi	$t0,$0,-1
	lh		$t0,-5($1)
	addi	$t0,$0,-1
	lh		$t0,-4($1)
	addi	$t0,$0,-1
	lh		$t0,-3($1)
	addi	$t0,$0,-1
	lh		$t0,-2($1)
	addi	$t0,$0,-1
	lh		$t0,-1($1)
	addi	$t0,$0,-1
	lh		$t0,0($1)
	addi	$t0,$0,-1
	lh		$t0,1($1)
	addi	$t0,$0,-1
	lh		$t0,2($1)
	addi	$t0,$0,-1
	lh		$t0,3($1)
	addi	$t0,$0,-1
	lh		$t0,4($1)
	addi	$t0,$0,-1
	lh		$t0,5($1)
	addi	$t0,$0,-1
	lh		$t0,6($1)
	addi	$t0,$0,-1
	lh		$t0,7($1)
	addi	$t0,$0,-1
	lh		$t0,8($1)
	addi	$t0,$0,-1
	lh		$t0,9($1)
	addi	$t0,$0,-1
	lh		$t0,10($1)
	addi	$t0,$0,-1
	lh		$t0,11($1)
	addi	$t0,$0,-1
	lh		$t0,12($1)
	addi	$t0,$0,-1
	lh		$t0,13($1)
	addi	$t0,$0,-1
	lh		$t0,14($1)
	addi	$t0,$0,-1
	lh		$t0,15($1)
	addi	$t0,$0,-1
	lh		$t0,16($1)

	addi	$t0,$0,-1
	lhu		$t0,-16($1)
	addi	$t0,$0,-1
	lhu		$t0,-15($1)
	addi	$t0,$0,-1
	lhu		$t0,-14($1)
	addi	$t0,$0,-1
	lhu		$t0,-13($1)
	addi	$t0,$0,-1
	lhu		$t0,-12($1)
	addi	$t0,$0,-1
	lhu		$t0,-11($1)
	addi	$t0,$0,-1
	lhu		$t0,-10($1)
	addi	$t0,$0,-1
	lhu		$t0,-9($1)
	addi	$t0,$0,-1
	lhu		$t0,-8($1)
	addi	$t0,$0,-1
	lhu		$t0,-7($1)
	addi	$t0,$0,-1
	lhu		$t0,-6($1)
	addi	$t0,$0,-1
	lhu		$t0,-5($1)
	addi	$t0,$0,-1
	lhu		$t0,-4($1)
	addi	$t0,$0,-1
	lhu		$t0,-3($1)
	addi	$t0,$0,-1
	lhu		$t0,-2($1)
	addi	$t0,$0,-1
	lhu		$t0,-1($1)
	addi	$t0,$0,-1
	lhu		$t0,0($1)
	addi	$t0,$0,-1
	lhu		$t0,1($1)
	addi	$t0,$0,-1
	lhu		$t0,2($1)
	addi	$t0,$0,-1
	lhu		$t0,3($1)
	addi	$t0,$0,-1
	lhu		$t0,4($1)
	addi	$t0,$0,-1
	lhu		$t0,5($1)
	addi	$t0,$0,-1
	lhu		$t0,6($1)
	addi	$t0,$0,-1
	lhu		$t0,7($1)
	addi	$t0,$0,-1
	lhu		$t0,8($1)
	addi	$t0,$0,-1
	lhu		$t0,9($1)
	addi	$t0,$0,-1
	lhu		$t0,10($1)
	addi	$t0,$0,-1
	lhu		$t0,11($1)
	addi	$t0,$0,-1
	lhu		$t0,12($1)
	addi	$t0,$0,-1
	lhu		$t0,13($1)
	addi	$t0,$0,-1
	lhu		$t0,14($1)
	addi	$t0,$0,-1
	lhu		$t0,15($1)
	addi	$t0,$0,-1
	lhu		$t0,16($1)

	addi	$t0,$0,-1
	lb		$t0,-16($1)
	addi	$t0,$0,-1
	lb		$t0,-15($1)
	addi	$t0,$0,-1
	lb		$t0,-14($1)
	addi	$t0,$0,-1
	lb		$t0,-13($1)
	addi	$t0,$0,-1
	lb		$t0,-12($1)
	addi	$t0,$0,-1
	lb		$t0,-11($1)
	addi	$t0,$0,-1
	lb		$t0,-10($1)
	addi	$t0,$0,-1
	lb		$t0,-9($1)
	addi	$t0,$0,-1
	lb		$t0,-8($1)
	addi	$t0,$0,-1
	lb		$t0,-7($1)
	addi	$t0,$0,-1
	lb		$t0,-6($1)
	addi	$t0,$0,-1
	lb		$t0,-5($1)
	addi	$t0,$0,-1
	lb		$t0,-4($1)
	addi	$t0,$0,-1
	lb		$t0,-3($1)
	addi	$t0,$0,-1
	lb		$t0,-2($1)
	addi	$t0,$0,-1
	lb		$t0,-1($1)
	addi	$t0,$0,-1
	lb		$t0,0($1)
	addi	$t0,$0,-1
	lb		$t0,1($1)
	addi	$t0,$0,-1
	lb		$t0,2($1)
	addi	$t0,$0,-1
	lb		$t0,3($1)
	addi	$t0,$0,-1
	lb		$t0,4($1)
	addi	$t0,$0,-1
	lb		$t0,5($1)
	addi	$t0,$0,-1
	lb		$t0,6($1)
	addi	$t0,$0,-1
	lb		$t0,7($1)
	addi	$t0,$0,-1
	lb		$t0,8($1)
	addi	$t0,$0,-1
	lb		$t0,9($1)
	addi	$t0,$0,-1
	lb		$t0,10($1)
	addi	$t0,$0,-1
	lb		$t0,11($1)
	addi	$t0,$0,-1
	lb		$t0,12($1)
	addi	$t0,$0,-1
	lb		$t0,13($1)
	addi	$t0,$0,-1
	lb		$t0,14($1)
	addi	$t0,$0,-1
	lb		$t0,15($1)
	addi	$t0,$0,-1
	lb		$t0,16($1)

	addi	$t0,$0,-1
	lbu		$t0,-16($1)
	addi	$t0,$0,-1
	lbu		$t0,-15($1)
	addi	$t0,$0,-1
	lbu		$t0,-14($1)
	addi	$t0,$0,-1
	lbu		$t0,-13($1)
	addi	$t0,$0,-1
	lbu		$t0,-12($1)
	addi	$t0,$0,-1
	lbu		$t0,-11($1)
	addi	$t0,$0,-1
	lbu		$t0,-10($1)
	addi	$t0,$0,-1
	lbu		$t0,-9($1)
	addi	$t0,$0,-1
	lbu		$t0,-8($1)
	addi	$t0,$0,-1
	lbu		$t0,-7($1)
	addi	$t0,$0,-1
	lbu		$t0,-6($1)
	addi	$t0,$0,-1
	lbu		$t0,-5($1)
	addi	$t0,$0,-1
	lbu		$t0,-4($1)
	addi	$t0,$0,-1
	lbu		$t0,-3($1)
	addi	$t0,$0,-1
	lbu		$t0,-2($1)
	addi	$t0,$0,-1
	lbu		$t0,-1($1)
	addi	$t0,$0,-1
	lbu		$t0,0($1)
	addi	$t0,$0,-1
	lbu		$t0,1($1)
	addi	$t0,$0,-1
	lbu		$t0,2($1)
	addi	$t0,$0,-1
	lbu		$t0,3($1)
	addi	$t0,$0,-1
	lbu		$t0,4($1)
	addi	$t0,$0,-1
	lbu		$t0,5($1)
	addi	$t0,$0,-1
	lbu		$t0,6($1)
	addi	$t0,$0,-1
	lbu		$t0,7($1)
	addi	$t0,$0,-1
	lbu		$t0,8($1)
	addi	$t0,$0,-1
	lbu		$t0,9($1)
	addi	$t0,$0,-1
	lbu		$t0,10($1)
	addi	$t0,$0,-1
	lbu		$t0,11($1)
	addi	$t0,$0,-1
	lbu		$t0,12($1)
	addi	$t0,$0,-1
	lbu		$t0,13($1)
	addi	$t0,$0,-1
	lbu		$t0,14($1)
	addi	$t0,$0,-1
	lbu		$t0,15($1)
	addi	$t0,$0,-1
	lbu		$t0,16($1)
	#-------------------------
	addi	$s0,$s0,1
	j		LOOP_BEGIN
LOOP_END:
label: j label
nop
nop
nop

.ktext 0x4180
	mfc0	$t7,$12
	mfc0	$t7,$13
	mfc0	$t7,$14
	addiu	$t7,$t7,4
	mtc0	$t7,$14
	eret
	eret