/* Para cada distrito indique qual o seu nome e a designação e número
de votos do partido que nele teve melhor votação.*/

-- Numero de votos por freguesia

SELECT V.DISTRITO,
       V.PARTIDO,
       MAX(V.VOTOS) AS VOTOS
  FROM (
           SELECT C.DISTRITO,
                  V.PARTIDO,
                  SUM(V.VOTOS) AS VOTOS
             FROM votacoes V
                  JOIN
                  freguesias F ON V.FREGUESIA = F.CODIGO
                  JOIN
                  concelhos C ON F.CONCELHO = C.CODIGO
            GROUP BY C.DISTRITO,
                     V.PARTIDO
            ORDER BY C.DISTRITO,
                     SUM(V.VOTOS) DESC
       )
       V
 GROUP BY V.DISTRITO;
