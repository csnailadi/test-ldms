PL/SQL Developer Test script 3.0
7
begin
  -- Call the procedure
  oracc.transfer_emp(p_emp_id => :p_emp_id,
                     p_new_dept_id => :p_new_dept_id,
                     p_err_code => :p_err_code,
                     p_err_msg => :p_err_msg);
end;
4
p_emp_id
1
90001
4
p_new_dept_id
1
10
3
p_err_code
1
-100
4
p_err_msg
1
-2291:ORA-02291: integrity constraint (WEO.FK01_DEPARTMENTS) violated - parent key not found
5
0
