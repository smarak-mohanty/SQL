--? Multi Row Functions (MRF)

--! Write a query to display the maximum salary earned by a manager.
SELECT MAX(SAL)
FROM EMP
WHERE JOB = 'MANAGER';

--! Write a query to display the total salaries given to the employees, working in department no 10. 
SELECT SUM(SAL)
FROM EMP
WHERE DEPTNO = 10;

--! Write a query to display the number of employee, whose salaries is more than 1500 and is working in department no 20.
SELECT COUNT(*)
FROM EMP
WHERE SAL > 1500 AND DEPTNO = 20;

--! Write a query to display the average salary of the employee working in department no 20 at the job role clerk.
SELECT AVG(SAL)
FROM EMP
WHERE DEPTNO = 20 AND JOB = 'CLERK';