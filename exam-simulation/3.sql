/* 
Para recintos com lotação inferior ou igual a 100, obtenha o nome dos recintos, 
a respectiva lotação e a designação do concelho
onde se situa o recinto.
Os resultados devem ser ordenados pelo nome do recinto.
*/

SELECT R.nome, R.lotacao, C.designacao
FROM recintos R
JOIN concelhos C on R.concelho = C.cod
WHERE R.lotacao <= 100
order by R.nome;