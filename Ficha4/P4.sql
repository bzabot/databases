/* Quais as freguesias do concelho de Espinho? */

SELECT F.CODIGO, F.NOME
FROM concelhos C
JOIN freguesias F ON C.CODIGO = F.CONCELHO
WHERE C.NOME like "Espinho";
