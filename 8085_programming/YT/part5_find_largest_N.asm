// TO FIND THE LARGEST OF N NOS.
	   MVI C,09
	   LXI H,2060
	   MOV A,M

L1:	   INX H
	   MOV B,M
	   CMP B
	   JC L2

L3:	   DCR C
	   JNZ L1
	   STA 2070
	   HLT

L2:	   MOV A,B
	   STC
	   CMC
	   JMP L3
# ORG 2060
# DB 04,05,89H,45H,54H,02H,91H,45H,06H,90H
