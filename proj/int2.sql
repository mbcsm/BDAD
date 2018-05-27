.mode columns
.headers on
.nullvalue NULL

SELECT PESSOA.Nome, count (*) as Golos
FROM PESSOA, JOGADOR, GOLO, EVENTO
WHERE EVENTO.idEvento=GOLO.idEvento and JOGADOR.idPessoa=PESSOA.idPessoa and EVENTO.idJogador=PESSOA.idPessoa
GROUP BY EVENTO.idJogador;
