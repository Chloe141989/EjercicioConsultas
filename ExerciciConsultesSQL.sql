1.
SELECT  count(ArrDelay) FROM flights;

2.
SELECT Origin, AVG(ArrDelay) AS prom_Arr, AVG (DepDelay) AS prom_Dep
FROM flights GROUP BY Origin ORDER BY Origin;

3.
SELECT Origin, colyear, colMonth, AVG(ArrDelay) AS prom_Arr FROM flights
GROUP BY Origin, colYear, colMonth ORDER BY Origin, colyear, colMonth;

4.
SELECT City,colYear,colMonth, AVG(ArrDelay) AS prom_Arr
FROM flights LEFT JOIN usairports ON IATA = Origin
GROUP BY City,colYear,colMonth ORDER BY City,colYear,colMonth;

5.
SELECT UniqueCarrier, colYear, colMonth, COUNT(Cancelled) AS cancellations
FROM flights
GROUP BY UniqueCarrier, colYear, colMonth ORDER BY cancellations DESC;

6.
SELECT  TailNum, SUM(Distance) AS TotalDistance
FROM flights
GROUP BY TailNum ORDER BY TotalDistance DESC LIMIT 1,10;

7.
SELECT  UniqueCarrier, AVG(ArrDelay) AS avgDelay
FROM flights
GROUP BY UniqueCarrier HAVING AVG (ArrDelay)>10 ORDER BY avgDelay DESC;