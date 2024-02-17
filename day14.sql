create database J_Waec_System;
use J_Waec_System;
#mysql clause
select sex, age, address from studentper order by age;
select sex, age, address from studentper order by age desc;
select distinct age from studentper order by age;
#agg function [avg, min, max, count, cum, first, last]
select Mjob, avg(JS11stterm) from studentper group by Mjob;
select Mjob, min(JS11stterm) from studentper group by Mjob;
select Mjob, max(JS11stterm) from studentper group by Mjob;
select Mjob, count(JS11stterm) from studentper group by Mjob;
select Mjob, sum(JS11stterm) from studentper group by Mjob;
select * from studentper limit 2;
select * from studentper order by age desc limit 6;
# my sql control flow program
select age, sex, JS11stterm, if (JS11stterm >= 90, 'Yes','No') as result from studentper;
select age, sex, JS11stterm, JS12ndTerm, ifnull(JS11stterm,JS12ndTerm) as result from studentper;
select age, sex, JS11stterm, JS12ndTerm, nullif(JS11stterm,JS12ndTerm) as result from studentper;
select age, sex, famsize, address, JS32ndTerm,
	case
		when JS32ndTerm >= 70 and JS32ndTerm <= 100 then 'A'
        when JS32ndTerm >= 60 and JS32ndTerm <= 69.99 then 'B'
        when JS32ndTerm >= 50 and JS32ndTerm <= 59.99 then 'C'
        when JS32ndTerm >= 40 and JS32ndTerm <= 49.99 then 'D'
        when JS32ndTerm >= 30 and JS32ndTerm <= 39.99 then 'E'
        else 'F'
	end as GRADE from studentper;
create table student_personal_information select sex, age, address, famsize, Pstatus, Medu, Fedu, Mjob, Fjob, guardian from studentper;
create table student_activities_table select traveltime, studytime, paid, health, activities, Emotions, famsup, schoolsup, internet from studentper;
create table student_score select JS11stterm, JS12ndTerm, JS13rdTerm, JS21stTerm, JS22ndTerm, JS23rdTerm, JS31stTerm, JS32ndTerm from studentper;
    
