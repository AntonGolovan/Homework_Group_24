--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employee_name, monthly_salary
from employees
join employee_salary
on employee_salary.employee_id = employees.id 
join salary 
on employee_salary.salary_id = salary.id

--2.  Вывести всех работников у которых ЗП меньше 2000

select employee_name
from employees
join employee_salary 
on employee_salary.employee_id = employees.id
join salary
on salary.id = employee_salary.salary_id
where monthly_salary < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select monthly_salary, employee_name
from salary
left join employee_salary
on salary.id = employee_salary.salary_id 
left join employees
on employees.id = employee_salary.employee_id
where employee_name is  null

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select monthly_salary
from salary
full join employee_salary
on salary.id = employee_salary.salary_id 
full join employees
on employees.id = employee_salary.employee_id
where employee_name is  null and monthly_salary < 2000;

--5. Найти всех работников кому не начислена ЗП.
 
select employee_name, monthly_salary
from employees e
join employee_salary as es
on e.id = es.employee_id
left join salary as s 
on s.id = es.salary_id
where salary_id > 16;

--6. Вывести всех работников с названиями их должности.

 select employee_name, role_name
 from employees e 
 join roles_employee re 
 on e.id = re.employee_id 
 join roles r 
 on r.id= re.role_id 
 
--7. Вывести имена и должность только Java разработчиков.

select employee_name, role_name
from employees
left join roles_employee
on employees.id = roles_employee.employee_id 
 join roles
on roles.id = roles_employee.role_id
where role_name like '% Java %'


-- 8. Вывести имена и должность только Python разработчиков.

select employee_name, role_name 
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id 
where role_name like '% Python %'

--9. Вывести имена и должность всех QA инженеров.
 
select employee_name, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id 
where role_name like '%QA%'
 
--10. Вывести имена и должность ручных QA инженеров.
  
 select employee_name, role_name
 from employees e 
 join roles_employee re 
 on e.id = re.employee_id 
 join roles r 
 on r.id = re.role_id 
 where role_name like '% Manual QA %'

--11. Вывести имена и должность автоматизаторов QA
 
 select employee_name, role_name
 from employees e 
 join roles_employee re 
 on e.id = re.employee_id 
 join roles r 
 on r.id = re.role_id 
 where role_name like '%Automation QA%'
  
--12. Вывести имена и зарплаты Junior специалистов
 
 select employee_name, monthly_salary
 from employee_salary es 
 join roles_employee re 
 on es.employee_id = re.employee_id 
 join salary s 
 on es.salary_id = s.id 
 join employees e 
 on e.id = es.employee_id
 join roles r 
 on r.id = re.role_id 
 where role_name like '%Junior%'
 
 
--13. Вывести имена и зарплаты Middle специалистов
 
 select employee_name, monthly_salary
 from employee_salary es 
 join roles_employee re 
 on es.employee_id = re.employee_id 
 join salary s 
 on es.salary_id = s.id 
 join employees e 
 on e.id = es.employee_id
 join roles r 
 on r.id = re.role_id 
 where role_name like '%Middle%'
  
--14. Вывести имена и зарплаты Senior специалистов
  
 select employee_name, monthly_salary
 from employee_salary es 
 join roles_employee re 
 on es.employee_id = re.employee_id 
 join salary s 
 on es.salary_id = s.id 
 join employees e 
 on e.id = es.employee_id
 join roles r 
 on r.id = re.role_id 
 where role_name like '%Senior%'
  
--15. Вывести зарплаты Java разработчиков
 
select monthly_salary, role_name
from employee_salary es
join salary s 
on es.salary_id = s.id
join roles_employee re 
on re.employee_id = es.employee_id
join roles r 
on r.id = re.role_id 
where role_name like '% Java %';
  
--16. Вывести зарплаты Python разработчиков

select monthly_salary
from employee_salary es 
join salary s 
on s.id = es.salary_id 
join roles_employee re 
on re.employee_id = es.employee_id 
join roles r 
on r.id = re.role_id 
where role_name like '% Python %';

--17. Вывести имена и зарплаты Junior Python разработчиков
 
 select employee_name, monthly_salary
 from employee_salary es 
 join salary s 
 on s.id = es.salary_id 
 join employees e 
 on e.id = es.employee_id
 join roles_employee re 
 on re.employee_id = e.id
 join roles r 
 on r.id = re.role_id
 where role_name like '%Junior Python %';
 
--18. Вывести имена и зарплаты Middle JS разработчиков
 
 select employee_name, monthly_salary
 from employee_salary es 
 join employees e 
 on e.id = es.employee_id 
 join salary s 
 on s.id = es.salary_id 
 join roles_employee re 
 on re.employee_id = es.employee_id 
 join roles r 
 on r.id = re.role_id 
 where role_name like 'Middle JavaScript%';
  
