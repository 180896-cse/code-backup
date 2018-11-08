------------------ AUTHOR ::  JIMUT BAHAN PAL, ST. XAVIER'S COLLEGE  -------------------------------
--------------------------------###########################-----------------------------------------
--												  --
--||||||||||||||||||||||||||||||    VI SPECIAL COMMANDS    |||||||||||||||||||||||||||||||||||||||--
--												  --
--------------------------------###########################-----------------------------------------
--											          --
-- 	USE ESC+1G TO MOVE TO LINE NO. 1 	       						  --	
-- 	USE ESC+GG TO MOVE TO THE END OF THE FILE      						  --
-- 	USE SHIFT+V TO ENTER TO VISUAL MODE AND SELECT AND DELETE ALL THE REQUIRED NO. OF LINES   --
-- 												  --
--------------------------------###########################-----------------------------------------
-- THIS IS THE FILE FOR ALL THE QUERIES DONE BY DR. PARTHA PRATIM CHAKRABORTY IN IIT-KGP YOU TUBE --
----------------------------------------------------------------------------------------------------

--Entity -- Book


CREATE TABLE BOOK
(
	ACC_NO varchar(6) NOT NULL,
	YR_PUB number(4) NOT NULL,
	TITLE varchar(30) NOT NULL
);


INSERT INTO BOOK
VALUES ('AC_001',1998,'DATA STRUCTURES');

INSERT INTO BOOK
VALUES ('AC_002',1972,'OPERATING SYSTEMS');

INSERT INTO BOOK
VALUES ('AC_003',1986,'COMPUTER NETWORKS');

INSERT INTO BOOK
VALUES ('AC_004',1976,'OPERATING SYSTEMS');

INSERT INTO BOOK
VALUES ('AC_005',2014,'LINUX DEVICE DRIVERS');

INSERT INTO BOOK
VALUES ('AC_006',2009,'SQL');


INSERT INTO BOOK
VALUES ('AC_008',2012,'JAVA');


INSERT INTO BOOK
VALUES ('AC_009',2008,'PROGRAMMING WITH C');

INSERT INTO BOOK
VALUES ('AC_010',2008,'JAVA');




-- ENTITY USER

CREATE TABLE USER_
(
	CARD_NO VARCHAR(6) NOT NULL,
	B_NAME VARCHAR(20) NOT NULL,
	B_ADDR VARCHAR(20) NOT NULL	
);

INSERT INTO USER_
VALUES ('CD_001','JIMUT BAHAN PAL','98 D.B. ROAD(E)');


INSERT INTO USER_
VALUES ('CD_002','BIKASH PANDEY','HOWRAH');

INSERT INTO USER_
VALUES ('CD_003','KINGSHUK MUKHERJEE','SODEPUR');

INSERT INTO USER_
VALUES ('CD_004','SOUVIK GHOSH','DUM DUM');

INSERT INTO USER_
VALUES ('CD_005','SHRESHTHA SARKAR','DUM DUM');

INSERT INTO USER_
VALUES ('CD_006','AKASH MANNA','NORTH CALCUTTA');

INSERT INTO USER_
VALUES ('CD_007','SAMIRAN DEY','KALIGHAT');








-- ENTITY SUPPLIER


CREATE TABLE SUPPLIER
(
	S_NAME VARCHAR(20) NOT NULL,
	S_ADDR VARCHAR(20) NOT NULL
);


INSERT INTO SUPPLIER
VALUES('MC-GRAW HILLS','NEW-YORK');

INSERT INTO SUPPLIER
VALUES('NAROSA','DELHI');

INSERT INTO SUPPLIER
VALUES('PHI','KOLKATA');

INSERT INTO SUPPLIER
VALUES('WILLEY','NEW-YORK');








-- BORROW ENTITY


CREATE TABLE BORROW
(
	ACC_NO VARCHAR(6) NOT NULL,
	CARD_NO VARCHAR(6) NOT NULL,
	DOI DATE NOT NULL 
);


INSERT INTO BORROW
VALUES ('AC_001','CD_001','22/07/2017');

INSERT INTO BORROW
VALUES ('AC_003','CD_002','23/05/2017');

INSERT INTO BORROW
VALUES ('AC_006','CD_003','24/05/2017');

