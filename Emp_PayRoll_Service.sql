--UC1
Create Database PayRoll
Use PayRoll

--UC2
Create table Employees 
(
	Emp_ID int primary key identity(1,1),
	Emp_Name varchar(100) not null,
	Salary decimal(10,2),
	Starting_date Date
);

--UC3
Insert into Employees (Emp_Name , Salary , Starting_date) values ('Alexa' , 40000 , '2020-03-20');

--UC4
select * from Employees

--UC5
Select Salary from Employees where Emp_Name = 'John'

Select * from Employees where Starting_date between CAST('2020-01-01' as date) and GetDate(); 

--UC6
alter table Employees add Gender Varchar(1);

update Employees set Gender = 'M' where Emp_Name = 'Rahul';
update Employees set Gender = 'M' where Emp_Name = 'Brock';
update Employees set Gender = 'M' where Emp_Name = 'John';
update Employees set Gender = 'M' where Emp_Name = 'Kevin';
update Employees set Gender = 'M' where Emp_Name = 'Seth';
update Employees set Gender = 'F' where Emp_Name = 'Charlotte';
update Employees set Gender = 'M' where Emp_Name = 'Ric';
update Employees set Gender = 'F' where Emp_Name = 'Lita';
update Employees set Gender = 'F' where Emp_Name = 'Stacy';
update Employees set Gender = 'F' where Emp_Name = 'Alexa';

--UC7
select sum(Salary) , Gender from Employees where Gender = 'F' group by Gender;
select sum(Salary) , Gender from Employees where Gender = 'M' group by Gender;

select AVG(Salary) , Gender from Employees where Gender = 'F' group by Gender;
select AVG(Salary) , Gender from Employees where Gender = 'M' group by Gender;

select MIN(Salary) from Employees where Gender = 'F';
select MIN(Salary) from Employees where Gender = 'M';

select MAX(Salary) from Employees where Gender = 'F';
select MAX(Salary) from Employees where Gender = 'M';

select COUNT(*) from Employees group by Gender;

--UC8
alter table Employees add Phone int , Address Varchar(100) , Department Varchar(100);

update Employees set Phone = 9340596362 , Address = 'Los Angeles' , Department = 'Developer' where Emp_Name = 'Rahul';
update Employees set Phone = 7415887847 , Address = 'Las Vegas' , Department = 'Team Lead' where Emp_Name = 'Brock';
update Employees set Phone = 9745874100 , Address = 'California' , Department = 'Engineer' where Emp_Name = 'John';
update Employees set Phone = 9587451004 , Address = 'New York' , Department = 'Team Lead' where Emp_Name = 'Kevin';
update Employees set Phone = 7988457004 , Address = 'Nashville' , Department = 'Developer' where Emp_Name = 'Seth';
update Employees set Phone = 8874009742 , Address = 'Queen City' , Department = 'Manager' where Emp_Name = 'Charlotte';
update Employees set Phone = 9784561033 , Address = 'Florida' , Department = 'Developer' where Emp_Name = 'Ric';
update Employees set Phone = 8879663300 , Address = 'Canada' , Department = 'Developer' where Emp_Name = 'Lita';
update Employees set Phone = 9974540033 , Address = 'California' , Department = 'Head' where Emp_Name = 'Stacy';
update Employees set Phone = 8769783332 , Address = 'New York' , Department = 'Team Lead' where Emp_Name = 'Alexa';

alter table Employees alter column Phone Bigint;

--UC9
alter table Employees add Basic_Pay decimal(10,2) , Deduction decimal(10,2) , Taxable_Pay decimal(10,2) , Income_Tax decimal(10,2) , Net_Pay decimal(10,2);

update Employees set Basic_Pay = 15000 , Deduction = 0 , Taxable_Pay = 0 , Income_Tax = 0 , Net_Pay = 0 where Emp_Name = 'Rahul';
update Employees set Basic_Pay = 15000 , Deduction = 0 , Taxable_Pay = 0 , Income_Tax = 0 , Net_Pay = 0 where Emp_Name = 'Brock';
update Employees set Basic_Pay = 15000 , Deduction = 0 , Taxable_Pay = 0 , Income_Tax = 0 , Net_Pay = 0 where Emp_Name = 'John';
update Employees set Basic_Pay = 15000 , Deduction = 0 , Taxable_Pay = 0 , Income_Tax = 0 , Net_Pay = 0 where Emp_Name = 'Kevin';
update Employees set Basic_Pay = 15000 , Deduction = 0 , Taxable_Pay = 0 , Income_Tax = 0 , Net_Pay = 0 where Emp_Name = 'Seth';
update Employees set Basic_Pay = 15000 , Deduction = 0 , Taxable_Pay = 0 , Income_Tax = 0 , Net_Pay = 0 where Emp_Name = 'Charlotte';
update Employees set Basic_Pay = 15000 , Deduction = 0 , Taxable_Pay = 0 , Income_Tax = 0 , Net_Pay = 0 where Emp_Name = 'Ric';
update Employees set Basic_Pay = 15000 , Deduction = 0 , Taxable_Pay = 0 , Income_Tax = 0 , Net_Pay = 0 where Emp_Name = 'Lita';
update Employees set Basic_Pay = 15000 , Deduction = 0 , Taxable_Pay = 0 , Income_Tax = 0 , Net_Pay = 0 where Emp_Name = 'Stacy';
update Employees set Basic_Pay = 15000 , Deduction = 0 , Taxable_Pay = 0 , Income_Tax = 0 , Net_Pay = 0 where Emp_Name = 'Alexa';

--UC10
Insert into Employees (Emp_Name , Salary , Starting_date , Gender , Phone , Address , Department , Basic_Pay , Deduction , Taxable_Pay , Income_Tax , Net_Pay) values ('Terissa' , 25000 , '2020-03-20' , 'F' , 7415887847 , 'Ohio' , 'Sales' , 15000 , 0 , 0 , 0 , 0);
Insert into Employees (Emp_Name , Salary , Starting_date , Gender , Phone , Address , Department , Basic_Pay , Deduction , Taxable_Pay , Income_Tax , Net_Pay) values ('Terissa' , 25000 , '2020-03-20' , 'F' , 7415887847 , 'Ohio' , 'Marketing' , 15000 , 0 , 0 , 0 , 0);
