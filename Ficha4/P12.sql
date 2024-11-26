/* Quantos votos teve cada partido globalmente? */

SELECT V.PARTIDO, SUM(V.VOTOS) as VOTOS
FROM votacoes V
GROUP BY V.PARTIDO
;
