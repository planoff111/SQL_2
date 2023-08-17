CREATE TABLE homework(
                         id SERIAL NOT NULL,
                         name VARCHAR(10),
                         description VARCHAR(15),
                         PRIMARY KEY (id)

);
CREATE TABLE lesson(
                       id SERIAL PRIMARY KEY,
                       updateAt VARCHAR(10),
                       homework_id_fk INT,
                       FOREIGN KEY (homework_id_fk) REFERENCES homework(id)
);

CREATE TABLE schedule(
                         ID SERIAL PRIMARY KEY,
                         name VARCHAR(10),
                         updateAt VARCHAR(10),
                         lessons_fk INT,
                         FOREIGN KEY (lessons_fk) REFERENCES lesson(id)
);