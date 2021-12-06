use student;

CREATE TABLE Student(
	ROLL_NO INT NOT NULL,
    NAME CHAR(45),
    ADDRESS CHAR(45),
    PHONE VARCHAR(15),
    AGE INT NOT NULL
  
);

CREATE TABLE customers(
	ID INT NOT NULL,
    NAME CHAR(45),
    AGE INT NOT NULL,
    ADDRESS CHAR(45),
    SALARY INT
  
);

INSERT INTO Student
	(ROLL_NO , NAME,ADDRESS ,PHONE ,AGE) VALUES
        (1,'Ram','Delhi',9455123451,18);
INSERT INTO Student
	(ROLL_NO , NAME,ADDRESS ,PHONE ,AGE) VALUES
        (2,'Ramesh','Gurgaon',9652431543,18);
INSERT INTO Student
	(ROLL_NO , NAME,ADDRESS ,PHONE ,AGE) VALUES
        (3,'Sujit','Rohtak',9156253131,20);
INSERT INTO Student
	(ROLL_NO , NAME,ADDRESS ,PHONE ,AGE) VALUES
        (4,'Suresh','Delhi',9156253131,18);
INSERT INTO Student
	(ROLL_NO , NAME,ADDRESS ,PHONE ,AGE) VALUES
        (3,'Sujit','Rohtak',9156253131,20);
INSERT INTO Student
	(ROLL_NO , NAME,ADDRESS ,PHONE ,AGE) VALUES
        (2,'Ramesh','Gurgaon',9652431543,18);
        
/***********************************************/
INSERT INTO customers
	(ID, NAME,AGE,ADDRESS,SALARY) VALUES
        (1,'Ramesh',32,'Ahmedabad',3000);
INSERT INTO customers
	(ID, NAME,AGE,ADDRESS,SALARY) VALUES
        (2,'Khilan',25,'Delhi',3000);
INSERT INTO customers
	(ID, NAME,AGE,ADDRESS,SALARY) VALUES
        (3,'kaushik',23,'Kota',3000);
INSERT INTO customers
	(ID, NAME,AGE,ADDRESS,SALARY) VALUES
        (4,'Chaitali',25,'Mumbai',7500);
INSERT INTO customers
	(ID, NAME,AGE,ADDRESS,SALARY) VALUES
        (5,'Hardik',27,'Bhopal',9500);
INSERT INTO customers
	(ID, NAME,AGE,ADDRESS,SALARY) VALUES
        (6,'Komal',22,'MP',5500);