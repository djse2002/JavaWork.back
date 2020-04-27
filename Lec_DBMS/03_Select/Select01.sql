-- dual 은 ROW 1개 짜리 dummy Table;
SELECT 'abcde' FROM DUAL ;
 
SELECT '안녕하세요' FROM dual;
select 100 FROM dual;

------* 은 모든 컬럼---------
SELECT  * FROM T_EMP ;

-- 원하는 컬럼--- 
SELECT EMPNO ,ENAME --EMPNO  ENAME JOB MGR HIREDATE SAL COMM DEPTNO
	FROM T_EMP ;
	
SELECT * FROM T_PROFESSOR ;

SELECT '안녕하세요' 
FROM T_PROFESSOR;

SELECT name, '교수님 싸랑해요'
FROM T_PROFESSOR ;

-- 컬럼 별명(alias) 사용
SELECT  STUDNO  학번 , NAME 이름
FROM T_STUDENT ;

SELECT  STUDNO "학생 학번" , NAME 이름
FROM T_STUDENT ;

SELECT studno "학번", NAME  AS 이름
FROM T_STUDENT ;

SELECT EMPNO "사원번호" , ENAME 사원명 , JOB AS 직업
FROM T_EMP ;

SELECT DEPTNO "부서#", DNAME 부서명 , LOC As  위치
FROM T_DEPT ;

SELECT A.EMPNO  "사원번호" , A.ENAME 사원명 , A.JOB 직업 
	 , B.DEPTNO 부서# , B.DNAME 부서명 , b.LOC 위치 
FROM T_EMP A, T_DEPT B;


--DISTINCT
SELECT * from t_emp;
SELECT deptno FROM T_EMP ;
SELECT DISTINCT deptno 
  FROM T_EMP ;
  
 
 SELECT DISTINCT deptno1
 FROM t_student;
 

SELECT  DISTINCT job
FROM t_emp;

SELECT  NAME , POSITION 
FROM T_PROFESSOR 

SELECT  NAME || '-' || POSITION "교수님 명단" 
FROM T_PROFESSOR 



SELECT NAME    ||  '의 키는'  ||
	   HEIGHT  ||  'Cm' 	|| 
	   WEIGHT  ||  '입니다' AS "학생의 키와 몸무개"  
FROM t_student