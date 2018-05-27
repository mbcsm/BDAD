.mode columns
.headers on
.nullvalue NULL

DROP VIEW IF EXISTS JOGOSTOTAIS
DROP VIEW IF EXISTS GOLOSTOTAIS;
DROP VIEW IF EXISTS GOLOSTOTAIS_COM_0s;
DROP VIEW IF EXISTS AMARELOSTOTAIS;
DROP VIEW IF EXISTS AMARELOSTOTAIS_COM_0s;
DROP VIEW IF EXISTS VERMELHOSTOTAIS;
DROP VIEW IF EXISTS VERMELHOSTOTAIS_COM_0s;


CREATE VIEW GOLOSTOTAIS AS
SELECT PESSOA.Nome, count (*) as Golos
FROM PESSOA, JOGADOR, GOLO, EVENTO
WHERE EVENTO.idEvento=GOLO.idEvento and JOGADOR.idPessoa=PESSOA.idPessoa and EVENTO.idJogador=PESSOA.idPessoa and GOLO.baliza like '%dversaria%'
GROUP BY EVENTO.idJogador;


CREATE VIEW GOLOSTOTAIS_COM_0s AS
SELECT * FROM golostotais
UNION
SELECT Pessoa.Nome, 0
FROM Pessoa,Jogador, golostotais 
WHERE (Pessoa.idPessoa=Jogador.idPessoa) and PESSOA.Nome NOT IN (SELECT distinct golostotais.Nome FROM golostotais)
order by golos desc;


CREATE VIEW AMARELOSTOTAIS AS
SELECT PESSOA.Nome, count (*) as amarelos
FROM PESSOA, JOGADOR, CARTAO, EVENTO
WHERE EVENTO.idEvento=CARTAO.idEvento and JOGADOR.idPessoa=PESSOA.idPessoa and EVENTO.idJogador=PESSOA.idPessoa
AND (COR like 'Amarelo' OR COR like 'amarelo')
GROUP BY EVENTO.idJogador;


CREATE VIEW JOGOSTOTAIS AS
SELECT PESSOA.Nome, count (*) as JOGOS
FROM PESSOA, JOGADOR, JOGO
WHERE JOGADOR.idPessoa=PESSOA.idPessoa and (JOGADOR.idEquipa=Jogo.idEquipaVisitada or JOGADOR.idEquipa=Jogo.idEquipaVisitante)
GROUP BY Pessoa.Nome;


CREATE VIEW AMARELOSTOTAIS_COM_0s as
SELECT * FROM amarelostotais
UNION
SELECT Pessoa.Nome, 0
FROM Pessoa,Jogador, AMARELOSTOTAIS
WHERE (Pessoa.idPessoa=Jogador.idPessoa) and PESSOA.Nome NOT IN (SELECT distinct AMARELOSTOTAIS.Nome FROM AMARELOSTOTAIS)
order by amarelos desc;


CREATE VIEW VERMELHOSTOTAIS AS
SELECT PESSOA.Nome, count (*) as vermelhos
FROM PESSOA, JOGADOR, CARTAO, EVENTO
WHERE EVENTO.idEvento=CARTAO.idEvento and JOGADOR.idPessoa=PESSOA.idPessoa and EVENTO.idJogador=PESSOA.idPessoa
AND (COR like 'Vermelho' OR COR like 'vermelho')
GROUP BY EVENTO.idJogador;


CREATE VIEW VERMELHOSTOTAIS_COM_0s as
SELECT * FROM vermelhostotais
UNION
SELECT Pessoa.Nome, 0
FROM Pessoa,Jogador
WHERE (Pessoa.idPessoa=Jogador.idPessoa) and PESSOA.Nome NOT IN (SELECT distinct VERMELHOSTOTAIS.Nome FROM VERMELHOSTOTAIS)
order by VERMELHOS desc;


select DISTINCT GOLOSTOTAIS_COM_0s.Nome,JOGOSTOTAIS.Jogos, GOLOSTOTAIS_COM_0s.golos, amarelos,vermelhos, jogos+(vermelhos*(-2))-amarelos+golos*2 AS FantasyPonts
from PESSOA, GOLOSTOTAIS_COM_0s, AMARELOSTOTAIS_COM_0s, vermelhosTOTAIS_COM_0s,JOGOSTOTAIS
WHERE PESSOA.Nome= GOLOSTOTAIS_COM_0s.Nome and PESSOA.Nome=AMARELOSTOTAIS_COM_0s.Nome AND PESSOA.Nome=VERMELHOSTOTAIS_COM_0s.Nome and PESSOA.Nome=JOGOSTOTAIS.Nome
GROUP BY PESSOA.Nome
order by ((vermelhos*(-2))-amarelos+golos*2) DESC;