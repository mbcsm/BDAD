.mode columns
.headers on
.nullvalue NULL


DROP VIEW IF EXISTS VENCEDORDEJOGO;
DROP VIEW IF EXISTS PONTOSPORVITORIAS;
DROP VIEW IF EXISTS EQUIPAS_EMPATARAM;
DROP VIEW IF EXISTS PONTOSPOREMPATES;
DROP VIEW IF EXISTS PONTOSTOTAIS;
DROP VIEW IF EXISTS JOGOSTOTAISEQUIPAS;
DROP VIEW IF EXISTS GOLOSMARCADOS;
DROP VIEW IF EXISTS GOLOSSOFRIDOS;



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


create view PONTOSTOTAIS as
SELECT equipa.Nome, PONTOSPOREMPATES.pontos+PONTOSPORVITORIAS.Pontos AS PontosTotais
FROM EQUIPA, PONTOSPOREMPATES,PONTOSPORVITORIAS
WHERE PONTOSPOREMPATES.Nome=Equipa.Nome and PONTOSPORVITORIAS.Nome=Equipa.Nome
ORDER BY PontosTotais desc;


Create view JOGOSTOTAISEQUIPAS as
select Equipa.Nome, COUNT(*) AS Jogos
from JOGO, EQUIPA
WHERE Equipa.idEquipa=JOGO.idEquipaVisitante or Equipa.idEquipa=JOGO.idEquipaVisitada
group by EQUIPA.Nome;


Create view GOLOSMARCADOS as
SELECT G.Nome, sum(G.GolosMarcadosCasa) as GolosMarcados
from(
SELECT A.Nome, sum(GolosCasa) as GolosMarcadosCasa
from equipa A,jogo
where A.idEquipa=JOGO.idEquipaVisitada
group by A.Nome
UNION all 
SELECT B.Nome, sum(GolosFora) as GolosMarcadosCasa
from equipa B,jogo
where B.idEquipa=JOGO.idEquipaVisitante
group by B.Nome) G
group by G.Nome;


Create view GOLOSSOFRIDOS as
SELECT G.Nome, sum(G.GolosSofridosCasa) as GolosSofridos
from(
SELECT A.Nome, sum(GolosCasa) as GolosSofridosCasa
from equipa A,jogo
where A.idEquipa=JOGO.idEquipaVisitante
group by A.Nome
UNION all
SELECT B.Nome, sum(GolosFora) as GolosSofridosCasa
from equipa B,jogo
where B.idEquipa=JOGO.idEquipaVisitada
group by B.Nome) G
group by G.Nome;


SELECT distinct EQUIPA.Nome, Jogos,(PONTOSPORVITORIAS.Pontos/3)as N_Vitorias,(PONTOSPOREMPATES.Pontos)as N_Empates,(jogos-PONTOSPOREMPATES.Pontos-(PONTOSPORVITORIAS.Pontos/3)) as N_Derrotas , GolosMarcados, GolosSofridos, GolosMarcados-GolosSofridos as DiferencaGolos, PontosTotais
FROM EQUIPA,JOGOSTOTAISEQUIPAS,GOLOSMARCADOS,GOLOSSOFRIDOS,PONTOSTOTAIS, ESCALAO, PONTOSPORVITORIAS,PONTOSPOREMPATES
where EQUIPA.Nome=JOGOSTOTAISEQUIPAS.Nome and EQUIPA.Nome=GOLOSMARCADOS.Nome and EQUIPA.Nome=GOLOSSOFRIDOS.Nome and EQUIPA.Nome=PONTOSTOTAIS.Nome
AND EQUIPA.idEscalao=Escalao.idEscalao and Sexo like 'M' and FaixaEtaria LIKE '18-35' AND EQUIPA.Nome=PONTOSPORVITORIAS.Nome
AND EQUIPA.Nome=PONTOSPOREMPATES.Nome
ORDER BY PontosTotais DESC;