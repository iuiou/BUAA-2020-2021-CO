#include <bits/stdc++.h>

using namespace std;

vector<int> r;
mt19937 mt(time(0));
uniform_int_distribution<int> 
	imm16(0, (1 << 16) - 1), 
	siz(0, 1023), 
	grf(1, 30),
	I(1, 6),
	J(7, 7),
	IJ(1, 7);
	
int cnt;

void solve(int);

int getR(){
	return grf(mt);
}

void addu(){
	printf("addu $%d, $%d, $%d\n", getR(), getR(), getR());
}

void subu(){
	printf("subu $%d, $%d, $%d\n", getR(), getR(), getR());
}

void ori(){
	printf("ori $%d, $%d, %d\n", getR(), getR(), imm16(mt));
}

void lw(){
	printf("lw $%d, %d($0)\n", getR(), siz(mt) * 4);
}

void sw(){
	printf("sw $%d, %d($0)\n", getR(), siz(mt) * 4);
}

void lui(){
	printf("lui $%d, %d\n", getR(), imm16(mt));
}

void beq(){
	printf("beq $%d, $%d, label%d\n", getR(), getR(), ++cnt);
	solve(I(mt));
	solve(I(mt));
	solve(I(mt));
	printf("label%d: ", cnt);
	solve(I(mt));
}

void solve(int i){
	switch(i){
		case 1:
			addu();
			break;
		case 2:
			subu();
			break;
		case 3:
			ori();
			break;
		case 4:
			lw();
			break;
		case 5:
			sw();
			break;
		case 6:
			lui();
			break;
		case 7:
			beq();
			break;							 
	}
}

int main(){
	freopen("test.asm", "w", stdout);
	for(int i = 1;i <= 30;i++){
		int x = IJ(mt);
		if(x > 6) i += 5;
		solve(x);
	}
}
