--#7201)
SELECT GRADE , max(HEIGHT )
 FROM T_STUDENT 
 GROUP BY GRADE;

SELECT GRADE "학년" , NAME "이름" ,HEIGHT "키"
 FROM T_STUDENT 
 WHERE (GRADE , HEIGHT ) in(SELECT GRADE , max(HEIGHT )
 							 FROM T_STUDENT 
 						 GROUP BY GRADE)
 ORDER BY grade ASC;
 --ORDER BY 1 ASC;
 --ORDER BY "학년" ASC;
 
 --#7202) 
SELECT p.NAME , p.HIREDATE, d.DNAME 
FROM T_PROFESSOR p, T_DEPARTMENT d 
WHERE p.DEPTNO  = d.DEPTNO 

SELECT p.DEPTNO , p.NAME , p.HIREDATE ,d.DNAME 
 FROM T_PROFESSOR p ,T_DEPARTMENT d
 WHERE p.DEPTNO  =d.DEPTNO 
 AND (p.DEPTNO ,p.HIREDATE ) IN (SELECT DEPTNO , min(HIREDATE)
 								FROM T_PROFESSOR
 								GROUP BY DEPTNO ) 
 
SELECT *
 FROM T_DEPARTMENT 
 
 SELECT DEPTNO , min(HIREDATE)
 FROM T_PROFESSOR
 GROUP BY DEPTNO 

--#7203) 연습
--t_emp2 테이블 : 
--직급별로 해당직급에서 최대 연봉을 받는 직원의 이름과 직급, 연봉을 출력하세요,  
--단, 연봉순으로 오름차순 정렬하세요
SELECT name "사원명", post "직급", pay "연봉"
FROM t_emp2
WHERE (post, pay) IN ( SELECT post, MAX(pay) FROM t_emp2 GROUP BY post )
ORDER BY pay;

--#7204) 연습
--t_emp2, t_dept2 테이블 : 
--각 부서별 평균 연봉을 구하고 그 중에서 평균 연봉이 가장 적은 부서의 평균연봉보다 
--적게 받는 직원들의  부서명, 직원명, 연봉을 출력 하세요

SELECT avg(PAY)
from T_EMP2 
GROUP BY DEPTNO ;

SELECT  d.DNAME , e.NAME , e.PAY 
FROM T_EMP2 e , T_DEPT2  d
WHERE e.DEPTNO  = d.DCODE
AND e.PAY  <ALL (SELECT avg(PAY)
from T_EMP2 
GROUP BY DEPTNO )
ORDER BY 3;


--#7205) t_emp2 테이블 :  직원들 중에서 자신의 직급의 평균연봉과 같거나 
--					많이 받는 사람들의 이름과 직급, 현재 연봉을 출력하세요.

SELECT a.NAME "사원이름" , nvl(a.POST,' ') "직급" ,a.PAY "급여"
 FROM T_EMP2 a
--WHERE a.pay >=(a.POST 직급의 평균 연봉)
WHERE a.pay >=
			(SELECT AVG(b.pay) 
				FROM t_emp2 b 
			   WHERE NVL(b.POST,' ')  = nvl(a.POST,' '))
			   
SELECT AVG(b.pay) FROM t_emp2 b  WHERE '과장' = b.POST;
 
SELECT NAME "이름",(SELECT d.DNAME FROM T_DEPT2 d WHERE e.DEPTNO = d.DCODE ) "부서명"
FROM T_EMP2 e

SELECT e.NAME "이름" ,d.DNAME "부서명" 
FROM T_emp2 e, T_DEPT2 d 
WHERE e.DEPTNO =d.DCODE 

