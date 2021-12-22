create table employees (
	id serial primary key,
	employee_name VARCHAR(50) not null
);

select * from employees;

insert into employees(employee_name)
values  ('Juanita Mann'),
		('John Benson'),
		('Carol McCormick'),
		('Debbie Alvarado'),
		('Larry Lee'),
		('Duane Gonzalez'),
		('Judith Palmer'),
		('Kenneth Smith'),
		('Irma Kelly'),
		('Michael Kelly'),
		('Deborah McCoy'),
		('James Wallace'),
		('Joyce Jones'),
		('Leonard Walker'),
		('John Johnson'),
		('Loretta Marsh'),
		('Stephanie Chapman'),
		('Elsie Perkins'),
		('Amanda Wood'),
		('Richard Russell'),
		('William Dixon'),
		('Kristen Neal'),
		('David Smith'),
		('Harry Cunningham'),
		('Michelle Cummings'),
		('Daniel Hawkins'),
		('Amy Johnston'),
		('William Hines'),
		('Dorothy Rhodes'),
		('Bonnie Lewis'),
		('Deborah Garcia'),
		('Jessie Goodman'),
		('Marilyn Johnson'),
		('Milton Carter'),
		('Wallace Lynch'),
		('Mark Bell'),
		('Sylvia Wright'),
		('Matthew Garcia'),
		('Daniel Jones'),
		('Rodney Hernandez'),
		('Ernest Howell'),
		('James Adams'),
		('Terrance Lawrence'),
		('Richard Cruz'),
		('Darlene Cruz'),
		('Anthony Marshall'),
		('Edna Hicks'),
		('Jacob Smith'),
		('James Scott'),
		('Willard Garrett'),
		('Norma Page'),
		('Beatrice Beck'),
		('Eric Miller'),
		('Nicholas Martin'),
		('Lillian Hernandez'),
		('Mary Oliver'),
		('Larry Bass'),
		('Brenda Moore'),
		('Nancy Kelly'),
		('Scott Garcia'),
		('Jeremy Jones'),
		('Nancy Mullins'),
		('Robin Rodriguez'),
		('Scott Williams'),
		('Barbara Carson'),
		('Bob Gill'),
		('Scott Gill'),
		('John Smith'),
		('Janet Williams');
		
insert into employees(employee_name)
values ('Ann Rose');

create table salary (
	id serial primary key,
	monthly_salary INT  not null
);

select * from salary;

insert into salary(monthly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);

create table employee_salary(
	id serial primary key,
	employee_id INT unique not null,
	salary_id INT not null
);


select * from employee_salary;


insert into employee_salary(employee_id, salary_id)
values  (6,2),
		(3,16),
		(5,2),
		(7,3),
		(8,5),
		(9,5),
		(10,6),
		(11,7),
		(12,8),
		(13,10),
		(14,12),
		(15,11),
		(16,13),
		(17,15),
		(18,5),
		(19,6),
		(20,7),
		(21,10),
		(22,8),
		(23,3),
		(24,6),
		(25,14),
		(26,2),
		(27,2),
		(28,1),
		(29,9),
		(30,8),
		(31,7),
		(32,3),
		(33,11),
		(71,14),
		(72,12),
		(73,15),
		(74,4),
		(75,16),
		(76,10),
		(77,4),
		(78,1),
		(79,2),
		(80,10);		
		
	
	create table roles(
		id serial primary key,
		role_name INT not null unique
	);
	
alter table roles 
alter column role_name type VARCHAR(30);

select * from roles;

insert into roles(role_name)
values  ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
		
create table roles_employee (
	id serial primary key,
	employee_id INT unique not null,
	role_id INT not null,
	foreign key(employee_id)
		references employees(id),
	foreign key(role_id)
		references roles(id)
);


insert into roles_employee(employee_id, role_id)
values  (5,1),
		(6,2),
		(7,3),
		(8,4),
		(9,5),
		(10,6),
		(11,7),
		(12,8),
		(13,9),
		(14,10),
		(15,11),
		(16,7),
		(17,14),
		(18,20),
		(19,13),
		(20,10),
		(21,10),
		(22,18),
		(23,19),
		(24,18),
		(25,1),
		(26,20),
		(27,1),
		(28,19),
		(29,2),
		(30,15),
		(32,6),
		(35,1),
		(42,15),
		(44,2),
		(46,2),
		(47,14),
		(50,2),
		(51,4),
		(53,17),
		(1,3),
		(2,17),
		(60,1),
		(63,6),
		(66,14);
