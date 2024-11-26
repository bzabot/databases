/*
Quais os resultados obtidos por cada partido na freguesia da P1?
*/

SELECT V.PARTIDO, SUM(V.VOTOS) AS VOTOS 
FROM freguesias F
JOIN votacoes V ON  V.FREGUESIA = F.CODIGO
WHERE F.NOME LIKE "Cedofeita"
GROUP BY V.PARTIDO;
;