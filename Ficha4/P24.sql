/* 
Quais as diferenças entre as percentagens de votos e de mandatos a
nível nacional dos vários partidos?
*/

-- Percentagem de votos por partido
SELECT V.PARTIDO,
       ROUND(SUM(V.VOTOS) * 100.0 / (
                                  SELECT SUM(VOTANTES) 
                                    FROM participacoes
                              )
-      P.PERCENTAGEM_MANDATOS, 2) AS DIF_PERCENTUAL
  FROM votacoes V
       JOIN
       (/* Percentagem de mandatos por partido */
           SELECT M.PARTIDO,
                  SUM(M.MANDATOS) * 100.0 / (
                                                SELECT SUM(MANDATOS) 
                                                  FROM listas
                                            )
                  AS PERCENTAGEM_MANDATOS
             FROM listas M
            GROUP BY M.PARTIDO
       )
       P ON P.PARTIDO = V.PARTIDO
 GROUP BY V.PARTIDO;





