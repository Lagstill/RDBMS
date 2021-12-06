/***********TRANSACTIONS***************/
SET SQL_SAFE_UPDATES=0;
DELETE FROM Student WHERE AGE = 20;
COMMIT;

SET autocommit=0;
START TRANSACTION; 
DELETE FROM Student WHERE AGE = 18;
ROLLBACK;


DELIMITER $$
CREATE PROCEDURE mistake(IN roll INT)
BEGIN
SAVEPOINT SP1;
DELETE FROM Student WHERE ROLL_NO=2 AND AGE BETWEEN 18 AND 25;
SAVEPOINT SP2;
ROLLBACK TO SP1;
END $$
DELIMITER ; 
CALL  mistake(1);


/***********EXCEPTIONS***************
DECLARE
    ID INT :=200;
    NAME VARCHAR(50);
    ADDR VARCHAR(50);
    PHONE VARCHAR(50);
    AGE INT;
BEGIN
    SELECT DISTINCT ROLL_NO,NAME,ADDRESS,PHONE,AGE INTO ID,NAME,ADDR,PHONE,AGE FROM STUDENT WHERE ROLL_NO=ID;

    dbms_output.Put_line ('Student  name: '|| NAME||'Address:' || ADDR || '  Phone:' || PHONE|| '  Age:' || AGE);
EXCEPTION
    WHEN no_data_found THEN
      dbms_output.Put_line ('Incorrect ID:  '|| ID);
END;

############################

DECLARE
   x int:=10;
   y int:=0;
   div_r float;
   exp1 EXCEPTION;
   exp2 EXCEPTION;
  
BEGIN
   IF y=0 then
       raise exp1;
  
   ELSEIF y > x then
      raise exp2;
  
   ELSE
      div_r:= x / y;
      dbms_output.put_line('the result is '||div_r);
  
   END IF;
  
EXCEPTION
   WHEN exp1 THEN
      dbms_output.put_line('Error');
      dbms_output.put_line('division by zero not allowed');
  
   WHEN exp2 THEN
      dbms_output.put_line('Error');
      dbms_output.put_line('y is greater than x please check the input');
  
END;


DECLARE
    ID INT :=2;
    NAME VARCHAR(50);
    ADDR VARCHAR(50);
    PHONE VARCHAR(50);
    AGE INT;
BEGIN
    SELECT  ROLL_NO,NAME,ADDRESS,PHONE,AGE INTO ID,NAME,ADDR,PHONE,AGE FROM STUDENT WHERE ROLL_NO=ID;

    dbms_output.Put_line ('Student  name: '|| NAME||'Address:' || ADDR || '  Phone:' || PHONE|| '  Age:' || AGE);
EXCEPTION
    WHEN too_many_rows THEN
      dbms_output.Put_line ('Multiple rows passed!!');
END;

*********************************/
/*********************PACKAGES*******************


CREATE OR REPLACE PACKAGE pkg_customers IS
	PROCEDURE  addRecord(id customers.ID%type,nam customers.name%type,age customers.age%type,addr customers.address%type,sal customers.salary%type);
	FUNCTION deleteRecord(id customers.ID%type)
		RETURN boolean;
END pkg_customers;


 set serveroutput on;
CREATE OR REPLACE PACKAGE BODY pkg_customers IS
	PROCEDURE addRecord(id customers.ID%type,nam customers.name%type,age customers.age%type,addr customers.address%type,sal customers.salary%type) IS
		BEGIN
			IF  SQL%FOUND THEN
			INSERT INTO customers
	(ID, NAME,AGE,ADDRESS,SALARY) VALUES
        (id,nam,age,addr,sal);
				dbms_output.put_line('RECORD ADDED');
			ELSE
				dbms_output.put_line('RECORD NOT FOUND');
			END IF;
		END addRecord;

	FUNCTION deleteRecord(id customers.ID%type) RETURN boolean IS
		BEGIN
			Delete from customers where id=id;
			RETURN SQL%FOUND;
		END deleteRecord;
END pkg_customers;

 set serveroutput on;
DECLARE
	ID INT :=290;
	ID2 INT :=2;
    NAME VARCHAR(50):='Shyam';
    ADDR VARCHAR(50):='Chennai';
    SAL INT:='2000';
    AGE INT:=25;
BEGIN
	pkg_customers.addRecord(ID,NAME,AGE,ADDR,SAL);
	IF pkg_customers.deleteRecord(ID2) THEN
		dbms_output.put_line('RECORD DELETED');
	ELSE
		dbms_output.put_line('RECORD NOT FOUND');
	END IF;
END;
**************************************************/


/******************TRIGGERS*****************
CREATE TABLE orders
( order_id number(5),
  quantity number(4),
  cost_per_item number(6,2),
  total_cost number(8,2),
  create_date date,
  created_by varchar2(10)
);

CREATE OR REPLACE TRIGGER orders_before_insert
BEFORE INSERT
   ON orders
   FOR EACH ROW

DECLARE
   v_username varchar2(10);

BEGIN

   -- Find username of person performing INSERT into table
   SELECT user INTO v_username
   FROM dual;

   -- Update create_date field to current system date
   :new.create_date := sysdate;

   -- Update created_by field to the username of the person performing the INSERT
   :new.created_by := v_username;

END;


CREATE OR REPLACE TRIGGER orders_before_update
BEFORE UPDATE
   ON orders
   FOR EACH ROW

DECLARE
   v_username varchar2(10);

BEGIN

   -- Find username of person performing INSERT into table
   SELECT user INTO v_username
   FROM dual;

   -- Update create_date field to current system date
   :new.create_date := sysdate;

   -- Update created_by field to the username of the person performing the INSERT
   :new.created_by := v_username;

END;



CREATE OR REPLACE TRIGGER orders_after_insert_update
AFTER INSERT OR UPDATE
   ON orders
   FOR EACH ROW

DECLARE
   v_username varchar2(10);

BEGIN

   -- Find username of person performing the INSERT into the table
   SELECT user INTO v_username FROM orders;
CASE
   -- Insert record into audit table
   WHEN INSERTING THEN
   INSERT INTO orders_audit
   ( order_id,
     quantity,
     cost_per_item,
     total_cost,
     username )
   VALUES
   ( :new.order_id,
     :new.quantity,
     :new.cost_per_item,
     :new.total_cost,
     v_username );
     WHEN UPDATING THEN
     UPDATE Customers
SET order_id = :new.order_id,quantity = :new.quantity,cost_per_item = :new.cost_per_item,total_cost = :new.total_cost
WHERE username = v_username;
END CASE;


************************************************/
