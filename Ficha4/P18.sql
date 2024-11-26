/* Qual o partido que registou o maior número de votos numa só
freguesia? Indique a sigla do partido, o nome da freguesia e os votos
correspondentes.*/

SELECT P.SIGLA,
       F.NOME,
       V.VOTOS
  FROM votacoes V
       JOIN
       partidos P ON (P.SIGLA = V.PARTIDO) 
       JOIN
       freguesias F ON (F.CODIGO = V.FREGUESIA) 
 ORDER BY V.VOTOS DESC
 LIMIT 1;
