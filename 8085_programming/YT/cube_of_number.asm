// PROGRAM TO FIND THE CUBE OF A GIVEN NUMBER
	   LXI H,2060
	   MOV A,M
	   MOV D,M
	   MOV B,M
	   MOV C,M
	   DCR B

L1:	   ADD D
	   DCR B
	   JNZ L1
	   DCR C
	   JNZ L2
	   STA 2080
	   HLT

L2:	   MOV B,M
	   JMP L1
# ORG 2060
# DB 04
