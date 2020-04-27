-- JOIN 

--From 절에 테이블에도 별칭(alias)를 줄수 있다.

--20
SELECT s.STUDNO , s.NAME , s.DEPTNO1 
FROM T_STUDENT s;

--12개
SELECT d.DEPTNO , d.DNAME 
FROM T_DEPARTMENT  d

-- 카티션곱 (Cartesian Product)
-- 두개의 테이블을 JOIN 하게 되면, 
-- 각 테이블의 레코드들의 모든 조합이 출력된다.
-- WHERE 나 ON 등으로 JOIN 조건이 주어지지 않으면 
-- 모든 카티션곱이 출력된다. 


SELECT s.STUDNO 
	 , s.NAME 
	 , s.DEPTNO1 
	 , d.DEPTNO 
	 , d.DNAME 
FROM T_STUDENT    s,
     T_DEPARTMENT d;  -- Oracle 방식  
     
     
     
SELECT s.STUDNO 
	 , s.NAME 
	 , s.DEPTNO1 
	 , d.DEPTNO 
	 , d.DNAME 
FROM T_STUDENT s
     CROSS JOIN T_DEPARTMENT d;  -- ANSI 방식
     
-- Equi Join (등가 join)     
-- Oracel Join 방식
--#6101
SELECT s.NAME      "학생이름"
	 , s.DEPTNO1   "학과번호"
	 , d.DNAME 	   "학과이름"
FROM T_STUDENT    s
    ,T_DEPARTMENT d  -- Oracle 방식  
WHERE s.DEPTNO1 = d.DEPTNO ;   -- 조건(Equi Join) 

--ANSI 방식
SELECT s.NAME      "학생이름"
	 , s.DEPTNO1   "학과번호"
	 , d.DNAME 	   "학과이름"
FROM T_STUDENT    s
     JOIN T_DEPARTMENT d    
on s.DEPTNO1 = d.DEPTNO ;-- 조건(Equi Join) 

SELECT * FROM T_STUDENT;
-- 제 2전공은 ? deptno2
SELECT s.NAME "학생이름" , s.DEPTNO2 "제2학과" , d.DNAME "제2학과 이름"
FROM T_STUDENT s
    ,T_DEPARTMENT d
WHERE s.DEPTNO2 =d.DEPTNO ;

-- #6102
--oracle
SELECT s.NAME "학생이름", s.PROFNO "지도교수#" , d.NAME "지도교수 이름" 
FROM T_STUDENT s
    ,T_PROFESSOR d
WHERE s.PROFNO  = d.PROFNO;

--ANSI
SELECT s.NAME , s.PROFNO , d.NAME 
FROM T_STUDENT s
   JOIN T_PROFESSOR d
 on s.PROFNO = d.PROFNO ;
--Oracle 방식
SELECT s.NAME "학생이름", d.DNAME "학과이름" , p.NAME "교수이름"
FROM t_student    s
	,t_department d
    ,t_professor  p
WHERE s.DEPTNO1  = d.DEPTNO 
  AND s.PROFNO  =p.PROFNO ;
  
  --ANSI 방식
  SELECT s.NAME "학생이름", d.DNAME "학과이름" , p.NAME "교수이름"
FROM t_student    s
	JOIN t_department d
	  on s.DEPTNO1  = d.DEPTNO 
    JOIN t_professor  p
	on s.PROFNO  =p.PROFNO ;

-- #6104
SELECT  e.NAME "사원이름", e.POST "현재", e.PAY "현재연봉" , p.S_PAY "하한금액" , p.E_PAY "상한금액" 
 FROM T_EMP2 e
     ,T_POST p
  WHERE e.POST  = p.POST 

  
  SELECT  e.NAME "사원이름", e.POST "현재", e.PAY "현재연봉" , p.S_PAY "하한금액" , p.E_PAY "상한금액" 
 FROM T_EMP2 e
     JOIN T_POST p
  on e.POST  = p.POST ;
  

--#6105) t_student - t_professor 테이블 join 하여 제1전공(deptno1) 이 101번인 학생들의 학생이름과 지도교수 이름을 출력하세요
--Oracle 
  SELECT s.NAME "학생이름" , p.NAME "교수이름"
   FROM T_STUDENT    s
       ,T_PROFESSOR  p
   WHERE s.PROFNO = p.PROFNO -- join 조건
   AND s.DEPTNO1 ='101';     -- 검색 조건
  
 -- Ansi 
    SELECT s.NAME "학생이름" , p.NAME "교수이름"
   FROM T_STUDENT    s
      JOIN T_PROFESSOR  p
   on s.PROFNO = p.PROFNO 
   AND s.DEPTNO1 ='101';
   
  
  


