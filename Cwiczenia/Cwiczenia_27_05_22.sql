-- ZADANIE 1
SELECT * FROM GOSC
ORDER BY IMIE, NAZWISKO;
-- ZADANIE 2
SELECT DISTINCT PROCENT_RABATU FROM GOSC
WHERE PROCENT_RABATU IS NOT NULL
ORDER BY PROCENT_RABATU DESC;
-- ZADANIE 3
SELECT * FROM GOSC
JOIN REZERWACJA on GOSC.IDGOSC = REZERWACJA.IDGOSC
WHERE IMIE = 'Ferdynand' AND NAZWISKO = 'Kiepski';
-- ZADANIE 4
SELECT * FROM GOSC
WHERE PROCENT_RABATU IS NULL
ORDER BY NAZWISKO;
-- ZADANIE 5
SELECT IMIE, NAZWISKO, NRPOKOJU FROM GOSC
JOIN REZERWACJA on GOSC.IDGOSC = REZERWACJA.IDGOSC
WHERE DATAOD BETWEEN '2008-01-01' AND '2008-12-31'
AND NAZWISKO LIKE 'K%' OR NAZWISKO LIKE 'L%';
-- ZADANIE 6
SELECT * FROM GOSC
JOIN REZERWACJA on GOSC.IDGOSC = REZERWACJA.IDGOSC
WHERE ZAPLACONA = 0;
-- ZADANIE 7
SELECT * FROM GOSC
JOIN REZERWACJA on GOSC.IDGOSC = REZERWACJA.IDGOSC
JOIN POKOJ on REZERWACJA.NRPOKOJU = POKOJ.NRPOKOJU
JOIN KATEGORIA on KATEGORIA.IDKATEGORIA = POKOJ.IDKATEGORIA
WHERE NAZWA = 'Luksusowy';
-- ZADANIE 8
SELECT * FROM POKOJ
JOIN REZERWACJA on POKOJ.NRPOKOJU = REZERWACJA.NRPOKOJU
JOIN GOSC on GOSC.IDGOSC = REZERWACJA.IDGOSC
WHERE IMIE = 'Andrzej' AND NAZWISKO = 'Nowak';
-- ZADANIE 9
SELECT IMIE, NAZWISKO, COUNT(*) FROM GOSC
JOIN REZERWACJA on GOSC.IDGOSC = REZERWACJA.IDGOSC
GROUP BY GOSC.IDGOSC, IMIE, NAZWISKO
HAVING COUNT(*) >= 3;
-- ZADANIE 10

-- ZADANIE 11

-- ZADANIE 12

-- ZADANIE 13

-- ZADANIE 14

-- ZADANIE 15

-- ZADANIE 16