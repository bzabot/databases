/*Quais os totais de votos a nível nacional dos 5 maiores partidos?*/

SELECT V.PARTIDO, SUM(V.VOTOS) as VOTOS
FROM votacoes V
GROUP BY V.PARTIDO
ORDER BY VOTOS DESC
LIMIT 5;