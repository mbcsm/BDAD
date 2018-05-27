PRAGMA foreign_keys=ON;

-- Assegura de que equipas jogam no mesmo esclao

CREATE TRIGGER EscalaoCheck
BEFORE INSERT ON JOGO
FOR EACH ROW
WHEN  	(SELECT idEscalao FROM EQUIPA WHERE EQUIPA.idEquipa = new.idEquipaVisitante)
		= (SELECT idEscalao FROM EQUIPA WHERE EQUIPA.idEquipa = new.idEquipaVisitada)
		
BEGIN
	SELECT RAISE(rollback, "equipas têm de ser do mesmo escalão");
END;