.open 유명인DB.sqlite3
DROP TABLE IF EXISTS 연예인;
create table 연예인(이름 varchar(10), 키 int, 나이 int, 몸무게 int);
INSERT INTO 연예인 VALUES('강호동',180,50,90);
INSERT INTO 연예인 VALUES('유재석',178,48,70);

SELECT * FROM 연예인;

.open practice.db;
DROP TABLE IF EXISTS my_people;
create table my_people(name varchar(10),hight int,weight int,age int,sex varchar(10),major varchar(10));
INSERT INTO my_people (name,hight,weight,age,sex,major)
VALUES 
    ('김현서',162,49,25,'female','nursing'),
    ('박민경',162,NULL,25,'female','data-science'),
    ('김은호',177,70,25,'male','Non-Commissioned-Officer');
SELECT * FROM my_people;

