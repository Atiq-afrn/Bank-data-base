create database Bank_DB;

use Bank_DB;
-- custoemr personel infomation


create table customer_p_i
(
customer_id varchar(10),
customer_name varchar(15),
customer_DOB date,
customer_gardian_name varchar(15),
address varchar(50),
contact_no bigint(10),
mail_ID varchar(40),
marital_status varchar(10),
gender varchar(2),
identifiacaion_doc_type varchar(20),
ID_DOC_no varchar(20),
country_name varchar(20),
constraint customer_persnel_info primary key (customer_id)
);
insert into customer_p_i values('bnk101','Atiq khan','2000/12/01',
'Hasibullah khan','Ambwa jauhair sisai','8707435104',
'atiqqullahkhan554@gmail.com','single','m','PAN card','FZRPK0977D','India'
);

select* from customer_p_i;

show tables;
create table customer_refrence_info
(
customer_id varchar(10),
reference_acc_name varchar(10),
reference_acc_no bigint(20),
reference_acc_add varchar(30),
reletion varchar(30),
constraint customer_ref_pk primary key(customer_id),
constraint customer_per_info foreign key(customer_id) references customer_p_i(customer_id)
);

insert into customer_refrence_info values('bnk101','hasibullah','47860015','Risia Bahraich','Father');
select* from customer_refrence_info;



create table Bank_infomation
(
bank_ifsc varchar(20),
bank_name varchar(20),
branch_name varchar(20),
constraint bank_info primary key(bank_ifsc)
);
insert into Bank_infomation values('punb4786','Punjab national bank','Lucknow dsauli');
select * from Bank_infomation;

create table account_info
(
reference_acc_no bigint(15),
customer_id varchar(10),
account_type varchar(10),
account_activation_date date,
bank_ifsc varchar(10),
intrest decimal(5,3),
initial_deposit bigint(15),
constraint acc_info_pk primary key(reference_acc_no),
constraint cust_ref_fk foreign key(customer_id) references customer_p_i(customer_id),
constraint bank_info_fk foreign key(bank_ifsc) references bank_infomation(bank_ifsc) 
);
insert into account_info values('65842','bnk101','saving','2017-1-13','punb4786','5.3','500000');
select *from account_info;
