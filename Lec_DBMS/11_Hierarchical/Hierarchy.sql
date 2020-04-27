----- 계층형 쿼리(Hierarchical Query)

SELECT * FROM T_DEPT2 ; -- 서로의 계층관계 주목!!!!!!!

SELECT lpad(dname , 10, '*') 부서명 FROM T_DEPT2;


--LEVEL
SELECT DNAME , LEVEL 
FROM T_DEPT2 
CONNECT BY PRIOR DCODE =PDEPT
START WITH dcode= 0001;
--ORA-01788: CONNECT BY clause required in this query bloc

/* 해설
 * LEVEL 은 오라클에서 계속 사용할 수 있는 것으로
 * 해당 데이터가 몇번째 단계 이냐를 의미하는 것.
 * 
 * CONNECT BY PRIOR  :  각 row 들이 어떻게 연결되어야 하는지 조건 지정
 * PRIOR를 어느쪽에 주느냐가 중요!
 */
-- PRIOR 를 다른데 주면???
SELECT DNAME , LEVEL 
FROM T_DEPT2 
CONNECT BY  DCODE = PRIOR PDEPT
START WITH dcode= 0001;

SELECT DCODE , DNAME , PDEPT ,LEVEL 
FROM T_DEPT2 
CONNECT BY  DCODE = PRIOR PDEPT
START WITH dcode= 1005;


SELECT DCODE , DNAME , PDEPT ,LEVEL 
FROM T_DEPT2 
CONNECT BY  DCODE = PRIOR PDEPT
START WITH dcode= 1011;

SELECT LPAD(DNAME ,LEVEL * 6 , '*') "부서명"
  FROM T_DEPT2 
CONNECT BY PRIOR  DCODE =PDEPT 
START WITH DCODE = 0001;

-------------------------
SELECT *
FROM T_EMP2; 

SELECT LPAD(e.NAME || ' ' || d.dname || ' ' || nvl(e.POST , '사원'), LEVEL * 22, '-') "이름 과 직분" 
FROM t_emp2 e ,
    (SELECT dname, dcode, pdept 
       FROM t_dept2) d
WHERE e.DEPTNO = d.dcode
CONNECT BY PRIOR  e.empno = e.pempno
START WITH e.empno = 20000101;


SELECT LEVEL - 1 HR
FROM DUAL 
CONNECT BY LEVEL <= 24;




