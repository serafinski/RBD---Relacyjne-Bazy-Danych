-- ZADANIE 1
SELECT * FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO;
-- ZADANIE 2
SELECT * FROM EMP
INNER JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO;
-- To zapytanie zadziała dokładnie tak samo jak to z zadania 1.
-- Różnica jest taka, że przy pomocy INNER JOIN możemy
-- oddzielić warunki złączenia od pozostałych warunków.

-- ZADANIE 3
SELECT ENAME, DNAME, EMP.DEPTNO
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO;
-- Wybierając numery departamentów musimy określić, z
-- której tabeli mają być one wybrane (emp.deptno),
-- ponieważ kolumna deptno występuje zarówno w tabeli emp jak i w dept.
-- Wszystko jedno, z której tabeli wybierzemy, ponieważ
-- jak określa warunek WHERE, numery te są sobie równe.

-- ZADANIE 4
SELECT ENAME, DNAME, EMP.DEPTNO FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO;
-- ZADANIE 5
SELECT ENAME, LOC, DNAME FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO AND SAL > 1500;
-- ZADANIE 6
SELECT ENAME, JOB, SAL, GRADE FROM EMP, SALGRADE
WHERE SAL BETWEEN LOSAL AND HISAL;
-- W tym zapytaniu mamy do czynienia ze złączeniem nie po
-- kluczach (klucz główny = klucz obcy) tylko po wartościach atrybutów.

-- ZADANIE 7
SELECT * FROM EMP, SALGRADE
WHERE SAL BETWEEN LOSAL AND HISAL AND GRADE = 3;
-- ZADANIE 8
SELECT * FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO AND LOC = 'DALLAS';
-- NAZWA JEST CASE SENSITIVE

-- ZADANIE 9
SELECT ENAME, DNAME, GRADE FROM EMP, SALGRADE, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO AND SAL BETWEEN LOSAL AND HISAL;

--ZADANIE 9 ALTERNATYWNIE
SELECT ENAME, DNAME, GRADE FROM EMP
INNER JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO
INNER JOIN SALGRADE ON SAL BETWEEN LOSAL AND HISAL;

-- ZADANIE 10
SELECT * FROM DEPT
LEFT JOIN EMP ON EMP.DEPTNO = DEPT.DEPTNO;
-- LEFT JOIN określa, że warunek złączenia może,
-- ale nie musi być spełniony aby rekord z tabeli DEPT został wyświetlony.
-- Jeżeli warunek nie jest spełniony (np. dla działu 40 w którym
-- nikt nie pracuje), wyświetlą się dane działu,
-- a pozostałe pola (te z tabeli emp) będą ustawione na NULL.

-- ZADANIE 11
SELECT * FROM EMP
LEFT JOIN DEPT ON DEPT.DEPTNO = EMP.DEPTNO;
--CHYBA TAK POWINNO BYC ALE NIE JESTEM PRZEKONANY W 100%


-- ZADANIE 12
SELECT ENAME, DEPTNO FROM EMP WHERE DEPTNO = 30
UNION SELECT '', DEPTNO FROM EMP WHERE DEPTNO = 20;

--Dwa apostrofy w drugim zapytaniu są potrzebne, ponieważ
-- obydwa zapytania w unii muszą mieć tyle samo pól
-- (pola muszą sobie odpowiadać).Możemy jednak zauważyć, że wypisał się tylko
-- jeden pracownik z działu 20, a z pewnością jest ich więcej.
-- Jest to spowodowane tym, że UNION usuwa duplikaty podobnie do DISTINCT,
-- więc wszystkie rekordy ('', 30) zostają zbite w jeden rekord.
-- Aby pozbyć się tego problemu, musimy dodać jakieś pole, które rozróżni
-- rekordy, np. empno lub użyć UNION ALL.

--ZADANIE 12 ALTERNATYWNIE
SELECT ENAME, DEPTNO FROM EMP WHERE DEPTNO = 30
UNION ALL SELECT '', DEPTNO FROM EMP WHERE DEPTNO = 20;

-- ZADANIE 13
SELECT JOB FROM EMP
WHERE DEPTNO = 10
UNION
SELECT JOB FROM EMP
WHERE DEPTNO = 30;

-- ZADANIE 13 - BEZ UNION
SELECT DISTINCT JOB FROM EMP
WHERE DEPTNO IN (10,30);

-- ZADANIE 14
SELECT JOB FROM EMP WHERE DEPTNO = 10
INTERSECT SELECT JOB FROM EMP WHERE DEPTNO = 30;
-- INTERSECT nie występuje w standardzie SQL i nie zadziała również w MS SQL.
-- Aby rozwiązać to zadanie bez INTERSECT, należałoby użyć podzapytań

-- ZADANIE 15
SELECT JOB FROM EMP WHERE DEPTNO = 10
MINUS SELECT JOB FROM EMP WHERE DEPTNO = 30;
-- MINUS nie występuje w standardzie SQL i nie zadziała również w MS SQL.
-- Aby rozwiązać to zadanie bez MINUS, należałoby użyć podzapytań

-- ZADANIE 16
SELECT PRACOWNIK.ENAME, PRACOWNIK.SAL FROM EMP PRACOWNIK, EMP KIEROWNIK
WHERE PRACOWNIK.MGR = KIEROWNIK.EMPNO AND  PRACOWNIK.SAL < KIEROWNIK.SAL;
-- W tym zapytaniu musimy złączyć tabelę EMP z samą sobą
-- (MGR jest kluczem obcym z tabeli EMP i wskazuje kierownika).
-- Musimy więc użyć dwukrotnie tabeli EMP po FROM.
-- Aby wiedzieć, do której z tabel EMP się odwołujemy,
-- musimy nadać aliasy (PRACOWNIK i KIEROWNIK) a następnie
-- odwoływać się do nich tak, jakby były to normalne tabele.

-- ZADANIE 17
SELECT PRACOWNIK.ENAME, KIEROWNIK.ENAME FROM EMP PRACOWNIK, EMP KIEROWNIK
WHERE PRACOWNIK.MGR = KIEROWNIK.EMPNO ORDER BY KIEROWNIK.ENAME;
