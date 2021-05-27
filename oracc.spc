create or replace package oracc is

procedure create_employee (
     p_emp_record     in employees%rowtype,
     p_err_code       out number,
     p_err_msg        out varchar2);

procedure change_emp_salary (
     p_emp_id      in employees.employee_id%type,
     p_change_perc in number,
     p_err_code    out number,
     p_err_msg     out varchar2
     );

procedure transfer_emp (
     p_emp_id       in employees.employee_id%type,
     p_new_dept_id  in departments.department_id%type,
     p_err_code     out number,
     p_err_msg      out varchar2
     );

procedure get_emp_salary (
     p_emp_id     in employees.employee_id%type,
     p_salary     out employees.salary%type,
     p_err_code   out number,
     p_err_msg    out varchar2
     );

end oracc;
/
