create table Employees (
Employee_Id    number(10)   not null,
Employee_Name  varchar2(50) not null,
Job_Title_id   number(5)    not null,
Manager_Id     number(10),
Date_Hired     date         not null,
salary         number(10)   not null,
Department_Id  number(5)    not null);

alter table Employees 
add (constraint pk_employees primary key (employee_id),
     constraint fk01_employees foreign key (department_id) references departments(department_id),
     constraint fk02_employees foreign key (manager_id) references employees(employee_id),
     constraint fk03_employees foreign key (job_title_id) references job_titles(job_title_id)
     );
     
create index idx1_employees on employees (manager_id);

create index idx2_employees on employees (department_id);
     
comment on column employees.employee_id is 'The unique identifier for the employee';
comment on column employees.employee_name is 'The name of the employee';
comment on column employees.job_title_id is 'The job role undertaken by the employee. Some employees may undertaken the same job role';
comment on column employees.manager_id is 'Line manager of the employee';
comment on column employees.date_hired is 'The date the employee was hired';
comment on column employees.salary is 'Current salary of the employee';
comment on column employees.department_id is 'Each employee must belong to a department';