--19. Вывести имена и зарплаты Senior Java разработчиков
 
 select employee_name, monthly_salary
 from employee_salary es 
 join employees e 
 on e.id = es.employee_id 
 join salary s 
 on s.id = es.salary_id 
 join roles_employee re 
 on re.employee_id = es.employee_id 
 join roles r 
 on r.id = re.role_id 
 where role_name like 'Senior Java %'
 
--20. Вывести зарплаты Junior QA инженеров
 
 select  monthly_salary 
 from employee_salary es 
 join salary s 
 on s.id = es.salary_id 
 join roles_employee re 
 on re.employee_id = es.employee_id 
 join roles r 
 on r.id = re.role_id 
 where role_name like 'Junior %QA %'
 
--21. Вывести среднюю зарплату всех Junior специалистов
 
select  avg(monthly_salary) 
 from employee_salary es 
 join salary s 
 on s.id = es.salary_id 
 join roles_employee re 
 on re.employee_id = es.employee_id 
 join roles r 
 on r.id = re.role_id 
 where role_name like 'Junior%'
 
--22. Вывести сумму зарплат JS разработчиков
 
 select sum(monthly_salary)
 from roles_employee re 
 join roles r 
 on re.role_id = r.id 
 join employee_salary es 
 on es.employee_id = re.employee_id 
 join salary s 
 on s.id = es.salary_id 
 where role_name like '% JavaScript %'
 
--23. Вывести минимальную ЗП QA инженеров
 
 select min(monthly_salary)
 from employee_salary es 
 join salary s 
 on s.id = es.salary_id 
 join roles_employee re 
 on re.employee_id = es.employee_id 
 join roles r 
 on r.id = re.role_id 
 where role_name like '% QA %';
 
--24. Вывести максимальную ЗП QA инженеров

 select max(monthly_salary)
 from employee_salary es 
 join salary s 
 on s.id = es.salary_id 
 join roles_employee re 
 on re.employee_id = es.employee_id 
 join roles r 
 on r.id = re.role_id 
 where role_name like '% QA %';

 --25. Вывести количество QA инженеров
 select count(employee_name) as QA_��������
 from employees e 
 join roles_employee re 
 on e.id = re.employee_id 
 join roles r 
 on r.id = re.role_id 
 where role_name like '% QA %';
 
--26. Вывести количество Middle специалистов.

 select count(role_name) as Middle_�����������
 from employees e 
 join roles_employee re 
 on e.id = re.employee_id 
 join roles r 
 on r.id = re.role_id 
 where role_name like 'Middle %';

--27. Вывести количество разработчиков
 
  select count(role_name) as developers
 from employees e 
 join roles_employee re 
 on e.id = re.employee_id 
 join roles r 
 on r.id = re.role_id 
 where role_name like '% developer';

--28. Вывести фонд (сумму) зарплаты разработчиков.

select sum(monthly_salary)
from employee_salary es 
join salary s 
on s.id = es.salary_id 
join roles_employee re 
on re.employee_id = es.employee_id 
join roles r 
on r.id = re.role_id 
where role_name like '% developer';

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 
 select employee_name, role_name, monthly_salary
 from employee_salary es
 join roles_employee re 
 on re.employee_id = es.employee_id 
 join salary s 
 on s.id = es.employee_id 
 join employees e 
 on e.id = re.employee_id 
 join roles r 
 on r.id = re.role_id
 order by monthly_salary;
 
--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 
 select employee_name, role_name, monthly_salary
 from employee_salary es
 join roles_employee re 
 on re.employee_id = es.employee_id 
 join salary s 
 on s.id = es.employee_id 
 join employees e 
 on e.id = re.employee_id 
 join roles r 
 on r.id = re.role_id
 where monthly_salary between 1700 and 2300
 order by monthly_salary;
 
--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

 select employee_name, role_name, monthly_salary
 from employee_salary es
 join roles_employee re 
 on re.employee_id = es.employee_id 
 join salary s 
 on s.id = es.employee_id 
 join employees e 
 on e.id = re.employee_id 
 join roles r 
 on r.id = re.role_id
 where monthly_salary < 2300
 order by monthly_salary;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
 select employee_name, role_name, monthly_salary
 from employee_salary es
 join roles_employee re 
 on re.employee_id = es.employee_id 
 join salary s 
 on s.id = es.employee_id 
 join employees e 
 on e.id = re.employee_id 
 join roles r 
 on r.id = re.role_id
 where monthly_salary in (1100, 1500, 2000)
 order by monthly_salary;
