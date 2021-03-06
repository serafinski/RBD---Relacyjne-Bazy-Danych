-- ZADANIE 1
SELECT * FROM EMP
WHERE SAL = (SELECT MIN(SAL) FROM  EMP);
-- ZADANIE 2
SELECT * FROM EMP
WHERE JOB = (SELECT JOB FROM EMP WHERE ENAME = 'BLAKE');
-- ZADANIE 3
SELECT * FROM EMP
WHERE SAL IN (SELECT MIN(SAL) FROM EMP GROUP BY DEPTNO);
-- ZADANIE 4
SELECT * FROM EMP A
WHERE SAL = (SELECT MIN(SAL) FROM EMP B WHERE A.DEPTNO = B.DEPTNO);
-- ZADANIE 5
SELECT * FROM EMP
WHERE SAL > ANY (SELECT MIN(SAL) FROM EMP WHERE DEPTNO = 30);
--Tu chyba nie trzeba używać MIN ale nie wywala błędu

-- ZADANIE 6
SELECT * FROM EMP
WHERE SAL > ALL (SELECT MAX(SAL) FROM EMP WHERE DEPTNO = 30);
--Tu chyba nie trzeba używać MAX ale nie wywala błędu

-- ZADANIE 7
SELECT DISTINCT DEPTNO FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL) > (SELECT AVG(SAL) FROM EMP WHERE DEPTNO = 30);
-- ZADANIE 8
SELECT JOB FROM EMP
GROUP BY JOB
HAVING AVG(SAL) = (SELECT MAX(AVG(SAL)) FROM EMP GROUP BY JOB);
-- ZADANIE 9
SELECT * FROM EMP
WHERE SAL > (SELECT MAX(SAL) FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO AND DNAME = 'SALES');
-- ZADANIE 10
SELECT * FROM EMP A
WHERE SAL > (SELECT AVG(SAL) FROM EMP B WHERE A.DEPTNO = B.DEPTNO);
-- ZADANIE 11
SELECT * FROM EMP A
WHERE EXISTS(SELECT * FROM EMP B WHERE B.MGR = A.MGR);
-- ZADANIE 12
SELECT * FROM EMP
WHERE DEPTNO NOT IN (SELECT DEPTNO FROM DEPT);
--Brak wyników jest OK -> bo w bazie nie ma takich pracowników!

-- ZADANIE 13
SELECT * FROM EMP A
WHERE HIREDATE = (SELECT MAX(HIREDATE) FROM EMP B
WHERE A.DEPTNO = B.DEPTNO)
ORDER BY HIREDATE;

-- ZADANIE 14
SELECT ENAME, SAL, DEPTNO FROM EMP A
WHERE SAL > (SELECT AVG(SAL) FROM EMP B WHERE B.DEPTNO = A.DEPTNO);
-- ZADANIE 15
SELECT * FROM DEPT
WHERE DEPTNO NOT IN (SELECT DEPTNO FROM EMP);
-- ZADANIE 16
SELECT DEPTNO, ROUND((W_DZIALE / RAZEM * 100),2) "PROCENTOWY UDZIAL"
FROM (SELECT COUNT(*) AS RAZEM FROM EMP)a,
(SELECT DEPTNO, COUNT(*) AS W_DZIALE FROM EMP GROUP BY DEPTNO)b;