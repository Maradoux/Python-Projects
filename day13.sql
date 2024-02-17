use earlycodeacademy;
create table STAFFTABLE STAFFTABLE(ID int primary key not null, 
STAFFNAME varchar(150) not null, 
STAFFGENDER varchar(25) not null, 
STAFFDOB date not null, 
STAFFCONTACT int not null, 
STAFFADDRESS varchar (250) not null, 
STAFFQUALIFICATION varchar (150) not null, 
STAFFNUMBEROFSUBJECTTAUGHT int not null,
SUBJECTTAUGHTNAME varchar (100) not null, 
STAFFCLASSTEACHER varchar(100) not null );
create table PAYMENTTABLE (PAYMENTID int primary key not null, 
STUDENTID int not null, 
STUDENTNAME varchar(150) not null, 
AMOUNTPAID int not null, 
DATEOFPAYMENT date not null,
BALANCETOBEPAID int not null  );
select * from S_Info;
insert into S_Info(ID, S_Name, S_Age, S_Gender, S_Address, Guardian, G_Contact, School_Mins) values
(1, 'Henry Ford', 14, 'Male', 'No 50 Highway Street Kubwa', 'Mother', '08134555525', '20 Minutes'),
(2, 'Eneojo Ateli', 13, 'Male', 'Flat 1 Station Road Iddo', 'Father', '08135628636', '1 hour'),
(3, 'Pam Tunde', 12, 'Female', '222 Peters Block Dutse', 'Aunty', '09027667838', '40 Minutes'),
(4, 'Ayo Lawal', 15, 'Female', '56 Blue House Bwari', 'Father', '08134555525', '20 Minutes'),
(5, 'Doris Peter', 13, 'Female', 'Queens street 4th floor Kubwa', 'Step mother', '08026247473', '10 Minutes'),
(6, 'Moses Tom', 14, 'Male', '4th Street Backrun road Dutse', 'Uncle', '09137476744', '30 Minutes'),
(7, 'David Babalola', 15, 'Male', '73 Special pass port Deidei', 'Mother', '08034786637', '50 Minutes'),
(8, 'Maya Banks', 12, 'Female', 'PW 1st floor Pronet Mall', 'Sister', '08163763476', '2 Minutes'),
(9, 'Feyi Aduuni', 13, 'Female', 'Great Estate House 5, Bwari', 'Father', '07037682190', '26 Minutes'),
(10, 'Patrick Star', 16, 'Male', 'House 22 Paradise street Kubwa', 'Brother', '09036474333', '33 Minutes');
select * from S_Info;
# only works for the value in the table
select S_Name, Guardian from S_Info;
update S_Info set S_Age = 15 where id = 2;
delete from S_Info where ID = 10;

show indexes from s_info;
create index gender on S_Info(S_Gender);
drop index gender on S_Info;
