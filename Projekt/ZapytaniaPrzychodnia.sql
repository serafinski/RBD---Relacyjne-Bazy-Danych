--1 Mała Ania jest ciągle chora na angine. Sprawdz ile razy była u laryngologa.
SELECT COUNT(*) "Liczba wizyt" FROM OSOBA
JOIN WIZYTA ON OSOBA.ID_OSOBA = WIZYTA.ID_OSOBY
JOIN SPECJALIZACJE_DOKTORA on WIZYTA.ID_DOKTORA = SPECJALIZACJE_DOKTORA.ID_DOKTORA
JOIN SPECJALIZACJA on SPECJALIZACJE_DOKTORA.ID_SPECJALIZACJI = SPECJALIZACJA.ID_SPECJALIZACJI
WHERE IMIE LIKE 'Anna' AND NAZWA_SPECJALIZACJI = 'Laryngolog'
GROUP BY IMIE;

--2 Wypisz imie,nazwisko oraz liczbę opakowań dla tych lekarzy, którzy wypisali recepte na więcej niż jedno opakowanie leku.
SELECT IMIE, NAZWISKO, ILOSC_OPAKOWAN FROM DOKTOR
JOIN WIZYTA ON DOKTOR.ID_DOKTORA = WIZYTA.ID_DOKTORA
JOIN RECEPTA on WIZYTA.ID_WIZYTY = RECEPTA.ID_WIZYTY
JOIN OSOBA on DOKTOR.ID_OSOBA = OSOBA.ID_OSOBA
WHERE ILOSC_OPAKOWAN>1;

--3 Wypisz nazwy chemiczne leków ktore maja wiecej niz 12 tabletek w opakowaniu. Posortuj po malejącej liczbie tabletek.
SELECT DISTINCT LEKI.ID_LEKU, NAZWA_CHEMICZNA, ILOSC FROM LEKI_NA_RECEPCIE
JOIN LEKI ON LEKI_NA_RECEPCIE.ID_LEKU = LEKI.ID_LEKU
WHERE ILOSC > 12
ORDER BY ILOSC DESC;

--4 Sprawdz czy istnieją pacjęci mieszkający w tym samym domu.
--Jeżeli tak - wypisz adres pod którym mieszkają
SELECT ULICA, NR_DOMU, KOD_POCZTOWY, MIEJSCOWOSC FROM OSOBA
JOIN ADRES_ZAMIESZKANIA on OSOBA.ID_ADRESU = ADRES_ZAMIESZKANIA.ID_ADRESU
GROUP BY ULICA, NR_DOMU, KOD_POCZTOWY, MIEJSCOWOSC
HAVING COUNT(*)>1;

--5 Przychodnia chce wysłać zaproszenia na darmowe badania dla osób po 50 roku życia.
-- Wypisz dane kontaktowe do takich osób.
SELECT TELEFON, EMAIL FROM OSOBA
WHERE PESEL NOT LIKE '__2%' AND PESEL NOT LIKE '__3%' AND PESEL NOT LIKE '8%' AND PESEL NOT LIKE '9%'
AND PESEL NOT LIKE '73%' AND PESEL NOT LIKE '74%' AND PESEL NOT LIKE '75%' AND PESEL NOT LIKE '76%'
AND PESEL NOT LIKE '77%' AND PESEL NOT LIKE '78%' AND PESEL NOT LIKE '79%';

--6 Sprawdz czy któryś z lekarzy leczy się u swojego kolegi
--Wypisz imie oraz nazwisko doktora jak i pacjenta. Wypisz profil wizyty i posortuj rosnąco po ID_wizyty
SELECT A.IMIE "Imie Pacjenta", A.NAZWISKO "Nazwisko Pacjenta", B.IMIE "Imie Doktora",B.NAZWISKO "Nazwisko Doktora", ID_WIZYTY, PROFIL_WIZYTY FROM WIZYTA
    JOIN OSOBA A ON WIZYTA.ID_OSOBY = A.ID_OSOBA
    JOIN DOKTOR B ON WIZYTA.ID_DOKTORA = B.ID_DOKTORA
    JOIN OSOBA B ON B.ID_DOKTORA = B.ID_OSOBA
    JOIN PROFIL_WIZYTY ON WIZYTA.ID_PROFILUWIZYTY = PROFIL_WIZYTY.ID_PROFILU
WHERE A.ID_OSOBA = 1 OR A.ID_OSOBA = 2 OR A.ID_OSOBA=3
ORDER BY ID_WIZYTY DESC;

--7 Jeżeli istnieją - wypisz dane mocodawcy i pełnomocnika oraz typ pełnomocnictwa
SELECT A.IMIE "Imie mocodawcy", A.NAZWISKO "Nazwisko mocodawcy",
       B.IMIE "Imie pelnomocnika", B.NAZWISKO "Nazwisko pelnomocnika", TYP_PELNOMOCNICTWA
FROM PELNOMOCNITWO
JOIN OSOBA A ON PELNOMOCNITWO.ID_OSOBA1 = A.ID_OSOBA
JOIN OSOBA B ON PELNOMOCNITWO.ID_OSOBA2 = B.ID_OSOBA;

--8 Biorąc pod uwagę jak często Ania bywa u laryngologa - oblicz ile kosztowały jej wizyty w 2022 roku
-- Wypisz numer konta lekarza na ktore mają zostać przelane pieniądze za jej wizyty i jak powinna dawkowac leki.
SELECT SUM(CENA_WIZYTY), DAWKOWANIE, NR_KONTA FROM PROFIL_WIZYTY
JOIN WIZYTA ON PROFIL_WIZYTY.ID_PROFILU = WIZYTA.ID_PROFILUWIZYTY
JOIN DOKTOR ON WIZYTA.ID_DOKTORA = DOKTOR.ID_DOKTORA
JOIN OSOBA ON WIZYTA.ID_OSOBY = OSOBA.ID_OSOBA
JOIN RECEPTA ON WIZYTA.ID_WIZYTY = RECEPTA.ID_WIZYTY
WHERE IMIE = 'Anna' AND EXTRACT(YEAR FROM DATA) = 2022
GROUP BY NR_KONTA, DAWKOWANIE;

--9 Podaj datę pierwszej wizyty dla każdego z pacjentów, posortuj od najwcześniejszej daty wizyty
SELECT IMIE, NAZWISKO, MIN(DATA) FROM OSOBA
JOIN WIZYTA on OSOBA.ID_OSOBA = WIZYTA.ID_OSOBY
GROUP BY IMIE, NAZWISKO
ORDER BY MIN(DATA);

--10 Znajdź lekarzy, którzy mieli wizytę/y w 2021, wypisz ich numer prawa wykonywania zawodu
SELECT NR_PRAWA_WYK_ZAWODU FROM DOKTOR
JOIN WIZYTA ON DOKTOR.ID_DOKTORA = WIZYTA.ID_DOKTORA
WHERE DATA IN (SELECT DATA FROM WIZYTA WHERE EXTRACT(YEAR FROM DATA) = 2021);
