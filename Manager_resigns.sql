use bank_database;
-- Manager of branch 1 with emp_id=15 has resignated
Delete from emp where emp_id=16;
Select * from bankbranch;

-- In bankbranch table his manager_id has been replaced by NULL 
Select * from emp;
-- super_id of employees to whom he supervised 'Depali Rana' is also replaced by NULL

-- New manager joins on 2017-06-06 to take the managerial position in branch 2 
-- and is given the same subordinate employee

INSERT INTO emp VALUES(16,"Prakash","Joshi","1983-05-16","M",20000,15,1002);
Select * from emp;

UPDATE bankbranch
SET manager_id = 16,mananger_start_date='2017-06-06'
WHERE branch_id= 1002;

Select * from bankbranch;

Alter table bankbranch
change mananger_start_date manager_start_date DATE;

Select * from bankbranch;

UPDATE emp
SET super_id = 16
WHERE emp_id= 21;

Select * from emp;


-- Updation complete----------------------------------------------
