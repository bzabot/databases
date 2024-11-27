/*
Obtenha o nome dos recintos situados no distrito de Aveiro e em que se desenrolam atividades de teatro. 
Os resultados devem ser ordenados pelo nome do recinto.
*/

SELECT R.nome
FROM recintos R
JOIN concelhos C on C.cod = R.concelho
JOIN Usos U on R.id = U.id
JOIN Atividades A on U.ref = A.ref
WHERE C.distrito = 1 and A.atividade like "teatro"
ORDER BY R.NOME
;

