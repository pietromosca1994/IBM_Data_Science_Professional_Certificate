-- Query A1 -- ( Fail)
select * from employees where salary > AVG(salary);

-- Query A2 -- 
select EMP_ID, F_NAME, L_NAME, SALARY from employees where SALARY > (select AVG(SALARY) from employees);
 
 -- Query A3 -- (Fail)
select EMP_ID, SALARY, AVG(SALARY) AS AVG_SALARY from employees;

-- Query A4 -- 
select EMP_ID, SALARY, ( select AVG(SALARY) from employees ) AS AVG_SALARY from employees;

-- Query A5 --
select * from ( select EMP_ID, F_NAME, L_NAME, DEP_ID from employees) AS EMP4ALL;

-- Query B1 --
select * from employees where DEP_ID IN ( select DEPT_ID_DEP from departments );

-- Query B2 --

select * from employees where DEP_ID IN ( select DEPT_ID_DEP from departments where LOC_ID = 'L0002' );

-- Query B3 --

select DEPT_ID_DEP, DEP_NAME from departments where DEPT_ID_DEP IN ( select DEP_ID from employees where SALARY > 70000 ) ;

-- Query B4 --

select * from employees, departments;

-- Query B5 --

select * from employees, departments where employees.DEP_ID = departments.DEPT_ID_DEP;

-- Query B6 --

select * from employees E, departments D where E.DEP_ID = D.DEPT_ID_DEP;

--Query B7 --

select EMP_ID, DEP_NAME from employees E, departments D where E.DEP_ID = D.DEPT_ID_DEP;

-- Query B8 --

select E.EMP_ID, D.DEP_NAME from employees E, departments D where E.DEP_ID = D.DEPT_ID_DEP