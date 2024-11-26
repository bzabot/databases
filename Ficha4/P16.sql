/*
Quais os concelhos diferentes do mesmo distrito com o mesmo
número de freguesias? Indique o código do distrito, e os nomes dos
concelhos, sem repetições do tipo (A,B) e (B,A).
*/

SELECT T1.DISTRITO, T1.CONCELHO AS CONCELHO1, T2.CONCELHO AS CONCELHO2, T1.FREGUESIAS
  FROM (
           SELECT C.DISTRITO AS DISTRITO,
                  F.CONCELHO AS CONCELHO,
                  COUNT(F.CODIGO) AS FREGUESIAS
             FROM freguesias F
                  JOIN
                  concelhos C ON F.CONCELHO = C.CODIGO
            GROUP BY F.CONCELHO
       ) T1
       JOIN
       (
           SELECT C.DISTRITO AS DISTRITO,
                  F.CONCELHO AS CONCELHO,
                  COUNT(F.CODIGO) AS FREGUESIAS
             FROM freguesias F
                  JOIN
                  concelhos C ON F.CONCELHO = C.CODIGO
            GROUP BY F.CONCELHO
       ) T2 ON T1.DISTRITO = T2.DISTRITO
       WHERE T1.CONCELHO > T2.CONCELHO AND T1.FREGUESIAS = T2.FREGUESIAS;
