SELECT * FROM t_professor;

-- null 값 과의 연산 결과는 null 이다!
SELECT name, pay, bonus, pay + bonus
FROM t_professor;

-- 그룹함수에서는 동작,  null 은 연산에서 제외되어 동작.
SELECT sum(pay), sum(bonus) FROM t_professor;


-- nvl() 함수
SELECT name, pay, bonus, 
		pay + bonus,
		pay + NVL(BONUS ,0) 총지급액
FROM t_professor;



--#4201
SELECT NAME , PAY , NVL(BONUS ,0) BONUS ,
		pay * 12 +  NVL(BONUS ,0 ) 연봉
FROM T_PROFESSOR 
WHERE DEPTNO = 101;

--#4202
SELECT NAME , PAY , 
		NVL2(BONUS , BONUS ,0) BONUS ,
		NVL2(BONUS , pay * 12 +  BONUS , PAY * 12) 연봉
FROM T_PROFESSOR 
WHERE DEPTNO = 101;


