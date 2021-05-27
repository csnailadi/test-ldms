PL/SQL Developer Test script 3.0
7
begin
  -- Call the procedure
  oracc.get_emp_salary(p_emp_id => :p_emp_id,
                       p_salary => :p_salary,
                       p_err_code => :p_err_code,
                       p_err_msg => :p_err_msg);
end;
4
p_emp_id
1
90009
4
p_salary
1
50000
4
p_err_code
1
0
4
p_err_msg
0
5
0
