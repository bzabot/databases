/*
Qual o código da freguesia onde nasceu (ou onde reside, caso tenha nascido fora de Portugal)?
*/

SELECT F.CODIGO
FROM freguesias F
WHERE F.NOME = "Cedofeita";
