-- TO CREATE A  SATHYABAMA INDUSTRIES DB
create database Sathyabama_Industries ;

-- TO ACTIVE THE COMPANY DB     
Use Sathyabama_Industries ;

-- TO CREATE THE EMPLOYEES TABLE
Create table employees(
RollID int not null,
First_name varchar(75),
Last_name varchar(75),
Age varchar(22),
Department varchar(75) default 'Data Analyst',
primary key (RollID));

-- TO DESCRIBE THE EMPLOYEES TABLE
describe employees;

--  TO CHANGE THE DATA TYPE IN AGE IN EMPLOYEES TABLE
Alter table employees modify column Age int;

-- DESC (describe)
desc employees;

-- TO INSERT THE VALUES IN EMPLOYEES TABLE
Insert into employees(RollID,First_name,Last_name,Age) Values(1, 'Naveen', 'Pandiyan', 22);
Insert into employees(RollID,First_name,Last_name,Age) Values(2, 'Chitra', 'Devi', 40);
Insert into employees(RollID,First_name,Last_name,Age) Values(3, 'Maha', 'Lakshmi', 21);
Insert into employees(RollID,First_name,Last_name,Age) Values(4, 'Sakthi', 'Vel', 22);
Insert into employees(RollID,First_name,Last_name,Age) Values(5, 'Sakthi', 'Meenakshi', 24);
Insert into employees(RollID,First_name,Last_name,Age) Values(6, 'Bala', 'Murugan', 24);
Insert into employees(RollID,First_name,Last_name,Age) Values(7, 'Sabitha', 'Kumari', 26);
Insert into employees(RollID,First_name,Last_name,Age) Values(8, 'Swetha', 'Mohan', 25);
Insert into employees(RollID,First_name,Last_name,Age) Values(9, 'Mohana', 'Priya', 26);
Insert into employees(RollID,First_name,Last_name,Age) Values(10, 'Guru', 'Haran', 25);
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TO CREATE THE SALARY TABLE IN COMPANY DB
Create table Salary(
S_no int primary key,
Amount int,
JoiningDate date,
RollID int,
-- TO LINK THE ROLLID COLUMN IN SALARY TABLE FROM EMPLOYEES TABLE
Constraint FK_RollID foreign key (RollID) References Employees(RollID));

--  TO RENAME THE AMOUNT COLUMN INTO SALARY COLUMN IN SALARY TABLE
Alter table salary  rename column Amount to Salary;

-- TO DESCRIBE THE SALARY TABLE IN COMPANY DB
desc salary;

-- TO INSERT THE VALUES IN SALARY TABLE (WITHOUT COLUMN NAME)
Insert into Salary Values(01, 33333, '2025-04-30', 1);
Insert into Salary Values(02, 50000, '2024-05-04', 2);
Insert into Salary Values(03, 30000, '2025-05-29', 3);
Insert into Salary Values(04, 32000, '2025-05-28', 4);
Insert into Salary Values(05, 33500, '2025-04-29', 5);
Insert into Salary Values(06, 31450, '2025-05-25', 10);
Insert into Salary Values(07, 35000, '2025-04-20', 9);
Insert into Salary Values(08, 29500, '2025-04-29', 7);
Insert into Salary Values(09, 30000, '2025-04-28', 8);
Insert into Salary Values(10, 33433, '2024-06-15', 6);
----------------------------------------------------------------------------------------------------------------------------------------------
-- TO CREATE THE CONTACT DETAILS TABLE IN COMPANY DB
Create table PersonalDetails(
R_no int,
Qualification varchar(100),
EmailID varchar(100),
Phone int,
JoiningDate date,
unique(R_no));

-- TO DESCRIBE THE PERSONAL DETAILS TABLES FROM COMPANY DB
describe PersonalDetails;

-- TO DROP JOININGDATE IN PERSONAL DETAILS
Alter table PersonalDetails drop column joiningdate;

-- TO CHANGE THE DATA TYPE IN PHONE COLUMN IN PERSONALDETAILS TABLES
Alter table personalDetails modify column Phone Bit(40);