INSERT INTO BORROW
VALUES ('AC_005','CD_004','27/05/2017');

INSERT INTO BORROW
VALUES ('AC_008','CD_005','21/07/2017');

INSERT INTO BORROW
VALUES ('AC_009','CD_006','21/06/2017');

INSERT INTO BORROW
VALUES ('AC_002','CD_007','21/04/2017');


-- LET SAMIRAN DEY TAKE JAVA 
-- LET A USER TAKE MORE THAN ONE BOOK

INSERT INTO BORROW
VALUES ('AC_010','CD_007','22/04/2017');


-- SUPP ENTITY




CREATE TABLE SUPP
(
	ACC_NO VARCHAR(6) NOT NULL,
	S_NAME VARCHAR(20) NOT NULL,
	PRICE NUMBER(6) NOT NULL,
	DOS DATE
);


INSERT INTO SUPP
VALUES ('AC_001','MC-GRAW HILLS',500,'21/07/2014');


INSERT INTO SUPP
VALUES ('AC_002','MC-GRAW HILLS',700,'20/05/2002');

INSERT INTO SUPP
VALUES ('AC_003','MC-GRAW HILLS',400,'16/04/1997');

INSERT INTO SUPP
VALUES ('AC_004','NAROSA',1200,'17/04/1990');

INSERT INTO SUPP
VALUES ('AC_005','PHI',1500,'17/06/2014');

INSERT INTO SUPP
VALUES ('AC_008','WILLEY',700,'27/06/2014');

INSERT INTO SUPP
VALUES ('AC_009','WILLEY',9000,'20/06/1976');


--------------------------------------------------
-- TO SEE THE TABLES ONE BY ONE IN THE TERMINAL --
--------------------------------------------------

SELECT * 
FROM BORROW;

----------------------------------

ACC_NO CARD_N DOI
------ ------ --------
AC_001 CD_001 22-07-17
AC_003 CD_002 23-05-17
AC_006 CD_003 24-05-17
AC_005 CD_004 27-05-17
AC_008 CD_005 21-07-17
AC_009 CD_006 21-06-17
AC_002 CD_007 21-04-17


----------------------------------

SELECT *
FROM SUPP;

----------------------------------
ACC_NO S_NAME			 PRICE DOS
------ -------------------- ---------- --------
AC_001 MC-GRAW HILLS		   500 21-07-14
AC_002 MC-GRAW HILLS		   700 20-05-02
AC_003 MC-GRAW HILLS		   400 16-04-97
AC_004 NAROSA			  1200 17-04-90
AC_005 PHI			  1500 17-06-14
AC_008 WILLEY			   700 27-06-14
AC_009 WILLEY			  9000 20-06-76


----------------------------------


SELECT *
FROM BOOK;


----------------------------------

ACC_NO S_NAME			 PRICE DOS
------ -------------------- ---------- --------
AC_001 MC-GRAW HILLS		   500 21-07-14
AC_002 MC-GRAW HILLS		   700 20-05-02
AC_003 MC-GRAW HILLS		   400 16-04-97
AC_004 NAROSA			  1200 17-04-90
AC_005 PHI			  1500 17-06-14
AC_008 WILLEY			   700 27-06-14
AC_009 WILLEY			  9000 20-06-76

----------------------------------


SELECT *
FROM USER_;

----------------------------------

CARD_N B_NAME		    B_ADDR
------ -------------------- --------------------
CD_001 JIMUT BAHAN PAL	    98 D.B. ROAD(E)
CD_002 BIKASH PANDEY	    HOWRAH
CD_003 KINGSHUK MUKHERJEE   SODEPUR
CD_004 SOUVIK GHOSH	    DUM DUM
CD_005 SHRESHTHA SARKAR     DUM DUM
CD_006 AKASH MANNA	    NORTH CALCUTTA
CD_007 SAMIRAN DEY	    KALIGHAT


----------------------------------


SELECT *
FROM SUPPLIER;


----------------------------------
ACC_NO	   YR_PUB TITLE
------ ---------- ------------------------------
AC_001	     1998 DATA STRUCTURES
AC_002	     1972 OPERATING SYSTEMS
AC_003	     1986 COMPUTER NETWORKS
AC_004	     1976 OPERATING SYSTEMS
AC_005	     2014 LINUX DEVICE DRIVERS
AC_006	     2009 SQL
AC_008	     2012 JAVA
AC_009	     2008 PROGRAMMING WITH C


