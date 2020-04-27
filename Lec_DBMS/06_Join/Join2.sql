-- Non-Equi Join (비등가 Join)
SELECT *
 FROM T_CUSTOMER --20110004	김재수	8512251063421	65000
 
 
 SELECT * 
  FROM T_GIFT --1	참치세트	1	100000
 --ORACLE 
SELECT c.C_NAME "고객이름", c.C_POINT "포인트" , g.G_NAME "상품명"
FROM T_CUSTOMER c
    ,T_GIFT     g
WHERE  c.C_POINT  BETWEEN  g.G_START  AND g.G_END;

 --ANSI 
SELECT c.C_NAME "고객이름", c.C_POINT "포인트" , g.G_NAME "상품명"
FROM T_CUSTOMER c
    JOIN T_GIFT g
	  on c.C_POINT BETWEEN g.G_START AND g.G_END;
	  
	 
	 
SELECT g.G_NAME "상품명" , COUNT(g.G_NAME) "필요수량"
FROM T_CUSTOMER c
    ,T_GIFT     g
WHERE  c.C_POINT  BETWEEN  g.G_START  AND g.G_END
GROUP BY g.g_NAME;



SELECT * from T_STUDENT; 
SELECT * FROM T_EXAM01 ;  -- STUDNO,  TOTAL
SELECT * FROM T_CREDIT ;  -- grade min_point, max_point

--ORACLE
SELECT s.NAME , e.TOTAL , c.GRADE 
  FROM T_STUDENT s
      ,T_EXAM01  e
      ,T_CREDIT  c
 WHERE s.STUDNO = e.STUDNO 
   AND e.TOTAL BETWEEN c.MIN_POINT AND c.MAX_POINT 
   ORDER BY e.TOTAL DESC; 

 --ANSI  
   SELECT s.NAME , e.TOTAL , c.GRADE 
  FROM T_STUDENT s
      JOIN T_EXAM01  e
      on s.STUDNO = e.STUDNO 
      JOIN  T_CREDIT c
 	   ON e.TOTAL BETWEEN c.MIN_POINT AND c.MAX_POINT 
   ORDER BY e.TOTAL DESC ;

   
 --ORACLE  
   SELECT c.C_NAME "고객이름", c.C_POINT "포인트" , g.G_NAME "상품명"
   FROM T_CUSTOMER c
       ,T_GIFT     g
  WHERE c.C_POINT >= g.G_START 
  AND g.G_NAME  = '산악용자전거';
 
 --ANSI
    SELECT c.C_NAME "고객이름", c.C_POINT "포인트" , g.G_NAME "상품명"
   FROM T_CUSTOMER c
       JOIN T_GIFT     g
  	on c.C_POINT >= g.G_START 
  WHERE g.G_NAME  = '산악용자전거';
 ---Oracle
 SELECT e.NAME , (TO_CHAR(SYSDATE,'yyyy') - TO_CHAR(e.BIRTHDAY ,'yyyy')+1) "현재나이" , nvl(e.POST,' ') "현재 직급" , p.POST "예상직급"
 FROM T_EMP2  e
     ,T_POST p 
 WHERE  (TO_CHAR(SYSDATE,'yyyy') - TO_CHAR(e.BIRTHDAY ,'yyyy')+1)  BETWEEN p.S_AGE AND  p.E_AGE 
  --ANSI
 SELECT e.NAME , (TO_CHAR(SYSDATE,'yyyy') - TO_CHAR(e.BIRTHDAY ,'yyyy')+1) "현재나이" , nvl(e.POST,' ') "현재 직급" , p.POST "예상직급"
 FROM T_EMP2  e
     JOIN T_POST p 
 	   ON (TO_CHAR(SYSDATE,'yyyy') - TO_CHAR(e.BIRTHDAY ,'yyyy')+1)  BETWEEN p.S_AGE AND  p.E_AGE 
 

 --#6206
 SELECT s.NAME "학생이름" , p.NAME "교수이름"
  FROM T_STUDENT   s
	LEFT OUTER JOIN T_PROFESSOR p
     ON s.PROFNO = p.PROFNO ;
	
--#6207
     SELECT s.NAME "학생이름" , p.NAME "교수이름"
  FROM T_STUDENT   s
	right OUTER JOIN T_PROFESSOR p
     ON s.PROFNO = p.PROFNO ;
 --#6208 
 SELECT s.NAME "학생이름" , p.NAME "교수이름"
  FROM T_STUDENT   s
	full OUTER JOIN T_PROFESSOR p
     ON s.PROFNO = p.PROFNO ;    
  --ORCLE  
 SELECT d1.DNAME "부서명", d2.DNAME "상위부서명"
 FROM T_DEPT2 d1
     ,T_DEPT2 d2
WHERE d1.PDEPT  = d2.DCODE  


--ANSI
 SELECT d1.DNAME "부서명", d2.DNAME "상위부서명"
 FROM T_DEPT2 d1
     JOIN T_DEPT2 d2
	on d1.PDEPT  = d2.DCODE;  
	
--#6210
SELECT p1.PROFNO "교수번호" , p1.NAME  "교수이름", p2.HIREDATE "입사일" ,p2.NAME "빠른교수", p2.HIREDATE "빠른입사일"
FROM T_PROFESSOR p1
 LEFT OUTER JOIN T_PROFESSOR p2
   --ON p1.PROFNO =p2.PROFNO
 	ON  p1.HIREDATE  < p2.HIREDATE 
   --ORDER BY HIREDATE , name ASC 
   ORDER BY 1;
  
  
  SELECT
	a.profno "교수번호", a.name "교수명", a.HIREDATE "입사일",
	count(b.hiredate) "빠른분들"
FROM
	t_professor a LEFT OUTER JOIN t_professor b
	ON b.HIREDATE < a.HIREDATE 
GROUP BY 
	a.profno, a.name, a.HIREDATE
ORDER BY 4
;
	
   
   
   
   
   SELECT * 
   FROM T_PROFESSOR 
   ORDER BY HIREDATE 
 
	
	