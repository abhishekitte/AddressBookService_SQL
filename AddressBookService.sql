----------UC1--Create Addressbook Database------------ 
create database AddressBookService;
use AddressBookService;

-------------UC2-------------
------Create table------------------

create table AddressBookTable
(
FirstName varchar(100) not null,
LastName varchar(50),
Address varchar(200),
City varchar(150),
StateName varchar(100),
ZipCode int,
Phonenum bigint,
EmailId varchar(100)
);
select * from AddressBookTable;


----------UC3----->Insert into tables using fields--------

Insert into AddressBookTable values('Abhishek','Itte','Worli','Mumbai','Maharastra',400013,9967320888,'abhishekitte11@gmail.com'),
('Anvesh','Bitlingu','LowerParel','Mumbai','Maharashtra',400018,9619666078,'anveshb29@gmail.com'),
('Ganesh','Mudigonda','Dadar','Mumbai','Maharastra',400025,993053254,'ganeshm2@gmail.com'),
('Naveen','chil','Worli','Mumbai','Maharahtra',40014,8080277459,'naveenchi23@gmail.com');
select * from AddressBookTable;


--------------------UC4----------------------------------------
------edit existing contact person using person name----------
update AddressBookTable set Phonenum=9944789324 where FirstName='Anvesh';
update AddressBookTable set LastName='Chil' where FirstName='Naveen';
update AddressBookTable set EmailId='virat18@gmail.com' where LastName='Mudigonda';
update AddressBookTable set ZipCode='400034' where FirstName='Abhishek';
select * from AddressBookTable;


---------------------UC5---------------
------Delete a contact using perosn name-----
delete from AddressBookTable where FirstName='Ganesh';
select * from AddressBookTable;