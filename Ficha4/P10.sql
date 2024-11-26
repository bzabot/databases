/* Quantos votos teve cada partido em cada concelho? */

SELECT C.CODIGO, C.NOME, V.PARTIDO, SUM(V.VOTOS) as VOTOS
FROM votacoes V
JOIN freguesias F ON V.FREGUESIA = F.CODIGO
JOIN concelhos C ON F.CONCELHO = C.CODIGO
GROUP BY C.CODIGO, V.PARTIDO
;