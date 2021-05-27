select d.department_name,sum(salary) as "Total Emp Salary"
from employees e
join departments d on e.department_id = d.department_id
where e.department_id = &p_department_id
group by d.department_name;
