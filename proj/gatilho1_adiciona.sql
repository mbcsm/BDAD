PRAGMA foreign_keys=ON;

-- Assegura que golos são maiores que 0

CREATE TRIGGER GolosNegativos
BEFORE INSERT ON JOGO
FOR EACH ROW

WHEN  	new.GolosCasa < 0 OR new.GolosFora < 0
BEGIN
	SELECT RAISE(rollback, "Golos não podem ser negativos");
END;





/*
WHEN ( SELECT idEvento, idEvento FROM EVENTO
				  WHERE CARTAO.idEvento == EVENTO.idEvento AND CARTAO.cor = 'Vemelho'
				) 
*/
