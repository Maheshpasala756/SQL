use practice;
CREATE TABLE user(
			Emp_id int auto_increment primary key,
			User_Name varchar(20) unique not null,
            Email_Address varchar(20) unique not null,
			Passwords varchar(20) not null, 
            Age int check(Age>=20),
            Country varchar(30) default 'USA');

alter table user drop column Age;
alter table user drop column Email_Address;

alter table user add Age int check(Age>=13);
alter table user add Email_Address varchar(40) unique not null;

insert into user(User_Name,Email_Address,Passwords,Age, Country)
values ('Mahesh','maheshpasala@gmail.com','Mahesh@2004',21,'India'),
('Basava','kousikbasava@gmail.com','Basava@2004',20,'India'),
('Pandi','pandi@gmail.com','Pandi@2003',23,'Kerala');

select * from user;

insert into user(User_Name,Email_Address,Passwords,Age)
values ('Sathish','sathish@gmail.com','Sathish@2000',25);