SELECT *
FROM T_EMP
WHERE ENAME ='SCOTT'


SELECT * 
FROM T_EMP 
WHERE sal > (SELECT SAL 
FROM T_EMP
WHERE ENAME ='SCOTT')


SELECT name, HEIGHT 
FROM T_STUDENT 
WHERE HEIGHT  = (SELECT max(HEIGHT)  FROM T_STUDENT)

--1. 단일행 서브 쿼리
--#7103) t_student, t_department 테이블 사용하여 이윤나 학생과 1전공이 동일한 학생들의 이름과 1전공 이름을 출력하세요

SELECT *
 from T_STUDENT
 WHERE NAME ='이윤나'  --101
 
SELECT s.name "학생이름", d.dname "1전공"
FROM t_student s, t_department d
AND s.deptno1 = (SELECT deptno1 FROM t_student WHERE name = '이윤나');


-- #7104) 연습
--t_professor, t_department 테이블 : 입사일이 송도권 교수보다 나중에 입사한 사람의 
--이름과 입사일, 학과명을 출력하세요

SELECT p.NAME "교수명", TO_CHAR(p.HIREDATE,'YYYY-MM-DD')"입사일" , d.DNAME 
FROM T_PROFESSOR p, T_DEPARTMENT d 
WHERE p.DEPTNO  = d.DEPTNO 
AND p.HIREDATE  > (SELECT HIREDATE FROM T_PROFESSOR WHERE NAME ='송도권')

SELECT *
 FROM T_PROFESSOR 

SELECT  * 
FROM T_PROFESSOR 
WHERE NAME ='송도권'  --2008-03-22 00:00:00

SELECT * FROM T_DEPARTMENT 



-- #7105) 연습
--t_student 테이블 :  1전공이 101번인 학과의 평균 몸무게보다 몸무게가 많은 학생들의 
--이름과 몸무게를 출력하세요

SELECT t.name, t.WEIGHT 
 FROM T_STUDENT t
 WHERE  t.WEIGHT > (SELECT avg(WEIGHT)
  FROM T_STUDENT WHERE  DEPTNO1 = 101)
 
 SELECT avg(WEIGHT )
  FROM T_STUDENT 

  SELECT WEIGHT 
  FROM T_STUDENT 
  WHERE DEPTNO1 =101




--#7106) 연습
--t_professor 테이블에서 심슨 교수와 같은 입사일에 입사한 교수 중, 
--조인형 교수보다 월급을 적게 받는 교수의  이름과 급여, 입사일을 출력하세요
SELECT NAME "이름" ,pay "급여",  TO_CHAR(HIREDATE,'yy/mm/dd') "입사일"
FROM T_PROFESSOR 
WHERE HIREDATE  = (SELECT HIREDATE FROM T_PROFESSOR  WHERE NAME ='심슨')
AND pay < (SELECT PAY  FROM T_PROFESSOR  WHERE NAME ='조인형')


SELECT *
 FROM T_DEPT2 
WHERE AREA = '서울지사';
 

SELECT * 
  FROM T_EMP2

SELECT  EMPNO  ,NAME , DEPTNO 
FROM  T_EMP2
WHERE DEPTNO in(SELECT dcode FROM T_DEPT2 WHERE AREA ='서울지사')

SELECT name, POST , PAY 
FROM T_EMP2 
WHERE POST ='과장'

--#7108)
SELECT name "이름", post "직급" , TO_CHAR(pay,'999,999,999') || '원'  "연봉"
FROM T_EMP2 
WHERE  pay >= ANY (SELECT pay FROM T_EMP2 WHERE POST ='과장' ) 


--#7109)
SELECT NAME "이름" , GRADE "학년", WEIGHT "몸무개"
 FROM T_STUDENT 
 WHERE GRADE = 4

 
SELECT NAME "이름" , GRADE "학년", WEIGHT "몸무개"
FROM T_STUDENT 
WHERE WEIGHT  <ALL (SELECT WEIGHT 
 					  FROM T_STUDENT 
 					 WHERE GRADE = 4)	
 					 

 