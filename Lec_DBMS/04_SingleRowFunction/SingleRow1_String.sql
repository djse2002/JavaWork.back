-- INITCAP() 함수

-- #4101
SELECT INITCAP('pretty girl') -- 단어의 첫글자만 대문자 (INITCAP)
FROM dual;


-- #4102
SELECT  id , INITCAP(ID)  ID 
FROM T_STUDENT 
WHERE DEPTNO1 =201;

-- #4103
SELECT name ,ID , lower(ID ) 소문자 , upper(id) 대문자
FROM T_STUDENT 
WHERE DEPTNO1 = 201;

-- #4104
SELECT  NAME , id, LENGTH(id) 글자수
FROM T_STUDENT 
WHERE LENGTH(id) >= 9;

--#4105
SELECT name, LENGTH(name) 길이, lengthb(NAME) 바이트
FROM T_STUDENT 
WHERE DEPTNO1  = 201;

-- #4106
SELECT CONCAT(NAME ,POSITION) "교수님 명단"
FROM T_PROFESSOR 
WHERE DEPTNO = 101

--#4107
SELECT NAME , SUBSTR(JUMIN , 1,6) 
FROM T_STUDENT 
WHERE DEPTNO1 = 101;

-- #4108
SELECT NAME , SUBSTR(JUMIN , 1,6) 주민번호
FROM T_STUDENT 
WHERE SUBSTR(JUMIN , 3,2) ='08' ;

--#4109
SELECT NAME , JUMIN 
FROM T_STUDENT 
WHERE GRADE =4 AND SUBSTR(JUMIN ,7,1) = '2' 


SELECT *
FROM phonebook;


SELECT * 
FROM test_member;
 
SELECT * FROM test_member;

-- ISTR() 함수
SELECT INSTR('A*B*C*','*',1,1) FROM DUAL;	 --2
SELECT INSTR('A*B*C*','*',1,2) FROM DUAL;	 --4
SELECT INSTR('A*B*C*','*',3,2) FROM DUAL;	 --6
SELECT INSTR('A*B*C*','*',-4,1) FROM DUAL;	 --2 음수인덱스의 경우 검색도 음의 방향으로 진행
SELECT INSTR('A*B*C*','*',-4,2) FROM DUAL;	 --0 없으면 0으로 리턴
SELECT INSTR('A*B*C*','*',-2,2) FROM DUAL;   --2

--#4110 
SELECT NAME , tel, INSTR(TEL, ')') AS 위치  
FROM T_STUDENT 
WHERE DEPTNO1 =101;

--#4111
SELECT NAME ,TEL , SUBSTR(tel , 1, instr(tel, ')')-1) 지역번호
FROM T_STUDENT 
WHERE DEPTNO1 =101;

--LTRIM()  RTRIM()  TRIM() 함수
SELECT 
	LTRIM('슈퍼슈퍼가맨', '슈퍼') LTRIM,
	LTRIM('  좌측공백들 제거', ' ') LTRIM,
	RTRIM('우측공백들 제거  ', ' ') RTRIM,
	RTRIM('우측공백들 제거  ') RTRIM, -- 공백제거
	RTRIM('우측 공백 제거              ') RTRIM, 
	TRIM('         슈퍼맨              ') TRIM, 
	LTRIM('**********10000','*') TRIM 
FROM dual;

--#4117
SELECT DNAME ,LTRIM(DNAME , '부') LTRIM예제 
 FROM t_dept2;

--REPLACE 함수
SELECT REPLACE ('슈퍼맨 슈퍼걸','슈퍼','파워') REPLACE예
FROM dual;

--#4118
SELECT NAME , REPLACE (name, SUBSTR(name, 1,1) ,'#') 학생
FROM T_STUDENT 
WHERE DEPTNO1 = 102;

--#4119
SELECT name ,REPLACE (NAME , SUBSTR(name,2,1),'#') 학생 
FROM T_STUDENT 
WHERE DEPTNO1 = 101;

--#4120
SELECT NAME , JUMIN , REPLACE (JUMIN ,SUBSTR(JUMIN ,7,7),'*******') 주민번호 
FROM T_STUDENT 
WHERE DEPTNO1 = 101

--#4121
--SELECT NAME ,TEL , REPLACE (tel, SUBSTR(tel,5,3),'###')
SELECT NAME ,TEL ,REPLACE (tel,SUBSTR(tel, INSTR(tel, ')')+1,3),'###') 전화번호 
FROM T_STUDENT 
WHERE DEPTNO1 = 102



