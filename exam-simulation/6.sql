/*
Quantos recintos de tipo "Cinema" existem por distrito e qual a lotação máxima desses recintos
(os de "tipo" Cinema) também por distrito?  Apresente resultados apenas para distritos com 7 
ou mais recintos compreendendo: a designação dos distritos, o correspondente número de recintos 
(coluna "num") e a lotação máxima (coluna "max"). Os resultados devem ser ordenados pela designação do distrito.
*/

select D.designacao, Count(R.ID) as num, max(R.lotacao) as max
from Recintos R
join Concelhos C on R.concelho = C.cod
join Distritos D on C.distrito = D.cod
where tipo = 15
group by C.DISTRITO
having Count(R.ID) >= 7
order by D.designacao
;