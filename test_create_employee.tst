PL/SQL Developer Test script 3.0
17
declare
  -- Non-scalar parameters require additional processing 
  p_emp_record employees%rowtype;
begin
  p_emp_record.employee_id   := 90011;
  p_emp_record.employee_name := 'Chandra Test2';
  p_emp_record.job_title_id  := 3;
  p_emp_record.manager_id    := 90002;
  p_emp_record.date_hired    := trunc(sysdate);
  p_emp_record.salary        := 52000;
  p_emp_record.department_id := 3;
  
  -- Call the procedure
  oracc.create_employee(p_emp_record => p_emp_record,
                        p_err_code => :p_err_code,
                        p_err_msg => :p_err_msg);
end;
2
p_err_code
1
-100
4
p_err_msg
1
-1:ORA-00001: unique constraint (WEO.PK_EMPLOYEES) violated
5
0
