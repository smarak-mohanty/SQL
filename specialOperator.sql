


/*
Given an EMP table with the following data:
EMPNO	ENAME	    JOB	        MGR	    HIREDATE	SAL	    COMM    DEPTNO
7369	SMITH	    CLERK	    7902	17-DEC-80	800	    NULL    20
7499	ALLEN	    SALESMAN	7698	20-FEB-81	1600	300     30
7521	WARD	    SALESMAN	7698	22-FEB-81	1250	500     30
7566	JONES	    MANAGER	    7839	02-APR-81	2975	NULL    20
7600	MARTIN	    SALESMAN	7698	28-SEP-81	1250	1400    30
7698	BLAKE	    MANAGER	    7839	01-MAY-81   2850	NULL    30
7782	CLARK	    MANAGER	    7839	09-JUN-81   2450	NULL    10
7839	KING	    PRESIDENT	NULL	17-NOV-81	5000	NULL    10
7844	SCOTT	    ANALYST	    7566	19-APR-87   3000	NULL    20
7876	ADAMS	    CLERK	    7788	23-MAY-87	1100	NULL    20
7900	JAMES	    CLERK	    7698	03-DEC-81   950	    NULL    30  
*/


--! Write  a query to display the all the details of the employee working as manager, salesman or clerk.
SELECT *
FROM EMP
WHERE JOB IN ('MANAGER', 'SALESMAN', 'CLERK');


--! Write a query to display the details of the employee working in any department except 20 or 30.
SELECT *
FROM EMP
WHERE DEPTNO NOT IN (20,30);


--! Write a query to display the details of the employee earning between 1250 to 5000.
SELECT *
FROM EMP
WHERE SAL BETWEEN 1250 AND 5000;


--! Write a query to display the details of the employee hired between 1981 to 1986.
SELECT *
FROM EMP
WHERE HIREDATE BETWEEN '1-JAN-1981' AND '31-DEC-1986';


--! Write a query to display the details of the employee who are not hired in the year 1981.
SELECT *
FROM EMP
WHERE HIREDATE NOT BETWEEN '1-JAN-1981' AND '31-DEC-1981';


--! Write a query to display the details of the employee who are not getting any commission.
SELECT *
FROM EMP
WHERE COMM IS NULL;


--! Write a query to display the details of the employee who is having mgr.
SELECT *
FROM EMP
WHERE MGR IS NOT NULL;


--! Write a query to display the details of the employee who is having commission.
SELECT *
FROM EMP
WHERE COMM IS NOT NULL;


--! Write a query to display the details of the employee whose name is starting with 'A' ?
SELECT *
FROM EMP
WHERE ENAME LIKE 'A%';


--! write a query to display the details of the employee whose have 'R' in their name.
SELECT *
FROM EMP
WHERE ENAME LIKE '%R%';


--! Write a query to display the details of the employee whose name is having 'A' as the second character.
SELECT *
FROM EMP
WHERE ENAME LIKE '_A%';


--! Write a query to display the details of the employee hired in the year 1981.
SELECT *
FROM EMP
WHERE HIREDATE LIKE '%81';


--! Write a query to display the details of the employees hired in the month February.
SELECT *
FROM EMP
WHERE HIREDATE LIKE '%FEB%';


--! Write a query to display the details of the employee whose job doesn't start with letter 'M' .
SELECT *
FROM EMP
WHERE JOB NOT LIKE 'M%';