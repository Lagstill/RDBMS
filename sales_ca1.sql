show databases;
use sales_man;
CREATE TABLE salesman (
	SALESMAN_ID INT NOT NULL ,
	NAME CHAR(45),
	CITY CHAR(25),
	COMMISSION FLOAT(3),
	PRIMARY KEY(SALESMAN_ID)
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
	(CUSTOMER_ID,CUST_NAME,CITY,GRADE,SALESMAN_ID) VALUES
        (3001,'Brad Guzan','London',200,5005);
INSERT INTO customers
	(CUSTOMER_ID,CUST_NAME,CITY,GRADE,SALESMAN_ID) VALUES
        (3004,'Fabian Johnson','Paris',300,5006);
INSERT INTO customers
	(CUSTOMER_ID,CUST_NAME,CITY,GRADE,SALESMAN_ID) VALUES
        (3007,'Brad Davis','New York',200,5001);
INSERT INTO customers
	(CUSTOMER_ID,CUST_NAME,CITY,GRADE,SALESMAN_ID) VALUES
        (3009,'Geoff Cameron','Berlin',100,5003);
INSERT INTO customers
	(CUSTOMER_ID,CUST_NAME,CITY,GRADE,SALESMAN_ID) VALUES
        (3008,'Julian Green','London',300,5002);
INSERT INTO customers
	(CUSTOMER_ID,CUST_NAME,CITY,GRADE,SALESMAN_ID) VALUES
        (3003,'Jozy Altidor','Moscow',200,5007);
/*--------------------------------------------------------------*/