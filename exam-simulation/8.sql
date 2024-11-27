/* Quais as designações de concelhos que têm pelo menos um recinto e em que todos os recintos
 situados no concelho são usados para a atividade de cinema? Ordene os resultados por designação de concelho. 
*/

SELECT C.designacao
  FROM concelhos C
       JOIN
       recintos R ON R.concelho = C.cod
       JOIN
       usos U ON U.id = R.id
       JOIN
       atividades A ON A.ref = U.ref
-- Filtra somente os recintos em que tem a atividade = "cinema"
 WHERE A.atividade = "cinema"
 GROUP BY c.cod,
          c.designacao
-- O número de recintos associados a atividade cinema por concelho
HAVING count( * ) = (
                    -- Numero total de recintos por concelho
                        SELECT count( * ) 
                          FROM recintos
                         WHERE concelho = C.cod
                         GROUP BY concelho
                    )
-- São mantidos os casos em que o número de recintos com a atividade cinema é igual ao número de recintos por concelho
 ORDER BY C.designacao;








