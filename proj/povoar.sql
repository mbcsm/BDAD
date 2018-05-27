.bail ON
.mode columns
.headers on
.nullvalue NULL
.width 25 25 25 25 25 25 25


INSERT INTO CLUBE (Nome,Regiao) VALUES ('Porto','Porto');
INSERT INTO CLUBE (Nome,Regiao) VALUES ('Benfica','Lisboa');
INSERT INTO CLUBE (Nome,Regiao) VALUES ('Sporting','Lisboa');
INSERT INTO CLUBE (Nome,Regiao) VALUES ('Braga','Braga');

INSERT INTO CAMPO (idClube, Localidade, Relvado) VALUES (1, 'Porto', 'Natural');
INSERT INTO CAMPO (idClube, Localidade, Relvado) VALUES (2, 'Benfica', 'Natural');
INSERT INTO CAMPO (idClube, Localidade, Relvado) VALUES (3, 'Alvalade', 'Natural');
INSERT INTO CAMPO (idClube, Localidade, Relvado) VALUES (4, 'Braga', 'Natural');

INSERT INTO Escalao (FaixaEtaria, Sexo) VALUES ('6-8', 'M');
INSERT INTO Escalao (FaixaEtaria, Sexo) VALUES ('8-12', 'M');
INSERT INTO Escalao (FaixaEtaria, Sexo) VALUES ('12-15', 'M');
INSERT INTO Escalao (FaixaEtaria, Sexo) VALUES ('15-18', 'M');
INSERT INTO Escalao (FaixaEtaria, Sexo) VALUES ('18-35', 'M');

INSERT INTO EQUIPA (Nome, idClube, idEscalao) VALUES ('Futebol Clube do Porto', 1, 5);--1
INSERT INTO EQUIPA (Nome, idClube, idEscalao) VALUES ('Dragon Force', 1, 2);--2
INSERT INTO EQUIPA (Nome, idClube, idEscalao) VALUES ('Sport Lisboa e Benfica', 2, 5);--3
INSERT INTO EQUIPA (Nome, idClube, idEscalao) VALUES ('Sporting Clube de Portugal', 3, 5);--4
INSERT INTO EQUIPA (Nome, idClube, idEscalao) VALUES ('Sporting Clube de Braga', 4, 5);--5

INSERT INTO LIGA (Nome, Regiao) VALUES ('Primeira Liga', 'Nacional');

INSERT INTO JOGO (Data, GolosCasa, GolosFora, idEquipaVisitante, idEquipaVisitada, idLiga, idCampo) VALUES ('2018-5-12 20:00:00',1,1, 1, 3, 1, 2);
INSERT INTO JOGO (Data, GolosCasa, GolosFora, idEquipaVisitante, idEquipaVisitada, idLiga, idCampo) VALUES ('2018-5-12 20:00:00',2,0, 4, 5, 1, 4);
INSERT INTO JOGO (Data, GolosCasa, GolosFora, idEquipaVisitante, idEquipaVisitada, idLiga, idCampo) VALUES ('2018-5-17 20:00:00',0,1, 5, 1, 1, 1);
INSERT INTO JOGO (Data, GolosCasa, GolosFora, idEquipaVisitante, idEquipaVisitada, idLiga, idCampo) VALUES ('2018-5-17 20:00:00',3,0, 3, 4, 1, 3);
INSERT INTO JOGO (Data, GolosCasa, GolosFora, idEquipaVisitante, idEquipaVisitada, idLiga, idCampo) VALUES ('2018-5-19 20:00:00',0,0, 3, 4, 1, 3);

INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Casillas', 'Espanhol', 70, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Alex Telles', 'Brasileiro', 80, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Marcano', 'Espanhola', 86, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Felipe', 'Brasileiro', 82, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Maxi', 'Uruguaia', 60, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Herrera', 'Mexicana', 50, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Sergio Oliveira', 'Portuguesa', 82, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Otavio', 'Brasileiro', 88, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Ricardo', 'Portuguesa', 89, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Brahimi', 'Francesa', 90, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Soares', 'Brasileiro', 82, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Varela', 'Portuguesa', 87, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Grimaldo', 'Espanhol', 90, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Jardel', 'Brasileiro', 50, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Ruben Dias', 'Portuguesa', 60, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Andre Almeida', 'Portuguesa', 80, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Fejsa', 'Servio', 81, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Pizzi', 'Portuguesa', 88, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Zivkovic', 'Servio', 86, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Rafa', 'Portuguesa', 89, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Cervi', 'Espanhol', 82, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Jonas', 'Brasileiro', 70, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Matheus', 'Espanhol', 50, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Sequeira', 'Espanhol', 80, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Raúl Silva', 'Espanhol', 80, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Bruno Viana', 'Espanhol', 70, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Ricardo Esgaio', 'Espanhol', 85, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Marcelo Goiano', 'Espanhol', 82, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('André Horta', 'Espanhol', 88, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Ricardo Horta', 'Espanhol', 50, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Vukcevic ', 'Espanhol', 70, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Wilson Eduardo', 'Espanhol', 86, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Paulinho', 'Espanhol', 76, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Rui Patrício', 'Espanhol', 59, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('S. Coates', 'Espanhol', 67, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Fábio Coentrão', 'Espanhol', 79, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('J. Mathieu', 'Espanhol', 80, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('C. Piccini', 'Espanhol', 80, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Bruno Fernandes', 'Espanhol', 86, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Rodrigo Battaglia', 'Espanhol', 90, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('M. Acuña', 'Espanhol', 110, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('B. Ruiz', 'Espanhol', 60, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Bas Dost', 'Espanhol', 90, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Gelson Martins', 'Espanhol', 80, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Artur Soares Dias', 'Portuguesa', 80, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Jorge Sousa', 'Portuguesa', 50, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Olegário Benquerença', 'Portuguesa', 70, 32);
INSERT INTO PESSOA (Nome, Nacionalidade, Peso, Idade) VALUES ('Ricardo', 'Portuguesa', 80, 32);

INSERT INTO ARBITRO (idPessoa) VALUES (45);
INSERT INTO ARBITRO (idPessoa) VALUES (46);
INSERT INTO ARBITRO (idPessoa) VALUES (47);
INSERT INTO ARBITRO (idPessoa) VALUES (48);

INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (1, 1);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (2, 1);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (3, 1);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (4, 1);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (5, 1);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (6, 1);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (7, 1);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (8, 1);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (9, 1);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (10, 1);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (11, 1);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (12, 3);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (13, 3);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (14, 3);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (15, 3);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (16, 3);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (17, 3);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (18, 3);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (19, 3);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (20, 3);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (21, 3);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (22, 3);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (23, 5);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (24, 5);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (25, 5);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (26, 5);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (27, 5);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (28, 5);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (29, 5);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (30, 5);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (31, 5);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (32, 5);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (33, 5);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (34, 4);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (35, 4);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (36, 4);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (37, 4);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (38, 4);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (39, 4);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (40, 4);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (41, 4);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (42, 4);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (43, 4);
INSERT INTO JOGADOR (idPessoa, idEquipa) VALUES (44, 4);

INSERT INTO EVENTO (idJogo, idJogador, Minuto) VALUES (1, 4, 40);
INSERT INTO EVENTO (idJogo, idJogador, Minuto) VALUES (1, 7, 60);
INSERT INTO EVENTO (idJogo, idJogador, Minuto) VALUES (2, 40, 15);
INSERT INTO EVENTO (idJogo, idJogador, Minuto) VALUES (3, 18, 67);
INSERT INTO EVENTO (idJogo, idJogador, Minuto) VALUES (3, 2, 70);
INSERT INTO EVENTO (idJogo, idJogador, Minuto) VALUES (4, 2, 61);
INSERT INTO EVENTO (idJogo, idJogador, Minuto) VALUES (4, 2, 67);
INSERT INTO EVENTO (idJogo, idJogador, Minuto) VALUES (4, 2, 77);
INSERT INTO EVENTO (idJogo, idJogador, Minuto) VALUES (5, 21, 70);

INSERT INTO CARTAO (Cor, Razao, idEvento) VALUES ('Vermelho', 'Falta', 9);
INSERT INTO CARTAO (Cor, Razao, idEvento) VALUES ('Amarelo', 'Falta', 1);

INSERT INTO GOLO (Baliza, idEvento) VALUES ('Adversaria', 2);
INSERT INTO GOLO (Baliza, idEvento) VALUES ('Adversaria', 3);
INSERT INTO GOLO (Baliza, idEvento) VALUES ('AutoGolo', 4);
INSERT INTO GOLO (Baliza, idEvento) VALUES ('Adversaria', 5);
INSERT INTO GOLO (Baliza, idEvento) VALUES ('Adversaria', 6);
INSERT INTO GOLO (Baliza, idEvento) VALUES ('Adversaria', 7);
INSERT INTO GOLO (Baliza, idEvento) VALUES ('Adversaria', 8);