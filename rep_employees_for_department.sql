select e.employee_id,e.employee_name,t.job_title,m.employee_name manager,e.date_hired,e.salary,d.department_name
from employees e
join departments d on e.department_id = d.department_id
join job_titles t on e.job_title_id = t.job_title_id
left join employees m on e.manager_id = m.employee_id 
where e.department_id = &p_department_id;
