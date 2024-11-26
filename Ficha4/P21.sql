/*Houve algum partido a vencer em todas as freguesias de um
concelho do distrito do Porto? Indique código do concelho e sigla do partido.*/


SELECT V.CONCELHO, V.PARTIDO
  FROM (
           SELECT F.CONCELHO,
                  V.FREGUESIA,
                  V.PARTIDO
             FROM votacoes V
                  JOIN
                  freguesias F ON F.CODIGO = V.FREGUESIA
            GROUP BY V.FREGUESIA
           HAVING max(V.VOTOS) 
       )
       V
       JOIN
       CONCELHOS C ON V.CONCELHO = C.CODIGO
 WHERE C.DISTRITO = 13
 GROUP BY V.CONCELHO
HAVING COUNT(DISTINCT V.PARTIDO) = 1