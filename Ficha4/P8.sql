/* 
Quais as freguesias da região ‘M´ que, para o partido PSN, deram um
número zero de votos? Liste código e nome da freguesia.
*/


SELECT F.CODIGO,
       F.NOME
  FROM distritos D
       JOIN concelhos C ON D.CODIGO = C.DISTRITO
       JOIN freguesias F ON F.CONCELHO = C.CODIGO
       JOIN votacoes V ON F.CODIGO = V.FREGUESIA
 WHERE V.partido = "PSN" AND 
       D.REGIAO LIKE "M" AND 
       V.VOTOS = 0;
