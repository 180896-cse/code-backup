REM
CLS
INPUT "SIZE="; S
FOR I = 1 TO S
INPUT "ELEMENT="; A(I)
NEXT I
FOR I = 1 TO S - 1 STEP 1
FOR J = I + 1 TO S STEP 1
IF A(I) > A(J) THEN
SWAP A(I), A(J)
END IF
NEXT J
NEXT I
FOR I = 1 TO S STEP 1
PRINT A(I)
NEXT I
INPUT "ENTER ELEMENT TO BE SEARCHED="; V
L = 1
H = S
M = (L + H) \ 2
F = 0
WHILE (L <= H)
IF A(M) = V THEN
F = 1
L = H + 1
ELSE
IF V > A(M) THEN
L = M + 1
ELSE
IF V < A(M) THEN
H = M - 1
REM PRINT H
END IF
END IF
END IF
M = (L + H) \ 2
WEND
IF F = 1 THEN
PRINT "ELEMENT FOUND"
ELSE
PRINT "ELEMENT NOT FOUND"
END IF
END

