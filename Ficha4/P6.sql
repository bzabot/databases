/* Quantos mandatos teve cada partido no distrito de P5, por ordem
decrescente dos mandatos.*/

SELECT M.PARTIDO, SUM(M.MANDATOS) as MANDATOS
FROM listas M
WHERE M.DISTRITO = 13
GROUP BY M.PARTIDO
;