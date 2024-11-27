/*
Quais são os concelhos e respetivos distritos, tal que os concelhos não têm recintos de tipo 
com descrição "Cinema" ou "Cine-Teatro"? Apresente a designação dos concelhos e a correspondente 
designação do distrito. Os resultados devem ser ordenados pela designação do concelho.
*/


--1) Todos os concelhos em que há Cinema ou Cine-Treato
/*
SELECT DISTINCT R.concelho
  FROM recintos R
       JOIN
       concelhos C ON R.concelho = C.COD
 WHERE R.tipo IN (
           SELECT tipo
             FROM Tipos
            WHERE descricao LIKE "Cinema" OR 
                  descricao LIKE "Cine-Teatro"
       );
*/

-- 2) Associar ao contrário
SELECT C.designacao
       D.designacao
  FROM concelhos C
       JOIN
       distritos D ON D.cod = C.distrito
 WHERE C.cod NOT IN (
           SELECT DISTINCT R.concelho
             FROM recintos R
                  JOIN
                  Tipos T ON R.tipo = T.tipo
            WHERE T.descricao IN ("Cinema", "Cine-Teatro") 
       )
 ORDER BY C.designacao;