-- TO INSERT THE VALUES IN PERSONAL DETAILS TABLES
Insert into PersonalDetails(R_no,Qualification,EmailID,Phone) values(1, 'BCom(general)', 'naveenpandiyan427@gmail.com', 8838769149);
Insert into PersonalDetails(R_no,Qualification,EmailID,Phone) values(2, 'BA(Political Science)', 'chitradevi324@gmail.com', 8873902321);
Insert into PersonalDetails(R_no,Qualification,EmailID,Phone) values(3, 'BA.LLB.,', 'mahalakshmi827@gmail.com', 9499947249);
Insert into PersonalDetails(R_no,Qualification,EmailID,Phone) values(4, 'BSc(Maths)', 'sakthivelss54@gmail.com', 9976345902);
Insert into PersonalDetails(R_no,Qualification,EmailID,Phone) values(5, 'Bcom', 'meenakshirenganathan@gmail.com', 7649352893);
Insert into PersonalDetails(R_no,Qualification,EmailID,Phone) values(6, 'BCA', 'balaguh23@gmail.com', 8899967555);
Insert into PersonalDetails(R_no,Qualification,EmailID,Phone) values(7, 'BCom(General)', 'sabithakumari@gmail.com', 8849345904);
Insert into PersonalDetails(R_no,Qualification,EmailID,Phone) values(8, 'BCA', 'swethasri45@gmail.com', 8874569023);
Insert into PersonalDetails(R_no,Qualification,EmailID,Phone) values(9, 'MBA(HR)', 'sripoorna345@gmail.com', 9976450217);
Insert into PersonalDetails(R_no,Qualification,EmailID,Phone) values(10, 'Bcom(general)', 'gurulava22@gmail.com', 9985764563);

-- TO ADD COLUMN IN Employee TABLE
Alter Table employees Add column R_no int;

-- TO ALTER THE R_NO AS FORREIGN KEY IN EMPLOYEE TABLE
Alter table employees Add foreign key (R_no) references PersonalDetails(R_no);
----------------------------------------------------------------------------------------------------------------------------------------------
-- TO CREATE THE TRANSACTION DETAILS TABLE IN COMPANY DATABASE 
create table TransactionDetails(
SalaryNo int primary key,
BankName varchar(100),
AC_No Bit(60),
S_no int,
foreign key (S_no) references Salary(S_no));

-- TO INSERT THE VALUES IN TRANSACTION DETAILS TABLE
Insert into TransactionDetails(SalaryNo,BankName,AC_No,S_no) values(100, 'UCO Bank', 000011800645, 01);
Insert into TransactionDetails(SalaryNo,BankName,AC_No,S_no) values(200, 'Indian Bank', 7184328940, 02);
Insert into TransactionDetails(SalaryNo,BankName,AC_No,S_no) values(300, 'Indian Overseas Bank', 0866784823167, 03);
Insert into TransactionDetails(SalaryNo,BankName,AC_No,S_no) values(400, 'IDBI Bank', 008845630088, 04);
Insert into TransactionDetails(SalaryNo,BankName,AC_No,S_no) values(500, 'Indian Bank', 7456892036, 05);
Insert into TransactionDetails(SalaryNo,BankName,AC_No,S_no) values(600, 'IDFC Bank', 00443218845, 10);
Insert into TransactionDetails(SalaryNo,BankName,AC_No,S_no) values(700, 'IDBI Bank', 007789546743, 09);
Insert into TransactionDetails(SalaryNo,BankName,AC_No,S_no) values(800, 'Kotak Bank', 4408792839, 06);
Insert into TransactionDetails(SalaryNo,BankName,AC_No,S_no) values(900, 'Bank of Baroda', 007764899390, 07);
Insert into TransactionDetails(SalaryNo,BankName,AC_No,S_no) values(1000, 'City Union Bank', 000011800738, 08);
-------------------------------------------------------------------------------------------------------------------------------------------
-- TO CREATE THE TEAMS TABLE IN COMPANY DB
create table Teams(
T_no int primary key,
T_Name varchar(100),
RollID int,
foreign key (RollID) references Employees(RollID));

-- TO ADD COLUMN IN TEAMS TABLE
Alter table Teams Add column R_no int;

-- TO ALTER THE R_no AS FOREIGN KEY IN TEAMS TABLE
Alter table Teams Add foreign key (R_no) references PersonalDetails (R_no);

