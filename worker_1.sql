CREATE TABLE Worker (
	WORKER_ID INT NOT NULL ,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25),
	primary key(WORKER_ID)
);

CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR');
INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin');
INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR');
INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin');
INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin');
INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account');
INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account');
INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_DATE, BONUS_AMOUNT) VALUES
		(001, '16-02-20',5000);
INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_DATE, BONUS_AMOUNT) VALUES
		(002, '16-06-11',3000);
INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_DATE, BONUS_AMOUNT) VALUES
		(003, '16-02-20',4000);
INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_DATE, BONUS_AMOUNT) VALUES
		(001,'16-02-20', 4500);
INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_DATE, BONUS_AMOUNT) VALUES
		(002, '16-06-11',3500);