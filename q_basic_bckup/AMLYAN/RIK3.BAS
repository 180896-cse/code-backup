REM
CLS
INPUT "INCOME"; N
IF N <= 100000 THEN
T = 0
ELSE
IF N <= 250000 THEN
T = ((N - 100000) * 10) \ 100
ELSE
IF N <= 500000 THEN
T = 25000 + ((N - 250000) * 15) \ 100
ELSE
IF N <= 1000000 THEN
T = 35000 + ((N - 500000) * 25) \ 100
ELSE
IF N > 1000000 THEN
T = 45000 + ((N - 1000000) * 35) \ 100
END IF
END IF
END IF
END IF
END IF
PRINT "TAX ="; T
END

