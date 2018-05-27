.mode columns
.headers on
.nullvalue NULL


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
group by G.Nome
ORDER BY GolosMarcados DESC;