----------------------------------

---------------------------------------------
-- QUERIES FROM P.P.CHACKRABORTY's CLASSES --
---------------------------------------------


-- SELECT TITLE FROM BOOK

SELECT TITLE 
FROM BOOK;

------------------------------


TITLE
------------------------------
DATA STRUCTURES
OPERATING SYSTEMS
COMPUTER NETWORKS
OPERATING SYSTEMS
LINUX DEVICE DRIVERS
SQL
JAVA
PROGRAMMING WITH C



-----------------------------



-- SELECT DISTINCT TITLE FROM BOOK

SELECT DISTINCT TITLE
FROM BOOK;

----------------------------


TITLE
------------------------------
PROGRAMMING WITH C
DATA STRUCTURES
COMPUTER NETWORKS
JAVA
OPERATING SYSTEMS
SQL
LINUX DEVICE DRIVERS



----------------------------

-- SELECT ACC_NO,YR_PUB

SELECT ACC_NO,YR_PUB
FROM BOOK
WHERE TITLE='JAVA';


-- INTERSECTION OPERATION

SELECT ACC_NO
FROM BOOK
WHERE TITLE = 'COMPILER DESIGN'
INTERSECTION
SELECT ACC_NO
FROM BORROW;
---------------------? WHAT IS INTERSECTION BTW ? :-/



-- NATURAL JOIN
SELECT *
FROM BOOK,BORROW
WHERE BOOK.ACC_NO=BORROW.ACC_NO;

---------------------------------------------------

ACC_NO	   YR_PUB TITLE 			 ACC_NO CARD_N DOI
------ ---------- ------------------------------ ------ ------ --------
AC_001	     1998 DATA STRUCTURES		 AC_001 CD_001 22-07-17
AC_002	     1972 OPERATING SYSTEMS		 AC_002 CD_007 21-04-17
AC_003	     1986 COMPUTER NETWORKS		 AC_003 CD_002 23-05-17
AC_005	     2014 LINUX DEVICE DRIVERS		 AC_005 CD_004 27-05-17
AC_006	     2009 SQL				 AC_006 CD_003 24-05-17
AC_008	     2012 JAVA				 AC_008 CD_005 21-07-17
AC_009	     2008 PROGRAMMING WITH C		 AC_009 CD_006 21-06-17

---------------------------------------------------

-- TO FIND OUT THE CARD NUMBER OF BORROWERS WHO HAVE TAKEN A BOOK
-- TITLED "COMPILER DESIGN"
-- LET MAKE IT DATA STRUCTURES


SELECT CARD_NO
FROM BORROW,BOOK
WHERE BOOK.ACC_NO=BORROW.ACC_NO AND BOOK.TITLE='DATA STRUCTURES';

----------------------------------------

ACC_NO CARD_N DOI      ACC_NO	  YR_PUB TITLE
------ ------ -------- ------ ---------- ------------------------------
AC_001 CD_001 22-07-17 AC_001	    1998 DATA STRUCTURES



----------------------------------------


-- TO FIND OUT THE DETAILS OF BORROWERS WHO HAVE TAKEN A BOOK
-- TITLED "COMPILER DESIGN"
-- LET MAKE IT DATA STRUCTURES

SELECT *
FROM BORROW,BOOK
WHERE BOOK.ACC_NO=BORROW.ACC_NO AND BOOK.TITLE='DATA STRUCTURES';




-- LET'S TRY FOR THE WHOLE NATURAL JOIN OPERATION


SELECT * 
FROM BOOK,BORROW,SUPP,USER_,SUPPLIER
WHERE BOOK.ACC_NO=SUPP.ACC_NO 
	AND BOOK.ACC_NO=BORROW.ACC_NO
	AND BORROW.CARD_NO=USER_.CARD_NO 
	AND SUPP.S_NAME=SUPPLIER.S_NAME;


-------------- OUTPUT ---------------

