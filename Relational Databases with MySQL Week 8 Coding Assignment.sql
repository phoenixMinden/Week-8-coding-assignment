use employees;
select title, count(*) from employees inner join titles
on employees.emp_no = titles.emp_no
where birth_date > '1965-01-01'
group by title;
select avg(salary) as Average_Salary, title from salaries
inner join titles on salaries.emp_no = titles.emp_no
group by title;
select departments.dept_name as Department_Name, (salary) as Totla_Salary from salaries
inner join dept_emp on salaries.emp_no = dept_emp.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
where salaries.from_date > '1989-12-13' AND
salaries.to_date < '1993-01-01' AND 
departments.dept_name = 'Marketing' group by departments.dept_name;
