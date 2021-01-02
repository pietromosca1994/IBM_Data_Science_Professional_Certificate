-- Query 1A --
select E.F_NAME, E.L_NAME, JH.START_DATE 
from EMPLOYEES E 
inner join  JOB_HISTORY JH 
on E.EMP_ID=JH.EMPL_ID;

-- Query 1B --
select E.F_NAME, E.L_NAME, JH.START_DATE , J.JOB_TITLE
from EMPLOYEES E 
inner join  JOB_HISTORY JH
on E.EMP_ID=JH.EMPL_ID
inner join JOBS J 
on JH.JOBS_ID=J.JOB_IDENT;

-- Query 2A --
select E.EMP_ID, E.L_NAME, D.DEPT_ID_DEP, D.DEP_NAME
from EMPLOYEES E
left outer join DEPARTMENTS D
on E.DEP_ID=D.DEPT_ID_DEP;

-- Query 2B --
select E.EMP_ID, E.L_NAME, E.B_DATE, D.DEPT_ID_DEP, D.DEP_NAME
from EMPLOYEES E
left outer join DEPARTMENTS D
on E.DEP_ID=D.DEPT_ID_DEP
where YEAR(E.B_DATE)<1980;

-- Query 2C --
select E.EMP_ID, E.L_NAME, E.B_DATE, D.DEPT_ID_DEP, D.DEP_NAME
from EMPLOYEES E
left outer join DEPARTMENTS D
on E.DEP_ID=D.DEPT_ID_DEP AND YEAR(E.B_DATE)<1980;

-- Query 3A --
select E.F_NAME, E.L_NAME, D.DEP_NAME
from EMPLOYEES E
full outer join DEPARTMENTS D
on E.DEP_ID=D.DEPT_ID_DEP;

-- Query 3B --
select E.F_NAME, E.L_NAME, E.SEX, E.DEP_ID, D.DEP_NAME
from EMPLOYEES E
full outer join DEPARTMENTS D
on E.DEP_ID=D.DEPT_ID_DEP and E.SEX='M';