.mode columns
.headers on
.nullvalue NULL


SELECT PESSOA.Nome
FROM JOGADOR, PESSOA
where JOGADOR.idPessoa=PESSOA.idPessoa
EXCEPT
SELECT PESSOA.Nome
FROM Arbitro, Pessoa
where Arbitro.idPessoa=Pessoa.idPessoa;