ACC_NO	   YR_PUB TITLE 			 ACC_NO CARD_N DOI	ACC_NO
------ ---------- ------------------------------ ------ ------ -------- ------
S_NAME			  PRICE DOS	 CARD_N B_NAME
-------------------- ---------- -------- ------ --------------------
B_ADDR		     S_NAME		  S_ADDR
-------------------- -------------------- --------------------
AC_001	     1998 DATA STRUCTURES		 AC_001 CD_001 22-07-17 AC_001
MC-GRAW HILLS		    500 21-07-14 CD_001 JIMUT BAHAN PAL
98 D.B. ROAD(E)      MC-GRAW HILLS	  NEW-YORK

AC_003	     1986 COMPUTER NETWORKS		 AC_003 CD_002 23-05-17 AC_003
MC-GRAW HILLS		    400 16-04-97 CD_002 BIKASH PANDEY
HOWRAH		     MC-GRAW HILLS	  NEW-YORK

ACC_NO	   YR_PUB TITLE 			 ACC_NO CARD_N DOI	ACC_NO
------ ---------- ------------------------------ ------ ------ -------- ------
S_NAME			  PRICE DOS	 CARD_N B_NAME
-------------------- ---------- -------- ------ --------------------
B_ADDR		     S_NAME		  S_ADDR
-------------------- -------------------- --------------------

AC_005	     2014 LINUX DEVICE DRIVERS		 AC_005 CD_004 27-05-17 AC_005
PHI			   1500 17-06-14 CD_004 SOUVIK GHOSH
DUM DUM 	     PHI		  KOLKATA

AC_008	     2012 JAVA				 AC_008 CD_005 21-07-17 AC_008
WILLEY			    700 27-06-14 CD_005 SHRESHTHA SARKAR

ACC_NO	   YR_PUB TITLE 			 ACC_NO CARD_N DOI	ACC_NO
------ ---------- ------------------------------ ------ ------ -------- ------
S_NAME			  PRICE DOS	 CARD_N B_NAME
-------------------- ---------- -------- ------ --------------------
B_ADDR		     S_NAME		  S_ADDR
-------------------- -------------------- --------------------
DUM DUM 	     WILLEY		  NEW-YORK

AC_009	     2008 PROGRAMMING WITH C		 AC_009 CD_006 21-06-17 AC_009
WILLEY			   9000 20-06-76 CD_006 AKASH MANNA
NORTH CALCUTTA	     WILLEY		  NEW-YORK

AC_002	     1972 OPERATING SYSTEMS		 AC_002 CD_007 21-04-17 AC_002

ACC_NO	   YR_PUB TITLE 			 ACC_NO CARD_N DOI	ACC_NO
------ ---------- ------------------------------ ------ ------ -------- ------
S_NAME			  PRICE DOS	 CARD_N B_NAME
-------------------- ---------- -------- ------ --------------------
B_ADDR		     S_NAME		  S_ADDR
-------------------- -------------------- --------------------
MC-GRAW HILLS		    700 20-05-02 CD_007 SAMIRAN DEY
KALIGHAT	     MC-GRAW HILLS	  NEW-YORK


-------------------------------------



-- FIND OUT THE NAME AND ADDRESS OF THOSE BORROWERS WHO HAVE ISSUED A BOOK ON
-- 21/07/2017

SELECT B_NAME,B_ADDR
FROM USER_,BORROW
WHERE BORROW.CARD_NO = USER_.CARD_NO 
	AND BORROW.DOI='21/07/2017';

----------- OUTPUT -------------


B_NAME		     B_ADDR
-------------------- --------------------
SHRESHTHA SARKAR     DUM DUM


----------------------------------


-- USING ALIASES VARIABLES

SELECT DISTINCT B_NAME,B_ADDR
FROM USER_ U, BORROW T
WHERE U.CARD_NO=T.CARD_NO
	AND DOI='23/05/2017';




------------------------------

B_NAME		     B_ADDR
-------------------- --------------------
BIKASH PANDEY	     HOWRAH


------------------------------


-- FIND OUT THE NAME OF ALL BORROWERS WHO HAVE THE SAME ADDRESS AS "SOUVIK GHOSH"

SELECT T.B_NAME 
FROM USER_ T,USER_ S
WHERE S.B_NAME='SOUVIK GHOSH'
	AND T.B_ADDR=S.B_ADDR;


-------------------------------

