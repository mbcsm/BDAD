.mode columns
.headers on
.nullvalue NULL

SELECT EQUIPA.nome, avg(Peso) as PesoMedio
FROM JOGADOR, EQUIPA, PESSOA
WHERE JOGADOR.idEquipa=EQUIPA.idEquipa and JOGADOR.idPessoa=PESSOA.idPessoa
group by EQUIPA.nome
ORDER BY PesoMedio;
