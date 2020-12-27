-- Query 1 --
SELECT * FROM EMPLOYEES 
WHERE ADDRESS LIKE '%Elgin%';

-- Query 2 --
SELECT * FROM EMPLOYEES 
WHERE B_DATE LIKE '%197%';

-- Query 3 --
SELECT * FROM EMPLOYEES 
WHERE SALARY BETWEEN 60000 AND 70000;

-- Query 4A --
SELECT * FROM EMPLOYEES 
ORDER BY DEP_ID;

-- Query 4B --
SELECT * FROM EMPLOYEES 
ORDER BY DEP_ID DESC, 
L_NAME DESC;

-- Query 5A --
SELECT DEP_ID, 
COUNT(*) AS "NUM_EMPLOYEES"
FROM EMPLOYEES 
GROUP BY DEP_ID;

-- Query 5B --
SELECT DEP_ID, 
COUNT(*) AS "NUM_EMPLOYEES", 
AVG(SALARY) AS "AVG_SALARY" 
FROM EMPLOYEES  
GROUP BY DEP_ID;

-- Query 5C --
SELECT DEP_ID, 
COUNT(*) AS "NUM_EMPLOYEES", 
AVG(SALARY) AS "AVG_SALARY" 
FROM EMPLOYEES  
GROUP BY DEP_ID;

-- Query 5D --
SELECT DEP_ID,
COUNT(*) AS "NUM_EMPLOYEES", 
AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES  
GROUP BY DEP_ID 
ORDER BY  AVG(SALARY);

-- Query 5E --
SELECT DEP_ID, 
COUNT(*) AS "NUM_EMPLOYEES", 
AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES  
GROUP BY DEP_ID 
HAVING COUNT(*)<4 
ORDER BY  AVG(SALARY);

-- Query BONUS --
SELECT D.DEP_NAME , E.F_NAME, E.L_NAME
FROM EMPLOYEES AS E, DEPARTMENTS AS D
WHERE E.DEP_ID = D.DEPT_ID_DEP
ORDER BY D.DEP_NAME, E.L_NAME DESC ;

