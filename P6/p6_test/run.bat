:start
gen.exe
java -jar Mars_Changed.jar db mc CompactDataAtZero nc test.asm > m.out
java -jar Mars_Changed.jar mc CompactDataAtZero a dump .text HexText code.txt test.asm
iverilog -o tb.out -y D:\verilog\P6 -I D:\verilog\P6 D:\verilog\P6\test.v
vvp tb.out > v.out
del.exe
fc v.out m.out >> log.txt
goto start