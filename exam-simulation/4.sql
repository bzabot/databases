/*Quantos concelhos existem por cada distrito? Apresente a designação do distrito e o número de concelhos 
(coluna chamada num) correspondente.
 Os resultados devem ser ordenados tendo como primeiro critério  o número de concelhos de forma decrescente e 
(para distritos com igual número de concelhos) a a designação do distrito como segundo critério.*/

SELECT D.designacao, count(C.cod) as num
FROM concelhos C
JOIN distritos D ON C.distrito = D.cod
GROUP BY C.distrito
order by count(C.cod) desc, D.designacao
;
