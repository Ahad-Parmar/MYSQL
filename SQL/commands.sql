create database employee;

use employee;

create table detail
(
e_id varchar(15) primary key,
employee_fname varchar(50),
employee_lname varchar(50),
department varchar(50)
);
INSERT INTO detail VALUES ('100', 'ahad' , 'parmar', 'sql');
INSERT INTO detail VALUES ('101', 'ahad1', 'parmar1', 'golang');
INSERT INTO detail VALUES ('102', 'ahad2', 'parmar2', 'kubernate');
INSERT INTO detail VALUES ('103', 'ahad3', 'parmar3', 'java');
INSERT INTO detail VALUES ('104', 'ahad4', 'parmar4', 'python');
INSERT INTO detail VALUES ('105', 'ahad5', 'parmar5', 'php');