use worker;
SELECT FIRST_NAME AS WORKER_NAME FROM WORKER;
SELECT UPPER(FIRST_NAME) FROM WORKER;
SELECT DISTINCT(DEPARTMENT) FROM WORKER;
SELECT SUBSTRING(FIRST_NAME,1,3) FROM Worker;
SELECT INSTR('Amitabh', 'a') AS match_pos;
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME ) FROM WORKER; 
/*SELECT LOCATE( 'a','Amitabh') AS match_pos;
SELECT POSITION('a' IN 'Amitabh') AS MatchPosition;*/
SELECT RTRIM(FIRST_NAME) FROM WORKER;
SELECT LTRIM(DEPARTMENT) FROM WORKER;
SELECT DISTINCT LENGTH(DEPARTMENT) FROM WORKER;
SELECT REPLACE(FIRST_NAME,'a','A') FROM WORKER;
SELECT * FROM Worker ORDER BY FIRST_NAME ASC;
SELECT * FROM Worker ORDER BY FIRST_NAME ASC ,DEPARTMENT DESC;
SELECT * FROM WORKER WHERE FIRST_NAME LIKE'VIPUL' OR FIRST_NAME LIKE'SATISH';
SELECT * FROM WORKER WHERE FIRST_NAME not LIKE'VIPUL' AND FIRST_NAME not LIKE'SATISH';
SELECT * FROM WORKER WHERE DEPARTMENT LIKE 'ADMIN';
SELECT * FROM WORKER WHERE FIRST_NAME LIKE'%a%';
SELECT * FROM WORKER WHERE FIRST_NAME LIKE'%a';
SELECT * FROM WORKER WHERE FIRST_NAME LIKE'%h' AND LENGTH(FIRST_NAME)=6;
SELECT * FROM Worker WHERE YEAR(JOINING_DATE) = 2014 AND MONTH(JOINING_DATE) = 2;
