/* 
Que partidos tiveram votação 0 em todas as freguesias de um
concelho? Indique a sigla do partido e o nome do concelho.
*/

SELECT V.PARTIDO,
       C.NOME
  FROM votacoes V
       JOIN
       freguesias F ON V.FREGUESIA = F.CODIGO
       JOIN
       concelhos C ON F.CONCELHO = C.CODIGO
 GROUP BY CONCELHO,
          PARTIDO
HAVING SUM(V.VOTOS) = 0;
