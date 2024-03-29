-- SELECT 결과물중 맨 위의 5개만 출력해보고 싶으면 어케 해야 하나?
--   ex) 게시판.. 페이징

-- DBMS 마다 구현 방법 다름
--	MYSQL : LIMIT
-- 	MS SQL server : TOP
-- 	ORACLE : ROWNUM 


SELECT EMPNO ,ENAME , SAL 
  FROM T_EMP 
  
--자동적으로 오라클에서 붙여주는 행번호 객체
  SELECT rownum , EMPNO ,ENAME , SAL 
  FROM T_EMP 
  
-- 직원번호 역순 그러나 ROWNUM 은 1 ~
  SELECT rownum , EMPNO ,ENAME , SAL 
  FROM T_EMP 
 ORDER BY EMPNO  DESC ;
 
--상위 5개만
SELECT rownum , EMPNO ,ENAME , SAL 
  FROM T_EMP 
  WHERE ROWNUM <=5;
 ORDER BY EMPNO  DESC ;

--select 에 ROWNUM 없어도 동작
SELECT EMPNO ,ENAME , SAL 
  FROM T_EMP 
  WHERE ROWNUM <=5;
 ORDER BY EMPNO  DESC ;

-- ROWNUM > 5??? 동작 안함... ROWNUM 범위가 1이 포함 안되면 동작 안함
  SELECT rownum , EMPNO ,ENAME , SAL 
  FROM T_EMP 
  WHERE ROWNUM >5
 ORDER BY EMPNO  DESC ;
 


--상위 5개 출력
--row1~ row5 까지 출력 (1page)
  SELECT rownum , EMPNO ,ENAME , SAL 
  FROM T_EMP 
  WHERE ROWNUM >=1 AND ROWNUM < 1 + 5
 ORDER BY EMPNO  DESC ;

  SELECT rownum , EMPNO ,ENAME , SAL 
  FROM T_EMP 
  WHERE ROWNUM >=6 AND ROWNUM < 6 + 5
 ORDER BY EMPNO  DESC ; -- 안나온다 ..뿌엥..

 --phonebook 뻥튀기
INSERT INTO phonbook(SELECT * FROM PHONEBOOK); -- 에러 Primary key 중복

INSERT INTO PHONEBOOK 
	(SELECT phonebook_seq.nextval ,PB_MEMO , PB_PHONENUM  ,PB_MEMO  ,SYSDATE FROM PHONEBOOK  )



