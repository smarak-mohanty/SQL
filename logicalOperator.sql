

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


--! Write a query to display all the details of an employee working as manager in dept_no 20.
SELECT * 
FROM EMP
WHERE JOB='MANAGER' AND DEPTNO='20';


--! Write a query to display the name of the employee earning more than 1500 and working in dept_no 10.
SELECT ENAME
FROM EMP
WHERE SAL>1500 AND DEPTNO = 10;


--! Write a query to display the names of the employee working in dept_no 10 or 20
SELECT ENAME
FROM EMP
WHERE DEPTNO=10 OR DEPTNO=20;


--! Write a query to display the details of the employee either working as manager or analyst or clerk.
SELECT *
FROM EMP
WHERE  JOB='MANAGER' OR JOB='ANALYST' OR JOB='CLERK';


--! Write a query to display the details of the employee whose salary is equal too or more then 1500 or working in dept_no 30
SELECT ENAME
FROM EMP
WHERE SAL>=1500 OR DEPTNO=30;


--! Write a query to display all the details of an employee whose is not working as an manager.
SELECT *
FROM EMP
WHERE NOT JOB = 'MANAGER';

-- OR

SELECT *
FROM EMP
WHERE JOB != 'MANAGER';    

-- OR

SELECT *
FROM EMP
WHERE JOB <> 'MANAGER';


--! Write a query to display the details of the employee hired after 1980 but before 1987 and working as manager or salesman or clerk and earning more 1250 but less than 5000 in the department no. 20 or 30.
SELECT *
FROM EMP
WHERE HIREDATE > '31-DEC-1980' AND HIREDATE < '01-JAN-1987'
AND (JOB = 'SALESMAN' OR JOB = 'MANAGER' OR JOB = 'CLERK')
AND SAL > 1250 AND SAL < 5000
AND (DEPTNO = 20 OR DEPTNO = 30);