B_NAME
--------------------
SOUVIK GHOSH
SHRESHTHA SARKAR


------------------------------

SELECT T.ACC_NO,T.S_NAME
FROM SUPP T, SUPP S
WHERE T.PRICE > S.PRICE
	 AND S.S_NAME='NAROSA';


--------------------------------


ACC_NO S_NAME
------ --------------------
AC_005 PHI
AC_009 WILLEY

--------------------------------



---------- THIS QUERY IS FUNCTIONAL ----------


SELECT ACC_NO,S_NAME
FROM SUPP
WHERE PRICE>ALL(SELECT PRICE
		FROM SUPP
		WHERE S_NAME='NAROSA');


-----------------------------------

ACC_NO S_NAME
------ --------------------
AC_005 PHI
AC_009 WILLEY


----------------------------------


SELECT *
FROM SUPP
WHERE PRICE < ALL(SELECT PRICE 
		FROM SUPP
		WHERE S_NAME='WILLEY');


-----------------------------

ACC_NO S_NAME			 PRICE DOS
------ -------------------- ---------- --------
AC_001 MC-GRAW HILLS		   500 21-07-14
AC_003 MC-GRAW HILLS		   400 16-04-97

-----------------------------



-- TO FIND THE MAXIMUM PRICE OF A BOOK IF BYCHANCE THE SUPPLIER HAS
-- MORE THAN ONE BOOK, THIS QUERY FINDS THE MAXIMUM OF ALL THE PRICE 
-- IN A GIVEN LIST OF BOOKS


SELECT PRICE
FROM SUPP
WHERE S_NAME='MC-GRAW HILLS' AND
		PRICE >= ALL
		(SELECT PRICE
		FROM SUPP
		WHERE S_NAME='MC-GRAW HILLS');


----------------------------------

     PRICE
----------
       700


----------------------------------



SELECT S.PRICE
FROM SUPP S,SUPP T
WHERE (S.PRICE > T.PRICE
	AND S.S_NAME='MC-GRAW HILLS'
	AND T.S_NAME='MC-GRAW HILLS');

-------------------------

     PRICE
----------
       500
       700
       700

-------------------------

