SELECT *
FROM T_PROFESSOR;


SELECT count(*) , COUNT(HPAGE) 
FROM T_PROFESSOR;

SELECT COUNT(BONUS) , sum(BONUS) ,avg(BONUS)
FROM T_PROFESSOR ;

SELECT MAX(HIREDATE), min(HIREDATE) 
FROM T_EMP ;

-- NULL 허용 컬럼의 그룹함수 적용시 nvl, nvl2 사용해야 함.
SELECT avg(bonus) , avg(nvl(BONUS ,0))
FROM T_PROFESSOR ;

-- t_professor 테이블에서 학과별로 교수님의 평균 보너스를 출력하세요
-- ★ 불가능하다!!!!   SELECT 절에 group 함수와 group 함수가 아닌 것과는 같이 출력 불가
--SELECT DEPTNO , avg(BONUS)
--FROM T_PROFESSOR 

SELECT DEPTNO , avg(BONUS) , round(avg(nvl(BONUS ,0)),1) "보너스 평균"
FROM T_PROFESSOR
GROUP BY DEPTNO;


SELECT  DEPTNO , POSITION ,AVG(PAY) "평균 급여"
FROM T_PROFESSOR 
group BY DEPTNO , POSITION -- 1.학과 별 그룹핑, 2. 직급별 그룹핑
ORDER BY DEPTNO ASC , POSITION ASC

--부서별 평균 급열르 출력하되, 평균급여가 450 보다 많은 학과만 출력
SELECT DEPTNO ,avg(pay) 평균급여
FROM T_PROFESSOR
WHERE AVG(PAY) > 450 -- 그룹함수는 where 절에서 사용 불가 
GROUP BY DEPTNO 

-- HAVING : 그룹함수 결과에 대한 조건절
SELECT DEPTNO ,avg(pay) 평균급여
FROM T_PROFESSOR
GROUP BY DEPTNO
HAVING  AVG(PAY) > 300 


--#5102
SELECT MGR 매니저 , count(mgr) 직원수 , sum(SAL) 총액, round(avg(NANVL(SAL ,0 )),5) 급여평균 , avg(NVL(COMM ,0)) 교통비평균
FROM T_EMP 
WHERE JOB <> 'PRESIDENT'
GROUP BY MGR

-- #5103
SELECT deptno, count(*) 총인원,  
	round(avg(sysdate - hiredate), 1) 근속평균,
	avg(pay) 급여평균, avg(nvl(bonus, 0)) 보너스평균
FROM t_professor
WHERE POSITION LIKE '%교수'
GROUP BY deptno
;


-- #5104

SELECT deptno1, max(WEIGHT), min(WEIGHT)
FROM t_student
GROUP BY deptno1

-- #5105
SELECT deptno1 학과, max(WEIGHT) - min(WEIGHT) 최대최소몸무게차
FROM t_student
GROUP BY deptno1
HAVING max(WEIGHT) - min(WEIGHT) >= 30



SELECT *
 FROM T_PROFESSOR 








 
SELECT count(MGR)
FROM T_EMP 


SELECT * 
FROM T_EMP 
WHERE mgr= 7782
