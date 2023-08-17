INSERT INTO homework(name, description)
VALUES ('homework_1','Strings_1'),
       ('homework_2','Strings_2'),
       ('homework_3','Integer'),
       ('homework_4','Double');

INSERT INTO lesson(updateat, homework_id_fk,name)
VALUES ('01.08',1,'Strings_1'),
       ('12.08',2,'Strings_2'),
       ('05.08',3,'Integer'),
       ('09.08',4,'Double');


INSERT INTO schedule(name, updateat, lessons)
VALUES ('lesson_1','20.08',3),
       ('lesson_2','05.08',2),
       ('lesson_3','09.08',7),
       ('lesson_4','10.08',5);

SELECT *
FROM homework;

SELECT *
FROM lesson l
JOIN homework h
ON l.homework_id_fk = h.id;

SELECT *
FROM lesson  l
JOIN homework  h
ON l.homework_id_fk = h.id
ORDER BY updateat ASC ;

SELECT *
FROM schedule  s
JOIN lesson  l
ON  s.id_fk = l.id;



SELECT s.lessons, l.name
FROM lesson l
LEFT JOIN schedule s
on l.id = s.id_fk
group by l.name, s.lessons
ORDER BY name ASC;