PL/SQL Developer Test script 3.0
7
begin
  -- Call the procedure
  oracc.change_emp_salary(p_emp_id => :p_emp_id,
                          p_change_perc => :p_change_perc,
                          p_err_code => :p_err_code,
                          p_err_msg => :p_err_msg);
end;
4
p_emp_id
1
90001
4
p_change_perc
1
-10
4
p_err_code
1
0
4
p_err_msg
0
5
0
