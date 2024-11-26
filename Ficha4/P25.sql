/*Quantos votos são precisos para eleger um deputado em cada distrito?*/

-- Numero total de votos por distrito / Numero total de mandatos 


SELECT P.DISTRITO, P.VOTANTES / L.MANDATOS as VOTOS_POR_MANDATO
  FROM participacoes P
       JOIN
       (
           SELECT L.DISTRITO,
                  SUM(L.MANDATOS) AS MANDATOS
             FROM listas L
            GROUP BY L.DISTRITO
       )
       L ON L.DISTRITO = P.DISTRITO;
;