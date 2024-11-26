/*
Quais os nomes dos concelhos do distrito com maior número de
votantes.
*/

SELECT C.NOME
  FROM concelhos C
 WHERE C.DISTRITO = (
                        SELECT distrito
                          FROM participacoes P
                         ORDER BY P.VOTANTES DESC
                         LIMIT 1
                    );
