java -jar Mars.jar mc CompactDataAtZero a dump 0x00003000-0x00003ffc HexText code.txt testpoint23.asm
java -jar Mars.jar mc CompactDataAtZero a dump 0x00004180-0x00004600 HexText code_handler.txt testpoint23.asm
iverilog -o tb.out -y D:\verilog\P7 -I D:\verilog\P7 D:\verilog\P7\test.v
vvp tb.out > v.out
iverilog -o tb.out -y D:\verilog\zyfyeyetql D:\verilog\zyfyeyetql\test.v
vvp tb.out > m.out
fc v.out m.out
pause