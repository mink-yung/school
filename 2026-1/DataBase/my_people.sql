
DROP TABLE IF EXISTS my_people;
create table my_people(name varchar(10),hight int,weight int,age int,sex varchar(10),major varchar(10));
INSERT INTO my_people (name,hight,weight,age,sex,major)
VALUES 
    ('김현서',162,49,25,'female','nursing'),
    ('박민경',162,NULL,25,'female','data-science'),
    ('김은호',177,70,25,'male','Non-Commissioned-Officer');
SELECT * FROM my_people;

