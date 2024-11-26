/*Indique o nome do distrito, o número de votantes e o número de
abstenções, mas só no caso de nesse distrito o número de abstenções ser
superior a 75% do número de votantes.*/

SELECT D.NOME,
       P.VOTANTES,
       P.ABSTENCOES
  FROM participacoes P
       JOIN
       distritos D ON P.DISTRITO = D.CODIGO
 WHERE P.ABSTENCOES > 0.75 * P.VOTANTES;