-- TO DESCRIBE THE TEAMS TABLE IN COMPANY DB
describe Teams;

-- TO DROP THE PRIMARY KEY IN T_NO COLUMN IN TEAMS TABLE
Alter table Teams Drop Primary key;

-- TO INSERT THE VALUES IN TEAMS TABLE
Insert into Teams Values (101, 'DELTA', 1, 1);
Insert into Teams Values (102, 'AQUA', 2, 2);
Insert into Teams Values (101, 'DELTA', 3, 3);
Insert into Teams Values (102, 'AQUA', 4, 4);
Insert into Teams Values (101, 'DELTA', 5, 5);
Insert into Teams Values (102, 'AQUA', 6, 6);
Insert into Teams Values (101, 'DELTA', 7, 7);
Insert into Teams Values (102, 'AQUA', 8, 8);
Insert into Teams Values (101, 'DELTA', 9, 9);
Insert into Teams Values (102, 'AQUA', 10, 10);
--------------------------------------------------------------------------------------------------------------------------------------
-- TO CREATE VIEW IN BANKNAME IN TRANSACTION DETAILS TABLE 
Create View BankName_IndianBank as Select * from TransactionDetails where BankName = 'Indian Bank';
Select * from BankNAme_IndianBank;

-- TO CREATE VIEW IN TEAM NAME IN TEAMS TABLE
Create view TName_Delta as Select * from Teams where T_name = 'Delta';
Select * from TName_Delta;

-- TO CREATE VIEW IN SALARY IN SALARY TABLE
Create view  Salary_33433 as Select * from Salary where Salary = 33433;
Select * from Salary_33433;

-- TO CREATE VIEW IN EMAILID IN PERSONAL DETAILS TABLE
Create view Email_naveen as select * from PersonalDetails where EmailID = 'naveenpandiyan427@gmail.com';
select * from Email_naveen;

