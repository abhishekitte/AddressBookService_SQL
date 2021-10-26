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


--------------------------UC6-----------------
---------------Retrieve data belongs to state or city---------
Select FirstName from AddressBookTable where City='Mumbai' or StateName='Maharashtra';



------------------UC7--------------------------
------Size or Count of addressbook using state and city--------
Select Count(City) as Size,City,StateName from AddressBookTable group by StateName,City;


--------------------UC8--------------
-------Sort the name alphabetically using city name--------
select FirstName from AddressBookTable where City='Mumbai' order by FirstName;


---------------------UC9-------------------
-------Add the new columns and adding the address book name and type-----------
alter table AddressBookTable add 
AddressBookName varchar(50),
Type varchar(50);
select * from AddressBookTable;
-----------Update the table----------
update AddressBookTable set AddressBookName='Friend',Type='Friend' where FirstName='Naveen';
update AddressBookTable set AddressBookName='Brother',Type='Family' where FirstName='Ganesh';
update AddressBookTable set AddressBookName='Faculty',Type='Profession' where FirstName='Anvesh';