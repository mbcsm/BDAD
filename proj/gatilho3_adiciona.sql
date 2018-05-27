PRAGMA foreign_keys=ON;

CREATE TRIGGER SubstituicaoCheck
AFTER INSERT ON CARTAO
FOR EACH ROW
WHEN  	(SELECT count(*) 
        FROM EVENTO, JOGO, JOGADOR 
        WHERE EVENTO.idEvento = new.idEvento 
        AND new.cor = 'Vermelho' 
        AND JOGADOR.idJogador = EVENTO.idJogador
        GROUP BY EVENTO.idJogo, JOGADOR.idEquipa) > 1

BEGIN
	SELECT RAISE(rollback, "um jogador pode receber um vermelho Por Jogo");
END;
