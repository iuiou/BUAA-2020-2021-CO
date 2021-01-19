:goon
genP4.exe
java -jar Mars_Changed.jar mc CompactDataAtZero nc test.asm > m.out
java -jar Mars_Changed.jar mc CompactDataAtZero a dump .text HexText code.txt test.asm
iverilog -o tb.out -y D:\verilog\p4\P4 D:\verilog\p4\P4\test.v
vvp tb.out -v > v.out
sort.exe
m_sort.exe
fc aftersort.out maftersort.out >>  check.txt
goto goon