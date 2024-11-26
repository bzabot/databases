/* Quais os partidos que tiveram zero mandatos em todos os distritos
com “o” (maiúsculo ou minúsculo) no nome? */

SELECT P.SIGLA,
       P.DESIGNACAO
  FROM listas L
       JOIN
       partidos P ON L.PARTIDO = P.SIGLA
 GROUP BY L.PARTIDO
HAVING SUM(L.MANDATOS) = 0 AND 
       (P.DESIGNACAO LIKE "%O%" OR 
        P.DESIGNACAO LIKE "%o%");
