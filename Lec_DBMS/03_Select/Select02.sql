-- 산술연산자

SELECT ename, sal, sal * 1.1  -- 급여 10% 인상분
FROM t_emp;

SELECT ENAME ,sal, COMM 
FROM T_EMP 

SELECT ENAME , sal, comm, sal+COMM  -- null 값과의 산술연산은 무.조.건 Null!!!!! 
FROM T_EMP 

-- WHERE 조건절
SELECT *
FROM T_EMP
WHERE JOB  ='SALESMAN';


SELECT DEPTNO ,ENAME , SAL ,DEPTNO 
FROM t_emp
WHERE DEPTNO = 10;


SELECT ENAME , SAL 
FROM T_EMP 
WHERE sal > 2000;

SELECT ENAME , EMPNO 
FROM T_EMP 
WHERE ENAME  = 'SCOTT';


SELECT *
FROM T_EMP
WHERE EMPNO in (7369,7499,7521)

SELECT DISTINCT EMPNO 
 FROM T_EMP 
 
 
 SELECT *
 FROM T_STUDENT ;
 


SELECT GRADE , NAME
	FROM T_STUDENT 
 WHERE GRADE =2 OR GRADE =3;
 
SELECT GRADE , NAME
 FROM T_STUDENT 
 WHERE GRADE  in(2,3);
 
SELECT GRADE , NAME
	FROM T_STUDENT 
 WHERE GRADE >1 and GRADE < 4;
 
SELECT GRADE , NAME
 FROM T_STUDENT 
 WHERE GRADE  NOT IN (1,4);
 
SELECT GRADE , NAME
 FROM T_STUDENT 
 WHERE GRADE  BETWEEN 2 AND 3;
 ----연습1
SELECT NAME 이름 , PAY 급여 , POSITION 직급
 FROM T_PROFESSOR 
 WHERE pay > 300 
 	AND POSITION = '정교수'
 	
 -----연습2
 SELECT NAME ,POSITION 
  FROM T_PROFESSOR 
 WHERE	BONUS IS NULL;
 	

---연습 3
SELECT NAME 
FROM T_PROFESSOR 
WHERE NAME LIKE '김%';

--연습4
SELECT ENAME 
FROM T_EMP 
WHERE ENAME LIKE '%NE%';


SELECT ENAME 
FROM T_EMP 
WHERE ENAME  LIKE '_A%';

SELECT name, GRADE, HEIGHT 
FROM T_STUDENT 
ORDER BY grade ,HzEIGHT  DESC ;


SELECT *
FROM T_EMP 
WHERE ENAME LIKE '%L%'
ORDER BY ENAME DESC ;


SELECT ENAME ,JOB ,SAL 
FROM T_EMP 
ORDER BY job DESC , SAL;






