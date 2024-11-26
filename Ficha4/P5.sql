SELECT D.CODIGO,
       D.NOME
  FROM freguesias F
       JOIN
       concelhos C ON F.CONCELHO = C.CODIGO
       JOIN
       distritos D ON C.DISTRITO = D.CODIGO
 WHERE F.nome LIKE "Cedofeita";
