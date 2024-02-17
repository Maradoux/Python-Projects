use earlycodeacademy;
insert into STAFFTABLE(ID, STAFFNAME, STAFFGENDER, STAFFDOB, STAFFCONTACT, STAFFADDRESS, STAFFQUALIFICATION, STAFFNUMBEROFSUBJECTTAUGHT, SUBJECTTAUGHTNAME, STAFFCLASSTEACHER) values
(1, 'John Dovan', 'Male', '1985-03-15', 0813747443, '123 Main Street, Cityville', 'Ph.D.', 5, 'Mathematics', 'Yes'),
(2, 'Jane Simon', 'Female', '1990-07-22', 0903242638, '456 Oak Avenue, Townburg', 'Masters', 3, 'English', 'No'),
(3, 'Rob Johnson', 'Male', '1982-11-05', 0905123456, '789 Pine Road, Villagetown', 'Ph.D.', 8, 'Science', 'Yes'),
(4, 'Emily Buchi', 'Female', '1988-09-12', 0915763393, '101 Elm Street, Hamletville', 'Masters', 4, 'History', 'No'),
(5, 'Michael Nnamdi', 'Male', '1975-06-30', 0709888777, '202 Cedar Lane, Suburbia', 'Bachelor', 6, 'Geography', 'Yes'),
(6, 'Sophia Abdul', 'Female', '1995-04-25', 0802666555, '303 Birch Boulevard, Countryside', 'Ph.D.', 7, 'Physics', 'No'),
(7, 'Daniel Lawal', 'Male', '1980-02-18', 0804555666, '404 Oakwood Drive, Cityscape', 'Masters', 2, 'Chemistry', 'Yes'),
(8, 'Olivia Williams', 'Female', '1993-08-07', 0816777888, '505 Maple Court, Townsville', 'Bachelor', 5, 'Biology', 'No'),
(9, 'Efe Momoh', 'Male', '1992-12-03', 0903344555, '606 Pinecrest Avenue, Metropolis', 'Ph.D.', 4, 'Computer Science', 'Yes'),
(10, 'Amara Martin', 'Female', '1987-05-20', 0818999000, '707 Cedar Street, Villagetown', 'Masters', 6, 'Art', 'No');

insert into paymenttable(PAYMENTID, STUDENTID, STUDENTNAME, AMOUNTPAID, DATEOFPAYMENT, BALANCE) values
(1, 1, 'Henry Ford', 100000, '2024-01-05', 0),
(2, 2, 'Eneojo Ateli', 100000, '2024-01-05', 0),
(3, 3, 'Pam Tunde', 100000, '2024-01-05', 0),
(4, 4, 'Ayo Lawal', 100000, '2024-01-05', 0),
(5, 5, 'Doris Peter', 100000, '2024-01-05', 0),
(6, 6, 'Moses Tom', 30000, '2024-01-10', 70000),
(7, 7, 'David Babalola', 40000, '2024-01-11', 60000),
(8, 8, 'Maya Banks', 50000, '2024-01-10', 50000),
(9, 9, 'Feyi Aduuni', 60000, '2024-01-08', 40000),
(10, 10, 'Patrick Star', 70000, '2024-01-07', 30000),
(11, 6, 'Moses Tom', 70000, '2024-02-02', 0),
(12, 7, 'David Babalola', 60000, '2024-02-10', 0),
(13, 8, 'Maya Banks', 50000, '2024-02-01', 0),
(14, 9, 'Feyi Adunni', 40000, '2024-01-15', 0),
(15, 10, 'Patrick Star', 30000, '2024-02-02', 0);


use employee_system;
select * from hr_analytics;
# What is the distribution of ages among employees in each department?
select department, avg(age) as AGE, count(*) as Number_of_employees from hr_analytics group by department;
#What is the average monthly income of employees based on their job role and job level?
select jobrole, joblevel,  avg(MonthlyIncome) as avg_monthly_income from hr_analytics group by jobrole, joblevel;
#What is the average work life balance of employees in each department?
select department, avg(WorkLifeBalance) as avg_worklifebalance from hr_analytics group by department;
#What is the average environment satisfaction of employees based on their job role?
select jobrole, avg(environmentsatisfaction) as avg_environmentsatisfaction from hr_analytics group by jobrole;
#How does the years at company vary among employees in each job role and job level?
select jobrole, joblevel,  avg(YearsAtCompany) as avg_yearsatcompany from hr_analytics group by jobrole, joblevel;
#What is the average job satisfaction of employees based on their marital status?
select maritalstatus,  avg(JobSatisfaction) as avg_jobsatisfaction from hr_analytics group by maritalstatus;
#How does the relationship satisfaction of employees vary based on their job role and job level?
select jobrole, joblevel,  avg(RelationshipSatisfaction) as avg_RelationshipSatisfaction from hr_analytics group by jobrole, joblevel;
#What is the distribution of employee count in each department?
select department, avg(employeecount) as Employee_count, count(*) as Number_of_employees from hr_analytics group by department;
#How does the standard hours vary based on job role and job level?
SELECT jobrole, joblevel, AVG(standardhours) AS avg_standard_hours FROM hr_analytics GROUP BY jobrole, joblevel;
# What is the average job involvement of employees based on their gender
select gender, avg(JobInvolvement) as Job_Involvement from hr_analytics group by gender;
#How does the average hourly rate of employees vary based on their job role and job level?
select jobrole, joblevel, avg(HourlyRate) as Hourly_rate from hr_analytics group by jobrole, joblevel;
#What is the average distance from home of employees based on their job role and job level?
select jobrole, joblevel, avg(DistanceFromHome) as Distance_from_home from hr_analytics group by jobrole, joblevel;
#How does the average stock option level of employees vary based on their job role and job level?
select jobrole, joblevel, avg(StockOptionLevel) as Stock_Option_Level from hr_analytics group by jobrole, joblevel;
#What is the average training times last year of employees based on their job role and job level?
select jobrole, joblevel, avg(TrainingTimesLastYear) as Training_Times_LastYear from hr_analytics group by jobrole, joblevel;
#How does the average total working years of employees vary based on their job role and job level?
select jobrole, joblevel, avg(TotalWorkingYears) as Total_Working_Years from hr_analytics group by jobrole, joblevel;
#What is the average years since last promotion of employees based on their job role and job level?
select jobrole, joblevel, avg(YearsSinceLastPromotion) as Years_Since_Last_Promotion from hr_analytics group by jobrole, joblevel;






