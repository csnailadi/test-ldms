insert into employees (Employee_Id,Employee_Name,Job_Title_id,Manager_Id,Date_Hired,salary,Department_Id)
values (90001,'John Smith',1,null,to_date('01/01/1995','dd/mm/yyyy'),100000,1);

insert into employees (Employee_Id,Employee_Name,Job_Title_id,Manager_Id,Date_Hired,salary,Department_Id)
values (90002,'Jimmy Willis',2,90001,to_date('23/09/03','dd/mm/yy'),52500,4);

insert into employees (Employee_Id,Employee_Name,Job_Title_id,Manager_Id,Date_Hired,salary,Department_Id)
values (90003,'Roxy Jones',4,null,to_date('11/02/17','dd/mm/yy'),35000,4);

insert into employees (Employee_Id,Employee_Name,Job_Title_id,Manager_Id,Date_Hired,salary,Department_Id)
values (90004,'Selwyn Field',4,null,to_date('20/05/15','dd/mm/yy'),32000,4);

insert into employees (Employee_Id,Employee_Name,Job_Title_id,Manager_Id,Date_Hired,salary,Department_Id)
values (90006,'Sarah Phelps',2,90001,to_date('21/03/15','dd/mm/yyyy'), 45000,2);

insert into employees (Employee_Id,Employee_Name,Job_Title_id,Manager_Id,Date_Hired,salary,Department_Id)
values (90005, 'David Hallett',3,90006,to_date('17/04/18','dd/mm/yyyy'),40000,2);

insert into employees (Employee_Id,Employee_Name,Job_Title_id,Manager_Id,Date_Hired,salary,Department_Id)
values (90007,'Louise Harper',3, 90006, to_date('01/01/13','dd/mm/yy'), 47000, 2);

insert into employees (Employee_Id,Employee_Name,Job_Title_id,Manager_Id,Date_Hired,salary,Department_Id)
values (90009,'Gus Jones',2, 90001, to_date('15/05/18','dd/mm/yy'), 50000, 3);

insert into employees (Employee_Id,Employee_Name,Job_Title_id,Manager_Id,Date_Hired,salary,Department_Id)
values (90008,'Tina Hart',3,90009, to_date('28/07/14','dd/mm/yy'), 45000,3);

insert into employees (Employee_Id,Employee_Name,Job_Title_id,Manager_Id,Date_Hired,salary,Department_Id)
values (90010,'Mildred Hall', 5,90001,to_date('12/10/96','dd/mm/yy'),35000, 1);

commit;