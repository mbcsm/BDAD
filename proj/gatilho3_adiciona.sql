PRAGMA foreign_keys=ON;

-- Assegura que depois de 5 vermelhos serme dados a uma mesma equipa o resultado é alterado para 3-0

CREATE TRIGGER SubstituicaoCheck
AFTER INSERT ON CARTAO
FOR EACH ROW
WHEN  	(SELECT count(*) 
        FROM EVENTO, JOGO, JOGADOR 
        WHERE EVENTO.idEvento = new.idEvento 
        AND new.cor = 'Vermelho' 
        AND JOGADOR.idJogador = EVENTO.idJogador
        GROUP BY EVENTO.idJogo, JOGADOR.idEquipa) > 5
BEGIN
    --update jogo result para 3-0
END;





