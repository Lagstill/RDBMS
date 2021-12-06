show databases;
use salesman;

CREATE TABLE salesman (
	SALESMAN_ID INT NOT NULL ,
	NAME CHAR(45),
	CITY CHAR(25),
	COMMISSION FLOAT(3),
	primary key(SALESMAN_ID)
);

CREATE TABLE orders(
	ORD_NO INT NOT NULL,
    PURCH_AMT FLOAT(7),
    ORD_DATE DATETIME,
    CUSTOMER_ID INT NOT NULL,
    SALESMAN_ID INT NOT NULL,
    PRIMARY KEY(ORD_NO)
);

CREATE TABLE customers(
	CUSTOMER_ID INT NOT NULL,
    CUST_NAME CHAR(45),
    CITY CHAR(45),
    GRADE INT ,
    SALESMAN_ID INT NOT NULL,
    PRIMARY KEY(CUSTOMER_ID)
);

CREATE TABLE nobel_win(
	YEAR INT NOT NULL,
    SUBJECT CHAR(25),
    WINNER CHAR(45),
    COUNTRY CHAR(25),
    CATEGORY CHAR(25)
  );
  
CREATE TABLE item_mast(
	PRO_ID INT NOT NULL,
	PRO_NAME CHAR(45),
    PRO_PRICE INT ,
    PRO_COM INT,
    PRIMARY KEY(PRO_ID)
);

CREATE TABLE EMP_DETAILS(
	EMP_IDNO INT NOT NULL,
    EMP_FNAME CHAR(45),
    EMP_LNAME CHAR(45),
    EMP_DEPT INT NOT NULL,
    PRIMARY KEY(EMP_IDNO)
);

INSERT INTO salesman
	(SALESMAN_ID, NAME, CITY, COMMISSION) VALUES
		(5001, 'James Hoog', 'New York', 0.15);
INSERT INTO salesman
	(SALESMAN_ID, NAME, CITY, COMMISSION) VALUES        
        (5002, 'Nail Knite', 'Paris', 0.13);
INSERT INTO salesman 
	(SALESMAN_ID, NAME, CITY, COMMISSION) VALUES
        (5005, 'Pit Alex', 'London', 0.11);
INSERT INTO salesman 
	(SALESMAN_ID, NAME, CITY, COMMISSION) VALUES
        (5006, 'Mc Lyon', 'Paris', 0.14);
INSERT INTO salesman 
	(SALESMAN_ID, NAME, COMMISSION) VALUES
        (5003, 'Lauson Hen', 0.12);
INSERT INTO salesman 
	(SALESMAN_ID, NAME, CITY, COMMISSION) VALUES
        (5007, 'Paul Adam', 'Rome', 0.13);
/*--------------------------------------------------------------------------------*/
INSERT INTO orders
	(ORD_NO,PURCH_AMT,ORD_DATE, CUSTOMER_ID,SALESMAN_ID) VALUES
        (70001,150.5,'2012-10-05',3005,5002);
INSERT INTO orders
	(ORD_NO,PURCH_AMT,ORD_DATE, CUSTOMER_ID,SALESMAN_ID) VALUES
        (70009,270.65,'2012-09-10',3001,5005);
INSERT INTO orders
	(ORD_NO,PURCH_AMT,ORD_DATE, CUSTOMER_ID,SALESMAN_ID) VALUES
        (70002,65.26,'2012-10-05',3002,5001);
INSERT INTO orders
	(ORD_NO,PURCH_AMT,ORD_DATE, CUSTOMER_ID,SALESMAN_ID) VALUES
        (70004,110.5,'2012-8-17',3009,5003);
INSERT INTO orders
	(ORD_NO,PURCH_AMT,ORD_DATE, CUSTOMER_ID,SALESMAN_ID) VALUES
        (70007,948.5,'2012-09-10',3005,5002);
INSERT INTO orders
	(ORD_NO,PURCH_AMT,ORD_DATE, CUSTOMER_ID,SALESMAN_ID) VALUES
        (70005,2400.6,'2012-07-27',3007,5001);
INSERT INTO orders
	(ORD_NO,PURCH_AMT,ORD_DATE, CUSTOMER_ID,SALESMAN_ID) VALUES
        (70008,5760,'2012-09-10',3002,5001);
INSERT INTO orders
	(ORD_NO,PURCH_AMT,ORD_DATE, CUSTOMER_ID,SALESMAN_ID) VALUES
        (70010,1983.43,'2012-10-10',3004,5006);
INSERT INTO orders
	(ORD_NO,PURCH_AMT,ORD_DATE, CUSTOMER_ID,SALESMAN_ID) VALUES
        (70003,2480.4,'2012-10-10',3009,5003);
INSERT INTO orders
	(ORD_NO,PURCH_AMT,ORD_DATE, CUSTOMER_ID,SALESMAN_ID) VALUES
        (70012,250.45,'2012-06-27',3008,5002);
INSERT INTO orders
	(ORD_NO,PURCH_AMT,ORD_DATE, CUSTOMER_ID,SALESMAN_ID) VALUES
        (70011,75.29,'2012-08-17',3003,5007);
INSERT INTO orders
	(ORD_NO,PURCH_AMT,ORD_DATE, CUSTOMER_ID,SALESMAN_ID) VALUES
        (70013,3045.6,'2012-04-25',3002,5001);
	
/*------------------------------------------------------------------------*/
INSERT INTO customers
	(CUSTOMER_ID,CUST_NAME,CITY,GRADE,SALESMAN_ID) VALUES
        (3002,'Nick Rimando','New York',100,5001);
