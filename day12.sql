create database earlycodeacademy;
use earlycodeacademy;
# Database contains tables, a constraint can be applied on a table
# primary key - unique identifier
# foreign key - is a primary key in another database
# default key
# not null - empty, liberty to leave a 
# null - empty liberty to leave a cell empty
# auto increment -
# unique -
# if creating a table consider
create table student_reg_table(regid int primary key not null, Sname varchar(255) not null,Sage int not null);  
# adding a new column to the existing table
alter table student_reg_table add column Sgender varchar(40) not null;
show columns from student_reg_table;
alter table student_reg_table add column Saddress text not null after Sage;
show columns from student_reg_table;
alter table student_reg_table add column ID int null first;
show columns from student_reg_table;
# dropping a column from the existing table
alter table student_reg_table drop column ID;
show columns from student_reg_table;
# modifying the data type or constraint of a column in the existing table
alter table student_reg_table modify column Sname varchar(500);
show columns from student_reg_table;
# changing the column name in an existing table
alter table student_reg_table change column regid registrationID int;
show columns from student_reg_table;
# renaming an existing table name
alter table student_reg_table rename to student_information_table;
show tables;
# dropping a table
drop table student_information_table;
show tables;
 

use earlycodeacademy;
create table S_Info(ID int primary key not null, 
S_Name varchar(100) not null, 
S_Age int not null, 
S_Gender varchar(25), 
S_Address text not null, 
Guardian varchar(50) not null, 
G_Contact int not null, 
School_Mins text not null);
show tables;
show columns from S_Info;
alter table S_Info modify column Guardian varchar(11) not null;
show columns from S_Info;
alter table S_Info modify G_Contact varchar(40) not null;
alter table S_Info modify column Guardian varchar(40) not null;

