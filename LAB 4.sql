--part A:
--1. Add two more columns City VARCHAR (20) and Pincode INT.\
ALTER TABLE DEPOSIT ADD CITY VARCHAR(20),PINCODE INT
--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
ALTER TABLE DEPOSIT ALTER COLUMN CITY VARCHAR(35)
--3. Change the data type DECIMAL to INT in amount Column.
ALTER TABLE DEPOSIT ALTER COLUMN ACTNO INT
--4. Rename Column ActNo to ANO.
EXEC SP_RENAME  'DEPOSIT.ACTNO','ANO'
--5. Delete Column City from the DEPOSIT table.
ALTER TABLE DEPOSIT DROP COLUMN CITY
--6. Change name of table DEPOSIT to DEPOSIT_DETAIL.
EXEC SP_RENAME 'DEPOSIT','DEPOSIT_DETAIL'

--Part – B:
--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
EXEC SP_RENAME DEPOSIT_DETAIL DROP COLUMN AOPENDATE
--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
ALTER TABLE DEPOSIT_DETAIL DROP COLUMN AOPENDATE
--3. Rename Column CNAME to CustomerName
EXEC SP_RENAME 'DEPOSIT_DETAIL.CNAME','CUSTOMER_NAME'

CREATE TABLE STUDENT_DETAIL(
ENROLLMENT VARCHAR(20),NAME VARCHAR(25),CPI DECIMAL (5,2),BIRTHDATE DATETIME
)
--PART C:
--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
ALTER TABLE STUDENT_DETAIL ADD CITY VARCHAR(20) NOT NULL,BACKLOG INT
--2. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
EXEC SP_RENAME STUDENT_DETAIL.NAME VARCHAR(35)
--3. Change the data type DECIMAL to INT in CPI Column.
ALTER TABLE STUDENT_DETAIL DROP COLUMN CPI INT
--4. Rename Column Enrollment_No to ENO.
EXEC SP_RENAME 'STUDENT_DETAIL.ENTROLLMENT NO','ENO'
--5. Delete Column City from the student_detail table.
EXEC SP_RENAME STUDENT_DETAIL DROP COLUMN CITY
--6. Change name of table student_detail to STUDENT_MASTER
EXEC SP_RENAME STUDENT_DETAIL,STUDENT_MASTER

 
 --PART A:
-- 1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.
DELETE FROM DEPOSIT_DETAIL WHERE AMOUNT>=4000 
--2. Delete all the accounts CHANDI BRANCH.
DELETE FROM DEPOSIT_DETAIL WHERE BNAME='CHANDI'
--3. Delete all the accounts having account number (ANO) is greater than 105.
DELETE FROM DEPOSIT_DETAIL WHERE ANO>105
--4. Delete all the records of Deposit_Detail table. (Use Truncate)
TRUNCATE TABLE DEPOSIT_DETAIL 
--5. Remove Deposit_Detail table. (Use Drop)
DROP TABLE DEPOSIT_DETAIL

CREATE TABLE EMPLOYEE_MASTER(
EMPNO INT,EMPNAME VARCHAR(25),JOININGDATE DATETIME,SALARY DECIMAL(8,2),CITY VARCHAR(50)
) 
 
 INSERT INTO EMPLOYEE_MASTER(101,'Keyur',5-1-02,12000,'Rajkot'),
							(102,'Hardik',15-2-04,14000,'Ahmedabad'),
							 (103,'Kajal',14-3-06 15000,'Baroda'),
							(104,'Bhoomi',23-6-05 12500,'Ahmedabad'),
							(105,'Harmit',15-2-04 14000,'Rajkot'),
							(106,'Mitesh',25-9-01 5000,'Jamnagar'),
							(107,'Meera',Null 7000,'Morbi'),
							(108,'Kishan',6-2-03 10000,NULL)
 _
--PART B:
--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.
--2. Delete all the Employees who belongs to ‘RAJKOT’ city.
--3. Delete all the Employees who joined after 1-1-2007.
--4. Delete the records of Employees whose joining date is null and Name is not null.
--5. Delete the records of Employees whose salary is 50% of 20000.
--6. Delete the records of Employees whose City Name is not empty.
--7. Delete all the records of Employee_MASTER table. (Use Truncate)
--8. Remove Employee_MASTER table. (Use Drop)