/* Quais são os pares distrito-atividade tais que no distrito existe pelo menos um recinto usada para a atividade em causa? 
Apresente a designação do distrito e a atividade, ordenada primeiro por designação por distrito e depois por atividade.
*/

SELECT D.designacao,
       A.atividade
  FROM recintos R
       JOIN
       concelhos C ON R.concelho = C.cod
       JOIN
       usos U ON R.id = U.id
       JOIN
       atividades A ON U.ref = A.ref
       JOIN
       distritos D ON C.distrito = D.cod
 GROUP BY C.distrito,
          A.atividade
 ORDER BY D.designacao,
          A.atividade;
