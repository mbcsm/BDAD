PRAGMA foreign_keys=ON;

SELECT * FROM JOGO;

INSERT INTO CLUBE (Nome,Regiao) VALUES ('Porto','Porto');
INSERT INTO CLUBE (Nome,Regiao) VALUES ('Benfica','Lisboa');

INSERT INTO CAMPO (idClube, Localidade, Relvado) VALUES (1, 'Porto', 'Natural');

INSERT INTO Escalao (FaixaEtaria, Sexo) VALUES ('8-12', 'M');
INSERT INTO Escalao (FaixaEtaria, Sexo) VALUES ('18-35', 'M');

INSERT INTO EQUIPA (Nome, idClube, idEscalao) VALUES ('Dragon Force', 1, 2);--2
INSERT INTO EQUIPA (Nome, idClube, idEscalao) VALUES ('Sport Lisboa e Benfica', 2, 5);--3

INSERT INTO LIGA (Nome, Regiao) VALUES ('Primeira Liga', 'Nacional');

--trigger triggered
INSERT INTO JOGO (Data, GolosCasa, GolosFora, idEquipaVisitante, idEquipaVisitada, idLiga, idCampo) VALUES ('2018-5-12 20:00:00',0,0, 1, 3, 1, 2);
----

SELECT * FROM JOGO;


