This is my Training Project build on Eclipse IDE for Enterprise Java Developers. Version: 2019-09 R (4.13.0) Build id: 20190917-1200 
with jdk 1.8 
Maven Project based on maven-archtype-webapp 1.0 
mySQL 8.0.19
Login username:admin

Login Password:qwerty

Used Database sql query:

create database project;
use project;
create table customer(id int not null auto_increment,
first_name varchar(20) not null,last_name varchar(20) not null,
DOB  date,gender varchar(10),email varchar(40),
Ph_no varchar(14),primary key(id));
