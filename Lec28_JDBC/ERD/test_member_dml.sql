SELECT * FROM TEST_MEMBER ;
-- INSERT INTO (테이블 이름) VALUES
--UPDATE (테이블 이름)  SET
--DELETE FROM (테이블 이름)


SELECT * FROM TEST_MEMBER;

INSERT INTO TEST_MEMBER VALUES (10,'남윤주',sysdate);

INSERT INTO TEST_MEMBER VALUES (22, '이승환', '1994-02-21');

INSERT INTO TEST_MEMBER  VALUES (17, '윤종섭' , '2019-08-03');
INSERT INTO TEST_MEMBER  VALUES ('', '이예지' , '');  -- 비어있는 ''를 insert 하면 null 값 처리
--INSERT INTO TEST_MEMBER  VALUES (10, '' , sysdate);   -- not null 로 설정 된 곳은 빈 값으로 불가
INSERT INTO TEST_MEMBER  values(NULL, '문상현','2017-01-01');

-- Dbeaver 에서는 기본적으로 auto-commit 수행

UPDATE TEST_MEMBER  SET

UPDATE TEST_MEMBER  SET MB_NO  =10
WHERE MB_NO =10;


DELETE FROM TEST_MEMBER
