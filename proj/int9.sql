.mode columns
.headers on
.nullvalue NULL


DROP VIEW IF EXISTS VENCEDORDEJOGO;
DROP VIEW IF EXISTS PONTOSPORVITORIAS;
DROP VIEW IF EXISTS EQUIPAS_EMPATARAM;
DROP VIEW IF EXISTS PONTOSPOREMPATES;


create view VENCEDORDEJOGO AS
select JOGO.idJogo, EQUIPA.Nome as Vencedor
from EQUIPA, JOGO
WHERE GolosCasa>GolosFora and Equipa.idEquipa=Jogo.idEquipaVisitada
UNION
select JOGO.idJogo, EQUIPA.Nome  as Vencedor
from EQUIPA, JOGO
WHERE GolosCasa<GolosFora and Equipa.idEquipa=Jogo.idEquipaVisitaNTE
UNION
SELECT JOGO.idJogo, 'Empate' 
from EQUIPA, JOGO
WHERE GolosCasa=GolosFora;


create view PONTOSPORVITORIAS AS
SELECT EQUIPA.Nome, (count(*)*3) as pontos
from vencedordejogo, equipa
where vencedordejogo.vencedor=equipa.nome
group by equipa.Nome
union
SELECT EQUIPA.Nome, 0
FROM EQUIPA
WHERE EQUIPA.Nome not in (
SELECT EQUIPA.Nome
from vencedordejogo, equipa
where vencedordejogo.vencedor=equipa.nome);


create view EQUIPAS_EMPATARAM AS
SELECT vencedordejogo.idJOGO, A.Nome
from vencedordejogo, EQUIPA A ,Jogo
where vencedordejogo.vencedor LIKE 'Empate' AND vencedordejogo.idJogo=JOGO.idJogo
and A.idEquipa=JOGO.idEquipaVisitada
union
SELECT vencedordejogo.idJOGO, B.Nome
from vencedordejogo, EQUIPA B,Jogo
where vencedordejogo.vencedor LIKE 'Empate' AND vencedordejogo.idJogo=JOGO.idJogo
AND B.idEquipa=JOGO.idEquipaVisitante;


create VIEW PONTOSPOREMPATES AS
SELECT EQUIPA.Nome, count(*) as Pontos
FROM EQUIPAS_empataram, equipa
where EQUIPAS_empataram.Nome=EQUIPA.Nome
group by EQUIPAS_empataram.Nome
union
select EQUIPA.Nome, 0
FROM EQUIPA
WHERE EQUIPA.NOME NOT IN
(SELECT EQUIPAS_empataram.Nome
FROM EQUIPAS_empataram)
order by Pontos desc;


SELECT equipa.Nome, PONTOSPOREMPATES.pontos+PONTOSPORVITORIAS.Pontos AS PontosTotais
FROM EQUIPA, PONTOSPOREMPATES,PONTOSPORVITORIAS
WHERE PONTOSPOREMPATES.Nome=Equipa.Nome and PONTOSPORVITORIAS.Nome=Equipa.Nome
ORDER BY PontosTotais desc;
