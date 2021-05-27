create or replace package body oracc is

-- creates an employee 
-- p_err_code is 0 if success
-- p_err_msg is null for success else error message
procedure create_employee (
     p_emp_record     in employees%rowtype,
     p_err_code       out number,
     p_err_msg        out varchar2) IS

v_err_msg  varchar2(2000);

begin
  if p_emp_record.employee_id is not null and p_emp_record.employee_name is not null and
    p_emp_record.job_title_id is not null and p_emp_record.date_hired is not null and
    p_emp_record.salary is not null and p_emp_record.department_id is not null then
    
    insert into employees
    values p_emp_record;
    
    commit;
    
    p_err_code := 0;
    p_err_msg  := null;
    
  else
    p_err_code := -10;
    p_err_msg := 'Invalid input data';   
  end if;    
  
exception
  when others then
    v_err_msg  := substr(sqlcode||':'||sqlerrm,1,2000);
    p_err_code := -100;
    p_err_msg := v_err_msg;  
end create_employee;

-- Changes employee salary 
-- p_err_code is 0 if success
-- p_err_msg is null for success else error message
procedure change_emp_salary (
     p_emp_id     in employees.employee_id%type,
     p_change_perc in number,
     p_err_code   out number,
     p_err_msg    out varchar2
     ) IS

v_err_msg  varchar2(2000);

begin
  if p_emp_id is not null and p_change_perc is not null then
    update employees e
    set e.salary = trunc((salary + salary*p_change_perc/100))
    where e.employee_id = p_emp_id;

    if sql%rowcount = 0 then
      p_err_code := -20;
      p_err_msg := 'Invalid Employee ID';
    else
      commit;
      p_err_code := 0;
      p_err_msg  := null;
    end if;
  else
    p_err_code := -10;
    p_err_msg := 'Invalid input data';
  end if;
exception
  when others then
    v_err_msg  := substr(sqlcode||':'||sqlerrm,1,2000);
    p_err_code := -100;
    p_err_msg := v_err_msg;

end change_emp_salary;

-- Transfer employee to different dept 
-- p_err_code is 0 if success
-- p_err_msg is null for success else error message
procedure transfer_emp (
     p_emp_id       in employees.employee_id%type,
     p_new_dept_id  in departments.department_id%type,
     p_err_code     out number,
     p_err_msg      out varchar2
     ) IS
     
  v_err_msg   varchar2(2000);
    
begin
  
  if p_emp_id is not null and p_new_dept_id is not null then
     update employees e
     set e.department_id = p_new_dept_id
     where e.employee_id = p_emp_id; 

     if sql%rowcount = 0 then
       p_err_code := -20;
       p_err_msg := 'Invalid Employee ID';
     else
       commit;
       p_err_code := 0;
       p_err_msg  := null;
     end if;
  else
    p_err_code := -10;
    p_err_msg := 'Invalid input data';
  end if;

exception        
  when others then
    v_err_msg  := substr(sqlcode||':'||sqlerrm,1,2000);
    p_err_code := -100;
    p_err_msg := v_err_msg;  
end transfer_emp;

-- Return salary of an employee  
-- p_err_code is 0 if success
-- p_err_msg is null for success else error message
procedure get_emp_salary (
     p_emp_id     in employees.employee_id%type,
     p_salary     out employees.salary%type,
     p_err_code   out number,
     p_err_msg    out varchar2
     ) IS

v_err_msg   varchar2(2000);

begin

  if p_emp_id is not null then

     select e.salary
     into p_salary
     from employees e
     where e.employee_id = p_emp_id;
     
     p_err_code := 0;
     p_err_msg  := null;
  else
    p_err_msg := 'Please provide Emp ID';
    p_salary  := null;
    p_err_code := -10;
  end if;

exception
  when no_data_found then
    p_salary   := null;
    p_err_code := -20;
    p_err_msg  := 'Invalid Emp ID';
  when others then
    v_err_msg  := substr(sqlcode||':'||sqlerrm,1,2000);
    p_salary   := null;
    p_err_code := -100;
    p_err_msg := v_err_msg;
end get_emp_salary;

end oracc;
/
