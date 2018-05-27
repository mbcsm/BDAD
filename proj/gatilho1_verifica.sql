PRAGMA foreign_keys=ON;

SELECT * FROM JOGO;

INSERT INTO CLUBE (Nome,Regiao) VALUES ('Porto','Porto');
INSERT INTO CLUBE (Nome,Regiao) VALUES ('Braga','Braga');

INSERT INTO CAMPO (idClube, Localidade, Relvado) VALUES (4, 'Braga', 'Natural');

INSERT INTO Escalao (FaixaEtaria, Sexo) VALUES ('18-35', 'M');

INSERT INTO EQUIPA (Nome, idClube, idEscalao) VALUES ('Futebol Clube do Porto', 1, 5);--1
INSERT INTO EQUIPA (Nome, idClube, idEscalao) VALUES ('Sporting Clube de Braga', 4, 5);--5

INSERT INTO LIGA (Nome, Regiao) VALUES ('Primeira Liga', 'Nacional');

--trigger triggered
INSERT INTO JOGO (Data, GolosCasa, GolosFora, idEquipaVisitante, idEquipaVisitada, idLiga, idCampo) VALUES ('2018-5-12 20:00:00',-1,-4, 1, 3, 1, 2);
----

SELECT * FROM JOGO;


