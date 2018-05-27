.mode columns
.headers on
.nullvalue NULL


DROP VIEW IF EXISTS GOLOSPORJOGO;
DROP VIEW IF EXISTS GOLOSPORJOGO_COM_0s;


CREATE VIEW GOLOSPORJOGO AS
SELECT JOGO.idJogo,count(*) as goal
from EVENTO, GOLO,JOGO
where GOLO.idEvento= EVENTO.idEvento and EVENTO.idJogo=JOGO.idJogo
group by JOGO.idJogo;


CREATE VIEW GOLOSPORJOGO_COM_0s as 
SELECT * FROM golosporjogo
UNION
SELECT Jogo.idJogo, 0 
FROM Jogo, golosporjogo 
WHERE Jogo.idJogo NOT IN (SELECT golosporjogo.idJogo FROM golosporjogo);


SELECT A.Nome as EquipaVisitante, B.nome as EquipaVisitada, max(goal) as NºMaxGolos
FROM JOGO, EQUIPA A, EQUIPA B, GOLOSPORJOGO
WHERE JOGO.idJogo=GOLOSPORJOGO.idJogo and JOGO.idEquipaVisitante=A.idEquipa and JOGO.idEquipaVisitada=B.idEquipa;