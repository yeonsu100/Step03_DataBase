
-- 할 일 목록을 저장할 todo 테이블 생성 (create)
CREATE TABLE todo(
num NUMBER PRIMARY KEY,
content VARCHAR2(50) NOT NULL,
regdate DATE);

-- todo 테이블에 num에 순서대로 숫자를 넣기 위한 시퀀스
CREATE SEQUENCE todo_seq;