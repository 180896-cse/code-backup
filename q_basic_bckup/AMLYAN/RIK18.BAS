REM
CLS : P = 1
INPUT "ENTER LINE NO.="; L
FOR I = 1 TO L STEP 1
FOR J = 1 TO I STEP 1
PRINT P;
P = 1 - P
NEXT J
PRINT
P = 1
NEXT I
END



