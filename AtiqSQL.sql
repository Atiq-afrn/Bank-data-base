create database atiq;
use atiq;
drop database atiq;
show databases;
create table student_table(
student_name varchar(200),
student_id INT,
student_course varchar(20)
);
show tables;
describe student_table;
alter table student_table add email varchar(50);
truncate table student_tbale;
insert into student_tbale(student_name,student_id,student_course,email)
value("Atiqullah khan",2009280,"b.tech","atiqullahkhan554@gmail.com");

insert into student_tbale(student_name,student_id,student_course,email)
value("Arshad khan",2009280,"b.tech","arshadkhan554@gmail.com");

insert into student_tbale(student_name,student_id,student_course,email)
value("shafiq khan",2009282,"b.tech","shafiqhkhan554@gmail.com");

insert into student_tbale(student_name,student_id,student_course,email)
value("sibghatullah khan",2009283,"b.tech","sibghatullahkhan554@gmail.com");
select student_id,student_name,student_course from student_tbale;
select * from student_table;
set sql_safe_updates =0;
delete from student_table ;
truncate table student_table;

create database DB1;
drop database DB1;

use DB1;
create table data_of_customer(
custid varchar(5),
fname varchar(10),
mname varchar(20),
lname varchar(10),
cityname varchar(15),
age int,
mobileno int,
occupation varchar(12), 
dob date,
constraint customer_id_pk primary key (custid)
);


create table account
(
account_no int,
custid int ,

brachn_id varchar(10),

acc_opening_b int,

acc_opening_date date,

acc_type varchar(10), 

constraint account_account_no_pk primary key(account_no)
);

select * from  data_of_customer inner join account
on data_of_customer.custid=account.custid;





