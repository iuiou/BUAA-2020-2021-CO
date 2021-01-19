java -jar Mars_Changed.jar mc CompactDataAtZero a dump 0x00003000-0x00003ffc HexText code.txt test.asm
java -jar Mars_Changed.jar mc CompactDataAtZero a dump 0x00004180-0x00004600 HexText code_handler.txt test.asm
iverilog -o tb.out -y D:\verilog\P7 -I D:\verilog\P7 D:\verilog\P7\test.v
vvp tb.out > v.out
sort.exe
m_sort.exe
fc aftersort.out maftersort.out
pause