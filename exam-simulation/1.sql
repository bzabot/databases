SELECT R.nome,
       R.lotacao
  FROM recintos R
 WHERE R.lotacao >= 1000 AND 
       R.lotacao <= 2000
 ORDER BY R.nome;
