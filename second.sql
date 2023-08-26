create database shafiq;
use shafiq;
show databases;
create table student_table(
student_name varchar(50),
s_id int,
s_course varchar(20)
);
show tables;
describe student_table;
alter table student_table add s_emails varchar(30);

insert into student_table(student_name,s_id,s_course,s_emails)
value("shafiq khan",'2009280',"maths","shafiqkhan554@gmail.com");

insert into student_table(student_name,s_id,s_course,s_emails)
value("Arshad khan",'2009281',"B,tech","arshadkhan554@gmail.com");

insert into student_table(student_name,s_id,s_course,s_emails)
value("sibghatullah khan",'2009282',"docs","sibkhan554@gmail.com");

insert into student_table(student_name,s_id,s_course,s_emails)
value("arish khan",'2009283',"docs","arishkhan554@gmail.com");

insert into student_table(student_name,s_id,s_course,s_emails)
value("ashab khan",'2009284',"docs","ashabkhan554@gmail.com");

insert into student_table(student_name,s_id,s_course,s_emails)
value("humairah khan",'2009285',"docs","humairahkhan554@gmail.com");

insert into student_table(student_name,s_id,s_course,s_emails)
value("hasib khan",'2009286',"docs","hasibkhan554@gmail.com");


select * from student_table; 

delete from student_table where s_id;

truncate table student_table;

select * from student_table where s_id=2009282 and s_course="docs";

select * from student_table where s_id="2009286" or student_name="shafiq khan";

select * from student_table where not student_name="shafiq khan";

select * from student_table where student_name in("shafiq khan", "sibghatullah khan");

select * from  student_table where s_id  between "2009280"and "2009281";

select * from student_table where s_emails like 'h%';