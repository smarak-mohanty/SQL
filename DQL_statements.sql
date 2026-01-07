/* 
Given a STUDENT table with the following data:
S.no	S_Name	    S_Percentage
1	    Gopi	    36
2	    Ahemji	    44
3	    Kokila	    68
4	    Rashi	    72
5	    Jigar	    88
6	    Kinjal	    69
*/


--! Write a query to print the student names from the student table.
select S_Name from STUDENT; 

--! Write a Query to display the percentage of the student.
select S_Percentage from STUDENT;  

--! Write a Query to display all the data from the student table.
select * from STUDENT;  

--! Write a Query to display the student name and percentage from the table.
select S_Name, S_Percentage from STUDENT;  

--! Write a Query to display the serial number and student name from the table.
select S.no, S_Name from STUDENT;  




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


--! Write a Query to display all the data from EMP table.
select * from EMP;

--! Write a Query to display employee name, their salary and the commission given to them.
select ENAME, SAL, COMM from EMP;

--! Write a Query to display the employee name along with their hiring date
select ENAME, HIREDATE from EMP;

--! Write a Query to display employee name, salary and mid-term salary.
select ENAME, SAL, SAL*6 from EMP;

--! Write a Query to display employee id, employee name, salary along with 5% salary hike.
select EMPNO, ENAME, SAL, SAL+(SAL*0.05) from EMP;

--! Write a Query to display employee name, job and salary after 25% deduction.
select ENAME, JOB, SAL-(SAL*0.25) from EMP;

--! Write a Query to display employee name, hiring date, reporting manager along with annual salary after getting 50 dollar incentives.
select ENAME, HIREDATE, MGR, (SAL*12)+50 from EMP;


--DISTINCT

--! Write a Query to display the different salaries from EMP table.
SELECT SAL FROM EMP;
SELECT DISTINCT SAL FROM EMP;


--! Write a Query to display different salary and dept_no from EMP.
SELECT SAL, DEPTNO FROM EMP;
SELECT DISTINCT SAL, DEPTNO FROM EMP;


--! Write a Query to display different salary along with emp_name from EMP.
SELECT ENAME, SAL FROM EMP;
SELECT DISTINCT ENAME, SAL FROM EMP;    


--! Write a Query to display different DEPTNO from EMP table.
SELECT DEPTNO FROM EMP;
SELECT DISTINCT DEPTNO FROM EMP;


--! Write a Query to display different job from EMP. 
SELECT JOB FROM EMP;
SELECT DISTINCT JOB FROM EMP;


--! Write a Query to display different hiring date from EMP.
SELECT HIREDATE FROM EMP;
SELECT DISTINCT HIREDATE FROM EMP;


--! Write a Query to display the different reporting managers from EMP;
SELECT MGR FROM EMP;
SELECT DISTINCT MGR FROM EMP;



-- SELECT with WHERE clause

--! Write a Query to display all the details of the employee working in dep_no 20.
SELECT * 
FROM EMP
WHERE DEPTNO=20;


--! Write a Query to display the employees name whose salaries are greater than 2000 and is from dept_no 20.
SELECT ENAME
FROM EMP
WHERE DEPTNO=20 AND SAL>2000;


--! Write a Query to display the annual salary of the employee having name James.
SELECT SAL*12 AS ANNUAL_SAL
FROM EMP
WHERE ENAME='JAMES';


--! Write a Query to display the names of the employee working as clerk
SELECT ENAME 
FROM EMP
WHERE JOB='CLERK';


--! Write a Query to display the details of the employees whose salary is more than 2000.
SELECT *
FROM EMP
WHERE SAL>2000;


--! Write a Query to display the name of employes heired after 1981.
SELECT ENAME 
FROM EMP
WHERE HIREDATE>'31-DEC-1981';


--! Write a Query to display the name of employes whose annual salary is greater than 12000.
SELECT ENAME
FROM EMP
WHERE SAL*12>12000;


--! Write a Query to display the name of the employee hire after 2month of 1981.
SELECT ENAME
FROM EMP
WHERE HIREDATE<'01-FEB-1981';