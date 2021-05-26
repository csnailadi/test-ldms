create table departments (
Department_Id   number(5)    not null,
Department_Name varchar2(50) not null,
Location        varchar2(50) not null);

alter table departments 
add (constraint pk_departments primary key (department_id),
     constraint uq_departments unique (department_name));

comment on column departments.department_id is 'The unique identifier for the department';
comment on column departments.department_name is 'The name of the department';
comment on column departments.location is 'The physical location of the department';
