REM
CLS
INPUT "ENTER SIZE"; R
DIM A(R, R)
FOR I = 1 TO R
FOR J = 1 TO R
INPUT "ENTER ELEMENT"; A(I, J)
NEXT J
NEXT I
FOR I = 1 TO R
FOR J = 1 TO R
PRINT A(I, J); " ";
NEXT J
PRINT
NEXT I
FOR I = 1 TO R
S1 = S1 + A(I, I)
NEXT I
K = R
FOR I = 1 TO R
S2 = S2 + A(I, K)
K = K - 1
NEXT I
PRINT "SUM {L.D}"; S1
PRINT "SUM {R.D}"; S2
END


