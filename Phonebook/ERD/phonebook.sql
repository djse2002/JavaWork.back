
/* Drop Tables */

DROP TABLE phonebook CASCADE CONSTRAINTS;

/* Create Tables */

CREATE TABLE phonebook
(
	pb_uid number NOT NULL,
	pb_name varchar2(40) NOT NULL,
	pb_phonenum varchar2(40),
	pb_memo clob,
	pb_regdate date DEFAULT SYSDATE,
	PRIMARY KEY (pb_uid)
);

-- 시퀀스 객체도 생성하자
DROP SEQUENCE phonebook_seq;
CREATE SEQUENCE phonebook_seq;


SELECT * FROM PHONEBOOK; 

SELECT count(*) cnt FROM test_member; -- 테이블의 모든 레코드 개수
SELECT max(mb_no) "max" FROM test_member; -- mb_no 의 최댓값
SELECT min(mb_no) "min" FROM test_member;

SELECT COUNT(*) cnt FROM PHONEBOOK;


SELECT * FROM PHONEBOOK ORDER BY PB_REGDATE DESC 

INSERT INTO PHONEBOOK VALUES (1, aaa, aaa, aaaa,sysdate)















