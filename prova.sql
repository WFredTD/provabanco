CREATE DATABASE provabanco;

USE provabanco;


CREATE TABLE aluno (
    id int PRIMARY KEY AUTO_INCREMENT,
	nome CHAR(80),
    tempoestudo int,
    rendafamiliar decimal(8, 2),
    registroacademico char(8) UNIQUE
);

CREATE TABLE diariobordo (
    id int PRIMARY KEY AUTO_INCREMENT,
    texto text,
    datahora datetime,
    fk_aluno_id int
);
 
ALTER TABLE diariobordo ADD CONSTRAINT FK_diariobordo_2
    FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno (id)
    ON DELETE RESTRICT;

DROP TABLE diariobordo;
DROP TABLE aluno;

DESCRIBE diariobordo;

truncate diariobordo;

SELECT * FROM aluno;
SELECT * FROM diariobordo;

INSERT aluno (nome, tempoestudo, rendafamiliar, registroacademico) VALUES ('Walter', 4, 2000.00, 00000001);
INSERT aluno (nome, tempoestudo, rendafamiliar, registroacademico) VALUES ('Suzane', 3, 2500.00, 00000002);
INSERT aluno (nome, tempoestudo, rendafamiliar, registroacademico) VALUES ('Rafael', 5, 3500.00, 00000003);
INSERT aluno (nome, tempoestudo, rendafamiliar, registroacademico) VALUES ('Rômulo', 2, 5000.00, 00000004);
INSERT aluno (nome, tempoestudo, rendafamiliar, registroacademico) VALUES ('Daniel', 4, 1800.00, 00000005);

INSERT diariobordo (texto, datahora, fk_aluno_id) VALUES ('Mussum Ipsum, cacilds vidis litro abertis. In elementis mé pra quem é amistosis quis leo. Pellentesque nec nulla ligula. Donec gravida turpis a vulputate ultricies. Vehicula non. Ut sed ex eros.', '2024-08-02 20:30:00', 1);
INSERT diariobordo (texto, datahora, fk_aluno_id) VALUES ('Mussum Ipsum, cacilds vidis litro abertis. In elementis mé pra quem é amistosis quis leo. Pellentesque nec nulla ligula. Donec gravida turpis a vulputate ultricies. Vehicula non. Ut sed ex eros.', '2024-08-02 20:30:00', 2);
INSERT diariobordo (texto, datahora, fk_aluno_id) VALUES ('Mussum Ipsum, cacilds vidis litro abertis. In elementis mé pra quem é amistosis quis leo. Pellentesque nec nulla ligula. Donec gravida turpis a vulputate ultricies. Vehicula non. Ut sed ex eros.', '2024-08-02 20:30', 3);
INSERT diariobordo (texto, datahora, fk_aluno_id) VALUES ('Mussum Ipsum, cacilds vidis litro abertis. In elementis mé pra quem é amistosis quis leo. Pellentesque nec nulla ligula. Donec gravida turpis a vulputate ultricies. Vehicula non. Ut sed ex eros.', '2024-08-02 20:30', 4);
INSERT diariobordo (texto, datahora, fk_aluno_id) VALUES ('Mussum Ipsum, cacilds vidis litro abertis. In elementis mé pra quem é amistosis quis leo. Pellentesque nec nulla ligula. Donec gravida turpis a vulputate ultricies. Vehicula non. Ut sed ex eros.', '2024-08-02 20:30', 5);


SELECT
   a.id AS codigo,
   a.nome ,
   a.tempoestudo,
   a.rendafamiliar,
   a.registroacademico,
   d.texto,
   d.datahora
FROM 
   diariobordo d
JOIN 
    aluno a ON d.fk_aluno_id = a.id;