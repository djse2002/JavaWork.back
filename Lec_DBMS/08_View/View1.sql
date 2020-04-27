CREATE OR REPLACE VIEW v_prof 
AS 
SELECT profno,name, EMAIL , hpage
FROM T_PROFESSOR ;


SELECT * FROM v_prof;


SELECT tname FROM tab;

--  View 생성시 별도의 컬럼 이름을 지정해줄수 있다.
CREATE OR REPLACE VIEW v_prof (pfno, nm, em, hp)
AS 
SELECT profno,name, EMAIL , hpage
FROM T_PROFESSOR ;

SELECT  p.DEPTNO ,p.NAME , d.DNAME 
FROM T_PROFESSOR p  , T_DEPARTMENT d
WHERE p.DEPTNO =d.DEPTNO ;

CREATE OR REPLACE  VIEW v_prof_dept ("교수번호", "교수명" , "소속학과명")
AS
SELECT  p.PROFNO ,p.NAME , d.DNAME 
FROM T_PROFESSOR p  , T_DEPARTMENT d
WHERE p.DEPTNO =d.DEPTNO ;

SELECT * FROM v_prof_dept;



SELECT  d.DNAME , max(HEIGHT ) , max(WEIGHT )
FROM T_STUDENT s , T_DEPARTMENT d
WHERE s.DEPTNO1 =d.DEPTNO 
GROUP BY d.DNAME 


SELECT 
	d.dname "학과명", 
	s.max_height "최대키", 
	s.max_weight "최대몸무게"
FROM 
	( SELECT deptno1, MAX(height) max_height, MAX(weight) max_weight
	FROM t_student
	GROUP BY deptno1 ) s , 
	t_department d
WHERE 
	s.deptno1 = d.deptno;


--#8104) t_student, t_department 테이블 : 학과별(deptno1)로 가장 키가 큰 학생들의 이름과 키, 학과이름을 인라인뷰 를 사용하여 다음과 같이 출력하세요
SELECT d.DNAME , max(s.HEIGHT ) , s.NAME ,  s.HEIGHT 
FROM T_STUDENT  s, T_DEPARTMENT d
WHERE s.DEPTNO1 = d.DEPTNO 
GROUP BY s.NAME ,s.HEIGHT ,d.DNAME 
--ORDER BY max(s.HEIGHT) DESC 


--#8104) 연습
--t_student, t_department 테이블  학과별로 가장 키가 큰 학생들의 이름과 키, 
--학과이름을 인라인뷰 를 사용하여 다음과 같이 출력하세요
SELECT d.dname "학과명", a.max_height "최대키", s.name "학생이름", s.height "키"
FROM 
	(SELECT deptno1, MAX(height) max_height FROM t_student GROUP BY deptno1) a,
	t_student s, t_department d
WHERE 
	s.deptno1 = a.deptno1 AND s.height = a.max_height
	AND s.deptno1 =  d.deptno
;

SELECT s.grade "학년", s.name "이름", s.height "키", a.avg_height "평균키"
FROM
	(SELECT grade, avg(height) avg_height FROM t_student GROUP BY grade) a,
	t_student s
WHERE 
	a.grade = s.grade AND s.height > a.avg_height
	ORDER BY s.GRADE ;



 
 
 
 
 
 

