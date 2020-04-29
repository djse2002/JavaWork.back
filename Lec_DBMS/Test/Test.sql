#4201) Professor 테이블 : 101번 학과 교수들의 이름(name), 급여(pay), 보너스(bonus ), 연봉(pay) 출력하기.  
연봉은 pay * 12 + bonus 로 계산,  bonus 가 없는 교수는 0 으로 계산


SELECT name, pay, BONUS , (pay * 12)+nvl(BONUS , 0)
FROM T_PROFESSOR 
WHERE DEPTNO ='101';


SELECT name, pay ,
	nvl2(BONUS , BONUS ,0) BONUS ,
	nvl2(BONUS , pay * 12 + BONUS , PAY *12)  "연봉"
FROM T_PROFESSOR 
WHERE DEPTNO ='101';


SELECT NAME , PAY , to_char(nvl2(BONUS , pay * 12 + BONUS , pay * 12),'99,999') "연봉" 
 FROM T_PROFESSOR 
 WHERE DEPTNO ='101'

 
 SELECT BONUS 
 FROM T_PROFESSOR 

 SELECT NAME , TO_CHAR (HIREDATE,'YYYY-MM-DD') "입사일", TO_CHAR(PAY *12,'99,999') "연봉" ,TO_CHAR(PAY *12 * 1.1,'99,999') "연봉" 
 FROM T_PROFESSOR 
 WHERE to_char(HIREDATE ,'yyyy') < 2000
 
 SELECT * 
 FROM T_PROFESSOR 

SELECT TO_CHAR(HIREDATE ,'yyyy-mm-dd') 
 FROM T_PROFESSOR 
 
 
 SELECT * FROM T_STUDENT 
 WHERE NAME = '김수진'
 
 INSERT INTO T_STUDENT (STUDNO, NAME , id, DEPTNO1 ,GRADE , PROFNO ,JUMIN ) 
VALUES (9091, '김수진', 'sooplus',  101,  2 , 1004 ,1234564879 );
 

DELETE  T_STUDENT
WHERE grade ='4'

SELECT * FROM T_STUDENT 
WHERE grade= '4'


SELECT * FROM T_PROFESSOR 
WHERE PAY >= '550';


CREATE OR REPLACE  VIEW v_prof_dept ("교수번호", "교수명" , "소속학과명")
AS
SELECT  p.PROFNO ,p.NAME , d.DNAME 
FROM T_PROFESSOR p  , T_DEPARTMENT d
WHERE p.DEPTNO =d.DEPTNO ;
--T_STUDENT  
	
--- 다음을 조회하는 View 를 생성하는 SQL을 작성하세요 | 학생이름 | 학생학과명 | 담당교수님 이름 |    

CREATE OR REPLACE  VIEW v_stud_info  ("학생이름 ", "학생학과명 " , "담당교수님 이름")
AS
SELECT  s.NAME ,d.DNAME , p.NAME
FROM T_STUDENT s  , T_DEPARTMENT d , T_PROFESSOR p 
WHERE s.DEPTNO1  = d.DEPTNO 
  AND s.PROFNO  =p.PROFNO ;


SELECT s.NAME "학생이름", d.DNAME "학과이름" , p.NAME "교수이름"
FROM t_student    s
	,t_department d
    ,t_professor  p
WHERE s.DEPTNO1  = d.DEPTNO 
  AND s.PROFNO  =p.PROFNO ;
  
 
 SELECT * FROM v_stud_info;


ALTER TABLE T_STUDENT ADD CONSTRAINT 

select * from tab;

SELECT * FROM T_STUDENT ;

SELECT OWNER , CONSTRAINT_NAME , CONSTRAINT_TYPE , STATUS 
FROM USER_CONSTRAINTS 
WHERE table_name='T_student';

ALTER TABLE T_STUDENT ADD APR_DT DATE DEFAULT SYSDATE NOT NULL ;


ALTER  TABLE t_emp4 ADD CONSTRAINT emp4_name_uk UNIQUE(name);


SELECT * FROM T_EMP4 ;

ALTER TABLE T_STUDENT ADD BIRTHDAY date(BIRTHDAY) ;


