/* Qual o concelho com mais freguesias do país? */
/*
SELECT F.CONCELHO, COUNT(DISTINCT CODIGO) AS N_FREGUESIAS
FROM freguesias F
GROUP BY F.CONCELHO
ORDER BY N_FREGUESIAS DESC
LIMIT 1;
*/


/* E qual o distrito com mais concelhos?*/
/*
SELECT C.DISTRITO, COUNT(DISTINCT CODIGO) AS N_CONCELHOS
FROM concelhos C
GROUP BY C.DISTRITO
ORDER BY N_CONCELHOS DESC
LIMIT 1;
*/

SELECT *
FROM (
SELECT F.CONCELHO, COUNT(DISTINCT CODIGO) AS N_FREGUESIAS
FROM freguesias F
GROUP BY F.CONCELHO
ORDER BY N_FREGUESIAS DESC
LIMIT 1
)
JOIN (
SELECT C.DISTRITO, COUNT(DISTINCT CODIGO) AS N_CONCELHOS
FROM concelhos C
GROUP BY C.DISTRITO
ORDER BY N_CONCELHOS DESC
LIMIT 1
);