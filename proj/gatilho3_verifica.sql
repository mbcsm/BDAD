PRAGMA foreign_keys=ON;

SELECT * FROM JOGO;

INSERT INTO CLUBE (Nome,Regiao) VALUES ('Porto','Porto');
INSERT INTO CLUBE (Nome,Regiao) VALUES ('Benfica','Lisboa');

INSERT INTO CAMPO (idClube, Localidade, Relvado) VALUES (1, 'Porto', 'Natural');

INSERT INTO Escalao (FaixaEtaria, Sexo) VALUES ('18-35', 'M');

INSERT INTO EQUIPA (Nome, idClube, idEscalao) VALUES ('Futebol Clube do Porto', 1, 5);--1
INSERT INTO EQUIPA (Nome, idClube, idEscalao) VALUES ('Sport Lisboa e Benfica', 2, 5);--3

INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (1, 1);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (2, 1);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (3, 1);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (4, 1);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (5, 1);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (6, 1);

INSERT INTO LIGA (Nome, Regiao) VALUES ('Primeira Liga', 'Nacional');

INSERT INTO JOGO (Data, GolosCasa, GolosFora, idEquipaVisitante, idEquipaVisitada, idLiga, idCampo) VALUES ('2018-5-12 20:00:00',0,0, 1, 3, 1, 2);

INSERT INTO EVENTO (idJogo, idJogador, Minuto) VALUES (1, 1, 40);
INSERT INTO EVENTO (idJogo, idJogador, Minuto) VALUES (1, 2, 40);
INSERT INTO EVENTO (idJogo, idJogador, Minuto) VALUES (1, 3, 40);
INSERT INTO EVENTO (idJogo, idJogador, Minuto) VALUES (1, 4, 40);
INSERT INTO EVENTO (idJogo, idJogador, Minuto) VALUES (1, 5, 40);
INSERT INTO EVENTO (idJogo, idJogador, Minuto) VALUES (1, 6, 40);

INSERT INTO CARTAO (Cor, Razao, idEvento) VALUES ('Vermelho', 'Falta', 1);
INSERT INTO CARTAO (Cor, Razao, idEvento) VALUES ('Vermelho', 'Falta', 2);
INSERT INTO CARTAO (Cor, Razao, idEvento) VALUES ('Vermelho', 'Falta', 3);
INSERT INTO CARTAO (Cor, Razao, idEvento) VALUES ('Vermelho', 'Falta', 4);
INSERT INTO CARTAO (Cor, Razao, idEvento) VALUES ('Vermelho', 'Falta', 5);
--trigger triggered
INSERT INTO CARTAO (Cor, Razao, idEvento) VALUES ('Vermelho', 'Falta', 6);
----


SELECT * FROM JOGO;


