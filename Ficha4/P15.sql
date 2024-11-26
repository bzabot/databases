/* Qual o número médio de freguesias por concelho? */

-- Numero total de freguesias
SELECT COUNT(F.CODIGO) * 1.0 / (SELECT COUNT(DISTINCT CODIGO) FROM concelhos) as MEDIA
FROM freguesias F
;


