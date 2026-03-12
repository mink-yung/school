-- 테이블이 이미 있다면 지우고 새로 만들기 (연습용)
DROP TABLE IF EXISTS students;

-- 학생 테이블 생성
CREATE TABLE students (
    id INTEGER PRIMARY KEY AUTOINCREMENT, -- 자동으로 증가하는 고유 번호
    name TEXT NOT NULL,                   -- 이름 (빈칸 허용 안 함)
    major TEXT,                          -- 전공
    admission_year INTEGER               -- 입학 연도
);

INSERT INTO students (name, major, admission_year) 
VALUES ('박민경', '데이터사이언스', 2024);

SELECT * FROM students;