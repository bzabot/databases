SELECT R.nome, R.lotacao, R.morada
FROM recintos R
where R.morada LIKE "%PARQUE%"
order by R.lotacao desc, R.nome;