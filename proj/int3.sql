.mode columns
.headers on
.nullvalue NULL

DROP VIEW IF EXISTS JOGOSTOTAIS;
DROP VIEW IF EXISTS GOLOSTOTAIS;

CREATE VIEW JOGOSTOTAIS AS
SELECT PESSOA.Nome, count (*) as JOGOS
FROM PESSOA, JOGADOR, JOGO
WHERE JOGADOR.idPessoa=PESSOA.idPessoa and (JOGADOR.idEquipa=Jogo.idEquipaVisitada or JOGADOR.idEquipa=Jogo.idEquipaVisitante)
GROUP BY Pessoa.Nome;

CREATE VIEW GOLOSTOTAIS AS
SELECT PESSOA.Nome, count (*) as Golos
FROM PESSOA, JOGADOR, GOLO, EVENTO
WHERE EVENTO.idEvento=GOLO.idEvento and JOGADOR.idPessoa=PESSOA.idPessoa and EVENTO.idJogador=PESSOA.idPessoa and GOLO.baliza like '%dversaria%'
GROUP BY EVENTO.idJogador;

select GolosTotais.Nome, Golos, JOGOS, Golos*1.0/JOGOS as RacioGolos
from JOGOSTOTAIS, GOLOSTOTAIS
WHERE GOLOSTOTAIS.Nome=JOGOSTOTAIS.Nome
ORDER BY RacioGolos DESC;
