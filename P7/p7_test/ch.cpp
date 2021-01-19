#include <bits/stdc++.h>

using namespace std;

int main(){
	freopen("run once.bat", "w", stdout);
	for(int i = 1;i <= 371;i++){
		printf("java -jar Mars.jar mc CompactDataAtZero a dump 0x00003000-0x00003ffc HexText code.txt testpoint%d.asm\n\
java -jar Mars.jar mc CompactDataAtZero a dump 0x00004180-0x00004600 HexText code_handler.txt testpoint%d.asm\n\
iverilog -o tb.out -y D:\\verilog\\P7 -I D:\\verilog\\P7 D:\\verilog\\P7\\test.v\n\
vvp tb.out > v.out\n\
iverilog -o tb.out -y D:\\verilog\\zyfyeyetql D:\\verilog\\zyfyeyetql\\test.v\n\
vvp tb.out > m.out\n\
fc v.out m.out >> log.txt\n", i, i);
	}
}

