.mode columns
.headers on
.nullvalue NULL


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