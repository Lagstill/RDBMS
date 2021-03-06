use cursors_emp;

CREATE TABLE EMP(
	EMP_IDNO INT NOT NULL,
    EMP_NAME CHAR(45),
    EMP_DEPT INT NOT NULL,
    EMP_SAL INT NOT NULL,
    PRIMARY KEY(EMP_IDNO)
);

CREATE TABLE DEP(
	DNO INT NOT NULL,
    DNAME CHAR(20),
    MANID INT NOT NULL
);

INSERT INTO emp
	(EMP_IDNO,EMP_NAME,EMP_DEPT,EMP_SAL) VALUES
        (100,'Rock',17,1000);
INSERT INTO emp
	(EMP_IDNO,EMP_NAME,EMP_DEPT,EMP_SAL) VALUES
        (101,'Michaele',17,2000);
INSERT INTO emp
	(EMP_IDNO,EMP_NAME,EMP_DEPT,EMP_SAL) VALUES
        (103,'Munch',23,1030);
INSERT INTO emp
	(EMP_IDNO,EMP_NAME,EMP_DEPT,EMP_SAL) VALUES
        (144,'Michigan',27,133440);
INSERT INTO emp
	(EMP_IDNO,EMP_NAME,EMP_DEPT,EMP_SAL) VALUES
        (10,'Stuartt',23,9000);
INSERT INTO emp
	(EMP_IDNO,EMP_NAME,EMP_DEPT,EMP_SAL) VALUES
        (106,'Lucy',78,130660);
INSERT INTO emp
	(EMP_IDNO,EMP_NAME,EMP_DEPT,EMP_SAL) VALUES
        (177,'Shaw',27,10000);
INSERT INTO emp
	(EMP_IDNO,EMP_NAME,EMP_DEPT,EMP_SAL) VALUES
        (180,'Hobbs',23,19999);
/*********************************************************************/

INSERT INTO DEP
	(DNO,DNAME,MANID) VALUES
        (23,'IT',01);
INSERT INTO DEP
	(DNO,DNAME,MANID) VALUES
        (27,'Accounting',101);
INSERT INTO DEP
	(DNO,DNAME,MANID) VALUES
        (17,'Shipping',04);
INSERT INTO DEP
	(DNO,DNAME,MANID) VALUES
        (27,'Accounting',401);
INSERT INTO DEP
	(DNO,DNAME,MANID) VALUES
        (11,'HR',81);
INSERT INTO DEP
	(DNO,DNAME,MANID) VALUES
        (78,'Management',701);
INSERT INTO DEP
	(DNO,DNAME,MANID) VALUES
        (23,'IT',77);
INSERT INTO DEP
	(DNO,DNAME,MANID) VALUES
        (17,'Shipping',50);
/************************************************************************************/
        