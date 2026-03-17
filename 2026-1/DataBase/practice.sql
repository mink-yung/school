-- 테이블이 이미 있다면 지우고 새로 만들기 (연습용)
DROP TABLE IF EXISTS students;

-- 학생 테이블 생성
CREATE TABLE 연예인 (이름 varchar(10),키 int,나이 int,몸무게 int);

INSERT INTO students (name, major, admission_year) 
VALUES ('박민경', '데이터사이언스', 2024);

SELECT * FROM students;