-- TO CREATE VIEW IN DEPARTMENT IN EMPLOYEES TABLE
Create view Dep_DA as select * from employees where Department = 'Data Analyst';
select * from Dep_DA;
-----------------------------------------------------------------------------------------------------------------------------------------------------
Delimiter $$
Create procedure SI_Tab()
Begin
-- TO SELECT ALL VALUES IN EMPLOYEES TABLE
select * from employees;
-- TO SELECT ALL VALUES IN SALARY TABLE
select * from salary;
-- TO SELECT ALL VALUES IN PERSONALDETAILS
select * from PersonalDetails;
-- TO SELECT ALL VALUES IN TRANSACTIONDETAILS
select * from TransactionDetails;
-- TO SELECT ALL VALUES IN TEAMS
select * from Teams;
end $$
delimiter ;
------------------------------------------------------------------------------------------------------------------------------------------
Delimiter //
create procedure Emp_Det()
Begin
-- TO SELECT FIRST NAME FROM EMPLOYEES TABLE
Select First_name from employees;
-- TO SELECT DISTINCT AGE FROM EMPLOYEES TABLE
Select distinct age from employees;
-- TO SELECT AGE FROM EMPLOYEES TABLE WHERE AGE IS LESS THAN 40
select * from employees where age < 40;
end //
delimiter ;
--------------------------------------------------------------------------------------------------------------------------------------------------
Delimiter **
create procedure Sal_Dep()
begin
-- TO SELECT ALL VALUES IN SALARY TABLES
select * from Salary;
-- TO SELECT ROLLID FROM SALARY TABLE WHERE  SALARY RANGE BETWEEN 30000 AND 50000
Select RollID from Salary where salary between 30000 and 50000;
-- TO SELECT FROM SALARY FROM SALARY TABLE WHERE LESS THAN 33333
select * from salary where salary < any(Select salary from salary where salary < 33333);
end **
delimiter ;
--------------------------------------------------------------------------------------------------------------------------------------------------------
Delimiter $$
create procedure Pd_Email()
begin
-- TO SELECT EMAILID FROM PERSONAL DETAILS TABLES
Select * from personalDetails where EmailID = 'naveenpandiyan427@gmail.com';
end $$
delimiter ;
---------------------------------------------------------------------------------------------------------------------------------------------------------
Delimiter !!
create procedure Td_Bd()
begin
-- TO SELECT BANK NAME FROM TRANSACTION DETAILS TABLES
Select distinct Bankname from TransactionDetails;
end !!
delimiter ;
------------------------------------------------------------------------------------------------------------------------------------------------------------
Delimiter %%
Create procedure Team_info()
begin
-- TO SELECT ALL VALUES IN TEAMS TABLE
Select * from teams;
end %%
delimiter ;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
Delimiter &&
Create procedure OP_SP()
begin
-- TO SELECT FIRST NAME IN EMPLOYEES TABLES WHERE START WITH 'S' LETTER
Select * from employees
Where First_name like 's%'
limit 2 offset 2;
-- TO SELECT LAST NAME IN EMPLOYEES TABLES WHERE END WITH 'N' LETTER
Select * from employees Where Last_name like '%n';
-- TO SELECT TEAM NAME IN TEAMS TABLE WHERE RollID IS 10
Select T_Name from teams where T_no = All(Select T_no from teams where RollID = 10);
-- TO SELECT QUALIFICATION AND EMAILID IN PERSONAL DETAILS TABLE
Select * from PersoanlDetails where Qualification = 'Bcom' and EmailID = 'meenakshirenganathan@gmail.com' ;
-- TO SELECT QUALIFICATION IN PERSOANAL DETAILS
Select * from PersonalDetails Where Qualification IN ('Bcom','MBA');
end &&
delimiter ;
--------------------------------------------------------------------------------------------------------------------------------------------------------------
Delimiter !!
Create Procedure OHG_SP()
begin
Select salary from salary Order by salary desc;
Select S_no,(Salary) from Salary group by S_no;
end !!
delimiter ;
---------------------------------------------------------------------------------------------------------------------------------------------------------------
Delimiter &&
create procedure JC_SP()
begin
Select employees.First_name,employees.Last_name,salary.salary from employees join salary on employees.RollID = salary.RollID;
select phone,EmailID from PersonalDetails Left Join employees on PersonalDetails.R_no = employees.R_no;
Select First_name,Last_name from employees Right join Teams on employees.RollID = Teams.RollID;
Select Employees.First_name,Employees.Last_name,PersonalDetails.R_no from employees cross join PersonalDetails;
end &&
delimiter ;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Delimiter //
create procedure case_tab()
begin
Select First_name,Last_name,Age,
Case
When age > 25 Then 'Employee with experience.Eligible for sr.profile'
when age = 25 Then 'Employee with Mid-experience.Eligible'
Else 'freshers....new to the company'
End as eligibility from employees;
end //
delimiter ;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Delimiter $$
Create procedure AO_Sp()
Select sum(salary) as total_amount from salary;
Select concat(First_name,Last_name) As "Full_name" from employees;
Select count(T_name) as Batch from Teams;
Select avg(Age) as Ages from employees;
Select max(salary) as high from salary;
Select min(salary) as low from salary;
end $$
delimiter ;
-------------------------------------------------------------------------------------------------------------------------------------------------
Delimiter %%
Create Procedure SO_SP()
begin
Select First_name,Last_name from employees Union Select EmailID,Phone from PersonalDetails;
Select Salary,JoiningDate from Salary Union All Select BankName,AC_No from Transactiondetails;
end %%
delimiter ;
----------------------------------------------------------------------------------------------------------------------------------------------------------
Delimiter //
Create Procedure OP_INF( out total INT)
Begin
Select Count(*) Into total from salary;
end //
delimiter ;
------------------------------------------------------------------------------------------------------------------------------------------------------------------
Delimiter $$
Create procedure IOP_Inf(In input1 int,Out Emp_Fname varchar(100),Out Emp_Lname varchar(100))
begin
Select First_name,Last_name into Emp_Fname,Emp_Lname from employees
Where RollID = input1;
End $$
Delimiter ;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
call AO_Sp();
call case_tab();
call Emp_Det();
Call OHG_Sp();
Call JC_Sp();
Call OP_sp();
call Pd_Email();
Call Sal_Dep();
call SI_TAb();
call Td_Bd();
call Team_info();
call SO_SP();
Call Op_INF(@total);
Select@total;
Call Iop_Inf(3,@outFname,@outLname);
-------------------------------------------------------------------------------------------------------------------------------------------------------------------




 

