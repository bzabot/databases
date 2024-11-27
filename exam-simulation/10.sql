/*
Qual é o tipo de recinto mais frequente em cada concelho?  Apresente a designação do concelho, 
a descrição do tipo de recinto, e o número de recintos (coluna "num") apenas para casos em que o 
número de recintos é igual ou superior a 4 (num >= 4). Note que pode haver mais do que uma atividade com 
a frequência máxima num concelho e nesse caso devem ser apresentadas todas essas atividades. Os resultados 
devem ser ordenados pela designação do concelho. 
*/


SELECT C.designacao, T.descricao, max(Q.num) as num
  FROM (
           SELECT R.concelho,
                  R.tipo,
                  COUNT(R.tipo) AS num
             FROM recintos R
            GROUP BY R.concelho,
                     R.tipo
             HAVING COUNT(R.tipo) >= 4
       ) Q  
   JOIN Tipos T on Q.tipo = T.tipo
   JOIN Concelhos C on Q.concelho = C.cod
   GROUP BY Q.concelho
   HAVING max(Q.num)
   ORDER BY C.designacao
;


