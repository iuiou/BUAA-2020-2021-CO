java -jar Mars_Changed.jar db mc CompactDataAtZero nc test.asm > m.out
java -jar Mars_Changed.jar mc CompactDataAtZero a dump .text HexText code.txt test.asm
iverilog -o tb.out -y D:\verilog\P5 -I D:\verilog\P5 D:\verilog\P5\test.v
vvp tb.out > v.out
del.exe
fc v.out m.out
pause