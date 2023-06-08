--UC1
Create Database AddressBook;
Use AddressBook;

--UC2
Create table Address
(
FirstName varchar(20),
lastName varchar(20),
Address varchar(30),
City varchar(10),
State varchar(20),
Zip varchar(6),
PhoneNumber varchar(10),
Email varchar(30)
);

Select*from Address;

--UC3
Insert into Address(FirstName,lastName,Address,City,State,Zip,PhoneNumber,Email) values('Vaibhav', 'Ovhal', '45/2 North Harsiddhi', 'Indore', 'Madhya Pradesh', '452007', '9340596362', 'vaibhavovhal15@gmail.com'); 
Insert into Address(FirstName,lastName,Address,City,State,Zip,PhoneNumber,Email) values('Sakshi', 'Jain', '18 Ville Parle', 'Mumbai', 'Maharashtra', '441001', '7415887847', 'Sakshi123@gmail.com'); 
Insert into Address(FirstName,lastName,Address,City,State,Zip,PhoneNumber,Email) values('Mohan', 'Rathore', '112 Street Road', 'Pune', 'Maharashtra', '442122', '9747478556', 'mrathore112@gmail.com');
Insert into Address(FirstName,lastName,Address,City,State,Zip,PhoneNumber,Email) values('Priya', 'Patel', '001 Aman Nagar', 'Surat', 'Gujrat', '457612', '8747697444', 'Priya55@gmail.com');  
Insert into Address(FirstName,lastName,Address,City,State,Zip,PhoneNumber,Email) values('Muskaan', 'Joshi', '15 Vijay Nagar', 'Indore', 'Madhya Pradesh', '452009', '9796645874', 'Muskaanjoshi@gmail.com'); 

--UC4

update Address set lastName = 'Parmar' where FirstName = 'Mohan';
update Address set lastName = 'Rathore' where FirstName = 'Muskaan';
update Address set Email = 'ovhalvaibhav07@gmail.com' where FirstName = 'Vaibhav';
update Address set City = 'Delhi' where FirstName = 'Sakshi';
update Address set PhoneNumber = '7417417896' where FirstName = 'Priya';

--UC5

Delete from Address where FirstName = 'Priya';

--UC6

Select * from Address where City = 'Indore' or State = 'Madhya Pradesh';

--UC7

select Count(*) from Address group by City, State;

--UC8
Select * from Address where City = 'Indore' order by FirstName ASC;

--UC9

Alter table Address Add Type varchar(10);

update Address set Type = 'Family' where FirstName = 'Vaibhav';
update Address set Type = 'Friend' where FirstName = 'Sakshi';
update Address set Type = 'Friend' where FirstName = 'Mohan';
update Address set Type = 'Family' where FirstName = 'Muskaan';

--UC10

select Count(*) from Address group by Type;

--UC11

Insert into Address(FirstName,lastName,Address,City,State,Zip,PhoneNumber,Email,Type) values('Rohan', 'Gupta', '66 Lokhandwala Palace', 'Ujjain', 'Madhya Pradesh', '447544', '9696847596', 'Rohan456@gmail.com', 'Friend');  
Insert into Address(FirstName,lastName,Address,City,State,Zip,PhoneNumber,Email,Type) values('Rohan', 'Soni', '77 Kunal Nagar', 'Gwalior', 'Madhya Pradesh', '475749', '9764976497', 'Rohan666@gmail.com', 'Family'); 