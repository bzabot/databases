/*Houve algum partido a vencer em todos os concelhos de um distrito?
Indique código e nome do distrito e sigla do partido.*/

SELECT C.DISTRITO,
       D.NOME,
       C.PARTIDO
  FROM (/* Partido vencedor por concelho */
           SELECT C.DISTRITO,
                  V.CONCELHO,
                  V.PARTIDO
             FROM (/* Numero de votos por partido por concelho */
                      SELECT F.CONCELHO,
                             V.PARTIDO,
                             SUM(V.VOTOS) AS VOTOS
                        FROM votacoes V
                             JOIN
                             freguesias F ON V.FREGUESIA = F.CODIGO
                       GROUP BY F.CONCELHO,
                                V.PARTIDO
                       ORDER BY F.CONCELHO
                  )
                  V
                  JOIN
                  concelhos C ON V.CONCELHO = C.CODIGO
            GROUP BY CONCELHO
           HAVING MAX(V.VOTOS) 
       )
       C
       JOIN
       distritos D ON C.DISTRITO = D.CODIGO
 GROUP BY DISTRITO/* Número de partidos diferentes que venceram por distrito = 1 */
HAVING COUNT(DISTINCT C.PARTIDO) = 1;
