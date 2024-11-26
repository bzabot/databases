/* 9 Quais os partidos que não concorreram no distrito de Lisboa. */

-- Não participar = lista de partidos - lista de participantes
-- É um left join removendo a intersecção

SELECT P.SIGLA, P.DESIGNACAO 
FROM partidos P
LEFT JOIN (
    -- Lista de participantes em Lisboa (11)
    SELECT DISTINCT(V.PARTIDO)
    FROM votacoes V
    JOIN freguesias F on V.FREGUESIA = F.CODIGO
    JOIN concelhos C on F.CONCELHO = C.CODIGO
    WHERE C.DISTRITO = 11) P2
on P.SIGLA = P2.PARTIDO
WHERE P2.PARTIDO IS NULL -- Remover a interseção
;