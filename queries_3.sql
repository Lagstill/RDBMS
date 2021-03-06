use employee;
SELECT FIRST_NAME FROM emp WHERE LAST_NAME LIKE '%\%%';
SELECT DEPARTMENT,SUM(SALARY) TOTAL_SALARY FROM emp GROUP BY DEPARTMENT ;
SELECT DEPARTMENT,SUM(SALARY) TOTAL_SALARY FROM emp GROUP BY DEPARTMENT ORDER BY TOTAL_SALARY DESC;
SELECT DEPARTMENT,COUNT(EMPLOYEE_ID) NO_OF_EMP,SUM(SALARY) TOTAL_SALARY FROM emp GROUP BY DEPARTMENT ORDER BY TOTAL_SALARY DESC;
SELECT DEPARTMENT,AVG(SALARY) AVERAGE_SALARY FROM emp GROUP BY DEPARTMENT ORDER BY AVERAGE_SALARY ASC;
SELECT DEPARTMENT,MAX(SALARY) MAXIMUM_SALARY FROM emp GROUP BY DEPARTMENT ORDER BY MAXIMUM_SALARY ASC;
SELECT DEPARTMENT,MIN(SALARY) MINIMUM_SALARY FROM emp GROUP BY DEPARTMENT ORDER BY MINIMUM_SALARY ASC;
SELECT YEAR (JOINING_DATE) JOINING_YEAR,MONTH (JOINING_DATE) JOINING_MONTH, COUNT(*) NO_OF_EMP from emp GROUP BY YEAR (JOINING_DATE), MONTH (JOINING_DATE);
SELECT DEPARTMENT,SUM(SALARY)  TOTAL_SALARY  FROM emp GROUP BY DEPARTMENT HAVING SUM(SALARY)>800000 ORDER BY TOTAL_SALARY DESC ;
SELECT DISTINCT A.* FROM emp A INNER JOIN incentives B ON A.EMPLOYEE_ID = B.EMP_REF_ID;
SELECT * FROM EMP A  JOIN INCENTIVES B ON A.EMPLOYEE_ID = B.EMP_REF_ID;
SELECT DISTINCT A. EMPLOYEE_ID FROM emp A LEFT OUTER JOIN incentives B ON A.EMPLOYEE_ID = B.EMP_REF_ID WHERE B.EMP_REF_ID IS NULL;
SELECT FIRST_NAME, CASE FIRST_NAME WHEN 'John' THEN SALARY * .2 WHEN 'Roy' THEN SALARY * .10 ELSE SALARY * .15 END "Deduced_Amount" FROM EMP;
SELECT CASE DEPARTMENT WHEN 'Banking' THEN 'Bank Dept' WHEN 'Insurance' THEN 'Insurance Dept' WHEN 'Services' THEN 'Services Dept' END FROM EMP;
#DELETE FROM EMP WHERE EMPLOYEE_ID IN (SELECT EMP_REF_ID FROM INCENTIVES);
#INSERT INTO emp (LAST_NAME) VALUES ('''');
SELECT * FROM EMP WHERE LAST_NAME REGEXP '^[0-9]+$';
SELECT * FROM EMP ORDER BY SALARY DESC;
UPDATE INCENTIVES SET INC_AMOUNT = '9000' WHERE EMP_REF_ID =(SELECT EMPLOYEE_ID from EMP where FIRST_NAME = 'John' );
SELECT FIRST_NAME,INC_AMOUNT FROM emp A INNER JOIN incentives B ON A.EMPLOYEE_ID = B.EMP_REF_ID ;
SELECT FIRST_NAME,INC_AMOUNT FROM emp A INNER JOIN incentives B ON A.EMPLOYEE_ID = B.EMP_REF_ID WHERE INC_AMOUNT>3000 ;
SELECT FIRST_NAME,IFNULL(INC_AMOUNT,0) FROM emp A LEFT JOIN incentives B ON A.EMPLOYEE_ID = B.EMP_REF_ID ;
#SELECT DISTINCT A. FIRST_NAME,INC_AMOUNT FROM emp A RIGHT JOIN incentives B ON A.EMPLOYEE_ID = B.EMP_REF_ID ;
SELECT MAX(INC_AMOUNT) FROM emp GROUP BY DEPARTMENT ;
SELECT DEPARTMENT,(SELECT IFNULL (MAX(INC_AMOUNT),0) from INCENTIVES WHERE EMP_REF_ID = EMPLOYEE_ID) Max_incentive FROM EMP;
SELECT * FROM emp ORDER BY SALARY DESC LIMIT 2;
SELECT * FROM emp ORDER BY SALARY DESC LIMIT 8; #N=8
#SELECT FIRST_NAME,MIN(SALARY) FROM (SELECT * FROM emp ORDER BY SALARY DESC LIMIT 2) A;
#SELECT FIRST_NAME,MIN(SALARY) FROM (SELECT * FROM emp ORDER BY SALARY DESC LIMIT 8) A; #N=8
#SELECT FIRST_NAME FROM EMP UNION SELECT LAST_NAME FROM EMP;
#DROP TABLE EMP;
#ALTER TABLE EMP ADD CONSTRAINT EMPLOYEE_PK PRIMARY KEY(EMPLOYEE_ID);
ALTER TABLE EMP ADD CONSTRAINT EMPLOYEE_PK PRIMARY KEY(EMPLOYEE_ID,FIRST_NAME);
ALTER TABLE EMP DROP CONSTRAINT EMPLOYEE_PK;
ALTER TABLE INCENTIVES ADD CONSTRAINT INCENTIVES_FK FOREIGN KEY (EMPLOYEE_REF_ID) REFERENCES EMPLOYEE(EMPLOYEE_ID);
ALTER TABLE INCENTIVES drop CONSTRAINT INCENTIVES_FK;
#CREATE SEQUENCE EMPLOYEE_ID_SEQ START WITH 0 NOMAXVALUE MINVALUE 0 NOCYCLE NOCACHE NOORDER;





