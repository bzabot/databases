/*Quantas freguesias têm “Vilar” no nome?*/

SELECT count(*) as N_VILAR
FROM freguesias F
WHERE F.NOME like "%Vilar %";