-------------- DISFUNCTIONAL QUERY :-(

SELECT T.S_NAME
FROM SUPP T
WHERE (SELECT TITLE
	FROM BOOKS
	WHERE T.ACC_NO = S.ACC_NO)
	CONTAINS
	(SELECT TITLE
	 FROM BOOK,USER_,BORROW
	 WHERE BOOK.ACC_NO=BORROW.ACC_NO	
	 	AND USER_.CARD_NO=BORROW.CARD_NO
		AND USER_.B_NAME='SOUVIK GHOSH');




SELECT T.S_NAME
FROM SUPP T, SUPP S
WHERE (SELECT S.TITLE
        FROM BOOKS
        WHERE T.ACC_NO = S.ACC_NO);



--------------------------



SELECT B_NAME
FROM USER_ T
WHERE EXISTS
	(SELECT *
	 FROM SUPP,BORROW
	 WHERE SUPP.ACC_NO=BORROW.ACC_NO
	 AND T.CARD_NO=BORROW.CARD_NO
	 AND S_NAME='WILLEY');


------------------


B_NAME
--------------------
SHRESHTHA SARKAR
AKASH MANNA


------------------





SELECT S_NAME
FROM SUPP
WHERE PRICE>500
ORDER BY S_NAME;




-----------------

S_NAME
--------------------
MC-GRAW HILLS
NAROSA
PHI
WILLEY
WILLEY

-----------------



SELECT *
FROM SUPP
WHERE PRICE>500
ORDER BY S_NAME;


---------------------

ACC_NO S_NAME			 PRICE DOS
------ -------------------- ---------- --------
AC_002 MC-GRAW HILLS		   700 20-05-02
AC_004 NAROSA			  1200 17-04-90
AC_005 PHI			  1500 17-06-14
AC_008 WILLEY			   700 27-06-14
AC_009 WILLEY			  9000 20-06-76


---------------------


-- TO SELECT DISTINCT SUPPLIER NAME FROM THE SUPPLIER
-- TABLE WHOSE PRICE IS GREATER THAN 500

SELECT DISTINCT S_NAME
FROM SUPP
WHERE PRICE>500
ORDER BY S_NAME;



---------------------------

S_NAME
--------------------
MC-GRAW HILLS
NAROSA
PHI
WILLEY


---------------------------

-- MORE EXAMPLES ON ORDER BY

SELECT * 
FROM BOOK
ORDER BY YR_PUB ASC,ACC_NO DESC;


---------------------------

ACC_NO	   YR_PUB TITLE
------ ---------- ------------------------------
AC_002	     1972 OPERATING SYSTEMS
AC_004	     1976 OPERATING SYSTEMS
AC_003	     1986 COMPUTER NETWORKS
AC_001	     1998 DATA STRUCTURES
AC_010	     2008 JAVA
AC_009	     2008 PROGRAMMING WITH C
AC_006	     2009 SQL
AC_008	     2012 JAVA
AC_005	     2014 LINUX DEVICE DRIVERS

---------------------------


-- GROUP BY CLAUSE



SELECT S_NAME,AVG(PRICE)
FROM SUPP
GROUP BY S_NAME;




-----------------------

S_NAME		     AVG(PRICE)
-------------------- ----------
PHI			   1500
WILLEY			   4850
NAROSA			   1200
MC-GRAW HILLS	     533.333333


-----------------------


SELECT S_NAME,AVG(PRICE)
FROM SUPP
GROUP BY S_NAME 
ORDER BY S_NAME ASC;



----------------\

S_NAME		     AVG(PRICE)
-------------------- ----------
MC-GRAW HILLS	     533.333333
NAROSA			   1200
PHI			   1500
WILLEY			   4850


----------------/


SELECT S_NAME,SUM(PRICE),MAX(PRICE),MIN(PRICE)
FROM SUPP
GROUP BY S_NAME;


-----------\

S_NAME		     SUM(PRICE) MAX(PRICE) MIN(PRICE)
-------------------- ---------- ---------- ----------
PHI			   1500       1500	 1500
WILLEY			   9700       9000	  700
NAROSA			   1200       1200	 1200
MC-GRAW HILLS		   1600        700	  400


-----------/


SELECT S_NAME,COUNT(S_NAME) AS NO_OF_BOOKS_SUPPLIED
FROM SUPP
GROUP BY S_NAME;

------------\

S_NAME		     NO_OF_BOOKS_SUPPLIED
-------------------- --------------------
PHI					1
WILLEY					2
NAROSA					1
MC-GRAW HILLS				3

------------/



-- SUM OF ALL THE PRICE OF THE BOOKS SUPPLIED BY NAROSA


SELECT SUM(PRICE)
FROM SUPP
WHERE S_NAME='MC-GRAW HILLS';


------------------\

SUM(PRICE)
----------
      1600


------------------/


-- SUM OF ALL THE SELECTED BOOKS
-- DISFUNCTIONAL QUERY


SELECT SUM(PRICE)
FROM SUPP
WHERE S_NAME='NAROSA' AND S_NAME='PHI';




-- TO USE HAVING CLAUSE

SELECT TITLE 
FROM BOOK
GROUP BY TITLE
HAVING COUNT(ACC_NO)>=2;



---------------------\


TITLE
------------------------------
JAVA
OPERATING SYSTEMS


---------------------/




SELECT TITLE
FROM BOOK
GROUP BY TITLE
HAVING COUNT(ALL TITLE)>=2;



---------------------\

TITLE
------------------------------
JAVA
OPERATING SYSTEMS

---------------------/


-- LIST SUPPLIER NAMES WITH THE TOTAL
-- NO. OF BOOKS SUPPLIED BY EACH SUPPLIER
-- AND THE TOTAL VALUE OF BOOKS SUPPLIED
-- BY THEM


SELECT S.S_NAME,COUNT(B.TITLE) AS TOTAL_BOOKS_SUPPLIED,SUM(PRICE) AS SUM_OF_THE_PRICE
FROM SUPP S,BOOK B
WHERE S.ACC_NO=B.ACC_NO
GROUP BY S.S_NAME;



-----------------\

S_NAME		     TOTAL_BOOKS_SUPPLIED SUM_OF_THE_PRICE
-------------------- -------------------- ----------------
PHI					1	      1500
WILLEY					2	      9700
NAROSA					1	      1200
MC-GRAW HILLS				3	      1600

-----------------/

-- LIST OUT THE NAMES OF ALL THE BORROWERS AND THE
-- NUMBER OF DISTINCT TITLES
-- OF BOOKS USED BY THEM



-- NATURAL JOIN

SELECT *
FROM BOOK BK,BORROW BR,USER_ USR
WHERE BK.ACC_NO=BR.ACC_NO
      AND USR.CARD_NO=BR.CARD_NO;


---------------------------\


ACC_NO	   YR_PUB TITLE 			 ACC_NO CARD_N DOI	CARD_N
------ ---------- ------------------------------ ------ ------ -------- ------
B_NAME		     B_ADDR
-------------------- --------------------
AC_001	     1998 DATA STRUCTURES		 AC_001 CD_001 22-07-17 CD_001
JIMUT BAHAN PAL      98 D.B. ROAD(E)

AC_002	     1972 OPERATING SYSTEMS		 AC_002 CD_007 21-04-17 CD_007
SAMIRAN DEY	     KALIGHAT

AC_003	     1986 COMPUTER NETWORKS		 AC_003 CD_002 23-05-17 CD_002
BIKASH PANDEY	     HOWRAH


ACC_NO	   YR_PUB TITLE 			 ACC_NO CARD_N DOI	CARD_N
------ ---------- ------------------------------ ------ ------ -------- ------
B_NAME		     B_ADDR
-------------------- --------------------
AC_005	     2014 LINUX DEVICE DRIVERS		 AC_005 CD_004 27-05-17 CD_004
SOUVIK GHOSH	     DUM DUM

AC_006	     2009 SQL				 AC_006 CD_003 24-05-17 CD_003
KINGSHUK MUKHERJEE   SODEPUR

AC_008	     2012 JAVA				 AC_008 CD_005 21-07-17 CD_005
SHRESHTHA SARKAR     DUM DUM


ACC_NO	   YR_PUB TITLE 			 ACC_NO CARD_N DOI	CARD_N
------ ---------- ------------------------------ ------ ------ -------- ------
B_NAME		     B_ADDR
-------------------- --------------------
AC_009	     2008 PROGRAMMING WITH C		 AC_009 CD_006 21-06-17 CD_006
AKASH MANNA	     NORTH CALCUTTA




---------------------------/





-- LIST OUT THE NAMES OF ALL THE BORROWERS AND THE
-- NUMBER OF DISTINCT TITLES
-- OF BOOKS USED BY THEM


SELECT USR.B_NAME,COUNT(DISTINCT TITLE)
FROM BOOK BK,BORROW BR,USER_ USR
WHERE BK.ACC_NO=BR.ACC_NO
      AND USR.CARD_NO=BR.CARD_NO
GROUP BY BR.BR_NAME;



-- NAMES OF ALL BORROWERS AND LIST OUT THE TOTAL NUMBER OF BOOK
-- USED BY THEM




SELECT B_NAME,COUNT(ACC_NO)
FROM USER_ USR,BORROW BR
WHERE USR.CARD_NO=BR.CARD_NO
GROUP BY B_NAME;


----------------------\

B_NAME		     COUNT(ACC_NO)
-------------------- -------------
JIMUT BAHAN PAL 		 1
SAMIRAN DEY			 2
BIKASH PANDEY			 1
AKASH MANNA			 1
SHRESHTHA SARKAR		 1
KINGSHUK MUKHERJEE		 1
SOUVIK GHOSH			 1

----------------------/



SELECT B_NAME,COUNT(ACC_NO)
FROM USER_ USR,BORROW BR
WHERE USR.CARD_NO=BR.CARD_NO
GROUP BY B_NAME
ORDER BY B_NAME ASC;




-- DELETION OPERATION

DELETE BORROW
WHERE CARD_NO IN
	     	(SELECT CARD_NO
		 FROM USER_
		 WHERE B_NAME='JIMUT BAHAN PAL');



--------------------\\


---  BEFORE TABLE ::


ACC_NO CARD_N DOI
------ ------ --------
AC_001 CD_001 22-07-17
AC_003 CD_002 23-05-17
AC_006 CD_003 24-05-17
AC_005 CD_004 27-05-17
AC_008 CD_005 21-07-17
AC_009 CD_006 21-06-17
AC_002 CD_007 21-04-17
AC_010 CD_007 22-04-17


-- AFTER THE DELETION OPERATION ::


ACC_NO CARD_N DOI
------ ------ --------
AC_003 CD_002 23-05-17
AC_006 CD_003 24-05-17
AC_005 CD_004 27-05-17
AC_008 CD_005 21-07-17
AC_009 CD_006 21-06-17
AC_002 CD_007 21-04-17
AC_010 CD_007 22-04-17


----------------//


-- DELETE ENTRIES OF BOOKS FROM BORROW FOR BOOKS ISSUED BY 'SOUVIK GHOSH' ON
-- 27/05/2017


DELETE BORROW
WHERE CARD_NO IN (SELECT CARD_NO
		  FROM USER_
		  WHERE B_NAME='SOUVIK GHOSH')
		AND DOI='27/05/2017';

-----------------------------\

-- BEFORE :

ACC_NO CARD_N DOI
------ ------ --------
AC_003 CD_002 23-05-17
AC_006 CD_003 24-05-17
AC_005 CD_004 27-05-17
AC_008 CD_005 21-07-17
AC_009 CD_006 21-06-17
AC_002 CD_007 21-04-17
AC_010 CD_007 22-04-17
AC_001 CD_001 22-07-17


-- AFTER  :


ACC_NO CARD_N DOI
------ ------ --------
AC_003 CD_002 23-05-17
AC_006 CD_003 24-05-17
AC_008 CD_005 21-07-17
AC_009 CD_006 21-06-17
AC_002 CD_007 21-04-17
AC_010 CD_007 22-04-17
AC_001 CD_001 22-07-17


-----------------------------/


SELECT CARD_NO
FROM USER_
WHERE B_NAME='SOUVIK GHOSH';



----------------\


CARD_N
------
CD_004

----------------/




UPDATE SUPP
SET DOS='22/5/2002'
WHERE ACC_NO='AC_002';



--------------------\

-- BEFORE :

ACC_NO S_NAME			 PRICE DOS
------ -------------------- ---------- --------
AC_001 MC-GRAW HILLS		   500 21-07-14
AC_002 MC-GRAW HILLS		   700 20-05-02
AC_003 MC-GRAW HILLS		   400 16-04-97
AC_004 NAROSA			  1200 17-04-90
AC_005 PHI			  1500 17-06-14
AC_008 WILLEY			   700 27-06-14
AC_009 WILLEY			  9000 20-06-76

-- AFTER :

ACC_NO S_NAME			 PRICE DOS
------ -------------------- ---------- --------
AC_001 MC-GRAW HILLS		   500 21-07-14
AC_002 MC-GRAW HILLS		   700 22-05-02
AC_003 MC-GRAW HILLS		   400 16-04-97
AC_004 NAROSA			  1200 17-04-90
AC_005 PHI			  1500 17-06-14
AC_008 WILLEY			   700 27-06-14
AC_009 WILLEY			  9000 20-06-76


--------------------/


UPDATE SUPP
SET PRICE=PRICE*0.95
WHERE S_NAME='MC-GRAW HILLS'
	     AND ACC_NO='AC_002';


-------------------------\

-- BEFORE :


ACC_NO S_NAME                    PRICE DOS
------ -------------------- ---------- --------
AC_001 MC-GRAW HILLS               500 21-07-14
AC_002 MC-GRAW HILLS               700 22-05-02
AC_003 MC-GRAW HILLS               400 16-04-97
AC_004 NAROSA                     1200 17-04-90
AC_005 PHI                        1500 17-06-14
AC_008 WILLEY                      700 27-06-14
AC_009 WILLEY                     9000 20-06-76


-- AFTER :

ACC_NO S_NAME			 PRICE DOS
------ -------------------- ---------- --------
AC_001 MC-GRAW HILLS		   500 21-07-14
AC_002 MC-GRAW HILLS		   665 22-05-02
AC_003 MC-GRAW HILLS		   400 16-04-97
AC_004 NAROSA			  1200 17-04-90
AC_005 PHI			  1500 17-06-14
AC_008 WILLEY			   700 27-06-14
AC_009 WILLEY			  9000 20-06-76

-------------------------/







