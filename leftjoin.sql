create database DB2;

use DB2;

create table customer
(
custid varchar (10),
fname varchar(10),
mname varchar(10),
lname varchar(10),
cityname varchar(10),
mobileno int(10),
dob date,
constraint customer_custid_pk primary key(custid)
);
insert into customer values ('A-4777','Atiq','null','khan','Bahraich','8707','2000-12-01');
insert into customer values ('A-4778','shafiq','null','khan','Bahraich','9607','2000-12-01');
insert into customer values ('A-4779','arshad','null','khan','Bahraich','9507','2000-12-01');
insert into customer values ('A-4770','ashab','null','khan','Bahraich','6307','2000-12-01');
insert into customer values ('A-4771','humairah','null','khan','Bahraich','8407','2000-12-01');
insert into customer values ('A-4772','sib','null','khan','Bahraich','5807','2000-12-01');
insert into customer values ('A-4773','maroof','null','khan','Bahraich','4707','2000-12-01');
insert into customer values ('A-4774','khan','null','khan','Bahraich','1407','2000-12-01');




create table branch
(
bid varchar(10),
bname varchar(10),
bcity varchar(10),
constraint branch_bid_pk primary key(bid) 
);
insert into branch values('b102','Bahraich','Bahraich');
insert into branch values('b103','delhi','Bahraich');
insert into branch values('b104','Lucknow','Bahraich');
insert into branch values('b105','Aligarh','Bahraich');
insert into branch values('b106','mumbai','Bahraich');
insert into branch values('b108','nepal','Bahraich');
insert into branch values('b107','mumbai','Bahraich');
insert into branch values('b109','Lucknow','Bahraich');



create table account
( 
anumber varchar(10),
custid varchar(10),
bid varchar(5),
opening_balance int(15),
aod date,
atype varchar (10),
astatus varchar(10),

constraint accouont_anumber_pk primary key(anumber),
constraint account_bid_fk foreign key(bid) references branch(bid),
constraint account_custid_fk foreign key(custid) references customer(custid)
);
insert into account values('4786','A-4777','b102','150000','2003-12-01','saving','active');
insert into account values('4787','A-4778','b102','150000','2003-12-01','current','disabled');
insert into account values('4788','A-4779','b102','150000','2003-12-01','saving','active');
insert into account values('4789','A-4770','b102','150000','2003-12-01','current','idle');
insert into account values('4780','A-4771','b102','150000','2003-12-01','saving','active');
insert into account values('4781','A-4772','b102','150000','2003-12-01','saving','active');
insert into account values('4782','A-4773','b102','150000','2003-12-01','saving','idle');
insert into account values('4783','A-4774','b102','150000','2003-12-01','saving','active');
select * from account;

show tables;
select count(anumber) from account;

select * from customer left join account on customer.custid=account.custid;
