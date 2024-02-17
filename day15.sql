use J_waec_system;
alter table student_score add column StudentID int primary key not null auto_increment first;
select * from student_score;
alter table student_personal_information add column StudentID int primary key not null auto_increment first;
alter table student_activities_table add column StudentID int primary key not null auto_increment first;
# mysql conditions only work where columns is mentioned -- and all conditions must be true
select * from studentper;
select * from studentper where (age <= 13 and age = 12) and schoolsup = 'yes';
# ---or One of the conditions must be true
select * from studentper where guardian = 'father' or traveltime >= 2;
# it is possible to do and and or together
select * from studentper where (age <= 13 and age = 12) or schoolsup = 'yes';
# between works like range
select * from studentper where JS11stterm between 25 and 60;
# opposite of between is not between
select * from studentper where JS11stterm not between 25 and 60;
# null and is null is used to check if any columns in the table is empty
select * from studentper where famsup is null;
select * from studentper where famsup is not null;
# like is used for search patterns
select * from studentper where Mjob like 'C%'; # start
select * from studentper where Mjob like '%R'; # end
select * from studentper where Mjob like '__s%'; # selecting letters in between
select * from studentper where Mjob like '_____'; # selecting columns of a specific length
# opposite of like is not like
select * from studentper where Mjob not like 'C%';
# joining two tables in mySQL -- inner join works by honour the table with lesser records
select student_personal_information.sex, student_personal_information.age, student_personal_information.address, student_personal_information.guardian,
student_score.JS11stterm, student_score.JS12ndTerm, student_score.JS13rdTerm from student_personal_information inner join student_score on
student_personal_information.StudentID = student_score.StudentID;
# right join -- will not honour the lesser table instead it will return all records and fill the remaining space with null because it does
#not leave any column empty
select student_personal_information.sex, student_personal_information.age, student_personal_information.address, student_personal_information.guardian,
student_score.JS11stterm, student_score.JS12ndTerm, student_score.JS13rdTerm from student_personal_information right join student_score on
student_personal_information.StudentID = student_score.StudentID;
# inner join and the keft jon is similar
select student_personal_information.sex, student_personal_information.age, student_personal_information.address, student_personal_information.guardian,
student_score.JS11stterm, student_score.JS12ndTerm, student_score.JS13rdTerm from student_personal_information left join student_score on
student_personal_information.StudentID = student_score.StudentID;
# cross join sometimes returns an error, it works on smaller records and if it works returns a large records
select student_personal_information.sex, student_personal_information.age, student_personal_information.address, student_personal_information.guardian,
student_score.JS11stterm, student_score.JS12ndTerm, student_score.JS13rdTerm from student_personal_information cross join student_score on
student_personal_information.StudentID = student_score.StudentID;

create database employee_system;
use employee_system;
#What is the average age of employees?
select avg(Age) as result from hr_analytics;
#What is the number of employees who have left the company (Attrition)?
select distinct attrition from hr_analytics;
select attrition, count(attrition) as result from hr_analytics where attrition = 'Yes';
select * from hr_analytics;
#How many employees travel for business and how often?
select businesstravel, count(businesstravel) as result from hr_analytics group by BusinessTravel;
#What is the average daily rate of employees?
select avg(Dailyrate) as result from hr_analytics;
#How many employees work in each department?
select Department, count(department) as result from hr_analytics group by Department;
#What is the average distance from home for employees?
select avg(DistanceFromHome) as result from hr_analytics;
#How many employees have a certain level of education?
select Education, count(education) as result from hr_analytics group by education;
#What is the most popular field of education among employees?
select Educationfield, count(educationfield) as result from hr_analytics group by educationfield order by result desc limit 1;

