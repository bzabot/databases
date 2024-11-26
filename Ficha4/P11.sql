/*Quantos votos teve cada partido em cada distrito?*/

SELECT D.CODIGO, D.NOME, V.PARTIDO, SUM(V.VOTOS) as VOTOS
FROM votacoes V
JOIN freguesias F ON V.FREGUESIA = F.CODIGO
JOIN concelhos C ON F.CONCELHO = C.CODIGO
JOIN distritos D on C.DISTRITO = D.CODIGO
GROUP BY D.CODIGO, V.PARTIDO
;