INSERT INTO customers
	(CUSTOMER_ID,CUST_NAME,CITY,GRADE,SALESMAN_ID) VALUES
        (3005,'Graham Zusi','California',200,5002);
INSERT INTO customers
	(CUSTOMER_ID,CUST_NAME,CITY,SALESMAN_ID) VALUES
        (3001,'Brad Guzan','London',5005);
INSERT INTO customers
	(CUSTOMER_ID,CUST_NAME,CITY,GRADE,SALESMAN_ID) VALUES
        (3004,'Fabian Johns','Paris',300,5006);
INSERT INTO customers
	(CUSTOMER_ID,CUST_NAME,CITY,GRADE,SALESMAN_ID) VALUES
        (3007,'Brad Davis','New York',200,5001);
INSERT INTO customers
	(CUSTOMER_ID,CUST_NAME,CITY,GRADE,SALESMAN_ID) VALUES
        (3009,'Geoff Camero','Berlin',100,5003);
INSERT INTO customers
	(CUSTOMER_ID,CUST_NAME,CITY,GRADE,SALESMAN_ID) VALUES
        (3008,'Julian Green','London',300,5002);
INSERT INTO customers
	(CUSTOMER_ID,CUST_NAME,CITY,GRADE,SALESMAN_ID) VALUES
        (3003,'Jozy Altidor','Moscow',200,5007);
/*--------------------------------------------------------------*/

INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1970,'Physics','Hannes Alfven','Sweden','Scientist');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1970,'Physics','Louis Neel','France','Scientist');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1970,'Chemistry','Luis Federico Leloir','France','Scientist');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1970,'Physiology','Ulf von Euler','Sweden','Scientist');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1970,'Physiology','Bernard Katz','Germany','Scientist');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1970,'Literature','Aleksandr Solzhenitsyn','Russia','Linguist');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1970,'Economics','Paul Samuelson','USA','Economist');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1970,'Physiology','Julius Axelrod','USA','Scientist');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1971,'Physics','Dennis Gabor','Hungary','Scientist');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1971,'Chemistry','Gerhard Herzberg','Germany','Scientist');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1971,'Peace','Willy Brandt','Germany','Chancellor');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1971,'Literature','Pablo Neruda','Chile','Linguist');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1971,'Economics','Simon Kuznets','Russia','Economist');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1978,'Peace','Anwar al-Sadat','Egypt','President');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1978,'Peace','Menacham Begin','Israel','Prime Minister');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1987,'Chemistry','Donald J. Cram','USA','Scientist');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1987,'Chemistry','Jean-Marie Lehn','France','Scientist');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1987,'Physiology','Susumu Tonegawa','Japan','Scientist');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1994,'Economics','Reinhard Selten','Germany','Economist');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1994,'Peace','Yitzhak Rabin','Israel','Prime Minister');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1987,'Physics','Johannes Georg Bednorz','Germany','Scientist');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1987,'Literature','Joseph Brodsky','Russia','Linguist');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1987,'Economics','Robert Solow','USA','Economist');
INSERT INTO nobel_win
	(YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY) VALUES
        (1994,'Literature','Kenzaburo Oe','Japan','Linguist');
/*----------------------------------------------------------------------*/
INSERT INTO item_mast
	(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM) VALUES
        (101,'Mother Board',3200,15);
INSERT INTO item_mast
	(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM) VALUES
        (102,'Key Board',450,16);
INSERT INTO item_mast
	(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM) VALUES
        (103,'ZIP Drive',250,14);
INSERT INTO item_mast
	(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM) VALUES
        (104,'Speaker',550,16);
INSERT INTO item_mast
	(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM) VALUES
        (105,'Monitor',5000,11);
INSERT INTO item_mast
	(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM) VALUES
        (106,'DVD Drive',900,12);
INSERT INTO item_mast
	(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM) VALUES
        (107,'CD Drive',800,12);
INSERT INTO item_mast
	(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM) VALUES
        (108,'Printer',2600,13);
INSERT INTO item_mast
	(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM) VALUES
        (109,'Refill Cartridge',350,13);
INSERT INTO item_mast
	(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM) VALUES
        (110,'Mouse',250,12);

/*------------------------------------------------------------------------*/
INSERT INTO emp_details
	(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT) VALUES
        (127323,'Michale','Robbin',57);
INSERT INTO emp_details
	(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT) VALUES
        (526689,'Carlos','Snares',63);
INSERT INTO emp_details
	(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT) VALUES
        (843795,'Enric','Dosio',57);
INSERT INTO emp_details
	(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT) VALUES
        (328717,'Jhon','Snares',63);
INSERT INTO emp_details
	(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT) VALUES
        (444527,'Joseph','Donsi',47);
INSERT INTO emp_details
	(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT) VALUES
        (659831,'Zanifer','Emily',47);
INSERT INTO emp_details
	(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT) VALUES
        (847674,'Kuleswar','Sitaraman',57);
INSERT INTO emp_details
	(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT) VALUES
        (748681,'Henry','Gabriel',47);
INSERT INTO emp_details
	(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT) VALUES
        (555935,'Alex','Manuel',57);
INSERT INTO emp_details
	(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT) VALUES
        (539569,'George','Mardy',27);
INSERT INTO emp_details
	(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT) VALUES
        (733843,'Mario','Saule',63);
INSERT INTO emp_details
	(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT) VALUES
        (631548,'Alan','Snappy',27);
INSERT INTO emp_details
	(EMP_IDNO,EMP_FNAME,EMP_LNAME,EMP_DEPT) VALUES
        (839139,'Maria','Foster',57);





        