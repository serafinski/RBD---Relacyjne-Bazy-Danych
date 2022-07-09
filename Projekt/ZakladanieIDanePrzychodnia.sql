--Założenie tabel, wpisanie przykładowych danych: 3

--1 ADRES_ZAMIESZKANIA
INSERT INTO ADRES_ZAMIESZKANIA(ID_ADRESU, ULICA, NR_DOMU, NR_MIESZKANIA, KOD_POCZTOWY, MIEJSCOWOSC)
VALUES (1,'Pajecza',3,null,'04-777','Warszawa');

INSERT INTO ADRES_ZAMIESZKANIA(ID_ADRESU, ULICA, NR_DOMU, NR_MIESZKANIA, KOD_POCZTOWY, MIEJSCOWOSC)
VALUES (2,'Trakt Lubelski',351,1,'04-666','Warszawa');

INSERT INTO ADRES_ZAMIESZKANIA(ID_ADRESU, ULICA, NR_DOMU, NR_MIESZKANIA, KOD_POCZTOWY, MIEJSCOWOSC)
VALUES (3,'Koryncka',33,null,'04-567','Warszawa');

INSERT INTO ADRES_ZAMIESZKANIA(ID_ADRESU, ULICA, NR_DOMU, NR_MIESZKANIA, KOD_POCZTOWY, MIEJSCOWOSC)
VALUES (4,'Wydawnicza',5,null,'03-123','Warszawa');

INSERT INTO ADRES_ZAMIESZKANIA(ID_ADRESU, ULICA, NR_DOMU, NR_MIESZKANIA, KOD_POCZTOWY, MIEJSCOWOSC)
VALUES (5,'Akwarelowa',44,7,'04-007','Warszawa');

--2 BAZA_ICD_10
INSERT INTO BAZA_ICD_10(ID_ICD10, KOD, OPIS, PRZEKWLEKLE)
VALUES (1,'I10','Samoistne (pierwotne) nadciśnienie',0);

INSERT INTO BAZA_ICD_10(ID_ICD10, KOD, OPIS, PRZEKWLEKLE)
VALUES (2,'I10','Samoistne (pierwotne) nadciśnienie',1);

INSERT INTO BAZA_ICD_10(ID_ICD10, KOD, OPIS, PRZEKWLEKLE)
VALUES (3,'J00','Ostre zapalenie nosa i gardła (przeziębienie)',0);

INSERT INTO BAZA_ICD_10(ID_ICD10, KOD, OPIS, PRZEKWLEKLE)
VALUES (4,'J03','Zapalenie migdałków paciorkowce',0);

INSERT INTO BAZA_ICD_10(ID_ICD10, KOD, OPIS, PRZEKWLEKLE)
VALUES (5,'L80','Inne choroby tkanki skóry i tkanki podskórnej',0);

--3 DOKTOR
INSERT INTO DOKTOR(ID_DOKTORA, NR_PRAWA_WYK_ZAWODU, NR_KONTA, ID_OSOBA)
VALUES (1,4012345,'PL-52-1090-2268-4855-1637-8511-9690',1);

INSERT INTO DOKTOR(ID_DOKTORA, NR_PRAWA_WYK_ZAWODU, NR_KONTA, ID_OSOBA)
VALUES (2,2543210,'PL-02-8002-1027-7665-7042-7255-9817',2);

INSERT INTO DOKTOR(ID_DOKTORA, NR_PRAWA_WYK_ZAWODU, NR_KONTA, ID_OSOBA)
VALUES (3,4777777,'PL-60-8250-1026-2309-1739-1253-8966',3);

--4 LEKI
INSERT INTO LEKI(ID_LEKU, NAZWA_CHEMICZNA)
VALUES(1,'Telmisartan');

INSERT INTO LEKI(ID_LEKU, NAZWA_CHEMICZNA)
VALUES(2,'Amoksycylina + Kwas Klawulanowy');

INSERT INTO LEKI(ID_LEKU, NAZWA_CHEMICZNA)
VALUES(3,'Ibuprofen');

--6 ODDZIAL_NFZ
INSERT INTO ODDZIAL_NFZ(ID_KOD, KOD_NFZ, NAZWA)
VALUES (1,'01','Dolnośląski');

INSERT INTO ODDZIAL_NFZ(ID_KOD, KOD_NFZ, NAZWA)
VALUES (2,'02','Kujawsko-Pomorski');

INSERT INTO ODDZIAL_NFZ(ID_KOD, KOD_NFZ, NAZWA)
VALUES (3,'03','Lubelski');

INSERT INTO ODDZIAL_NFZ(ID_KOD, KOD_NFZ, NAZWA)
VALUES (4,'04','Lubuski');

INSERT INTO ODDZIAL_NFZ(ID_KOD, KOD_NFZ, NAZWA)
VALUES (5,'05','Łódzki');

INSERT INTO ODDZIAL_NFZ(ID_KOD, KOD_NFZ, NAZWA)
VALUES (6,'06','Małopolski');

INSERT INTO ODDZIAL_NFZ(ID_KOD, KOD_NFZ, NAZWA)
VALUES (7,'07','Mazowiecki');

INSERT INTO ODDZIAL_NFZ(ID_KOD, KOD_NFZ, NAZWA)
VALUES (8,'08','Opolski');

INSERT INTO ODDZIAL_NFZ(ID_KOD, KOD_NFZ, NAZWA)
VALUES (9,'09','Podkarpacki');

INSERT INTO ODDZIAL_NFZ(ID_KOD, KOD_NFZ, NAZWA)
VALUES (10,'10','Podlaski');

INSERT INTO ODDZIAL_NFZ(ID_KOD, KOD_NFZ, NAZWA)
VALUES (11,'11','Pomorski');

INSERT INTO ODDZIAL_NFZ(ID_KOD, KOD_NFZ, NAZWA)
VALUES (12,'12','Śląski');

INSERT INTO ODDZIAL_NFZ(ID_KOD, KOD_NFZ, NAZWA)
VALUES (13,'13','Świętokrzyski');

INSERT INTO ODDZIAL_NFZ(ID_KOD, KOD_NFZ, NAZWA)
VALUES (14,'14','Warmińsko-Mazurski');

INSERT INTO ODDZIAL_NFZ(ID_KOD, KOD_NFZ, NAZWA)
VALUES (15,'15','Wielkopolski');

INSERT INTO ODDZIAL_NFZ(ID_KOD, KOD_NFZ, NAZWA)
VALUES (16,'16','Zachodniopomorski');

--7 OSOBA
--LEKARZE
INSERT INTO OSOBA(ID_OSOBA, PESEL, IMIE, NAZWISKO, TELEFON, EMAIL, ID_ADRESU, ID_ODDZIALU_NFZ)
VALUES (1,'75011637716','Tomasz','Nowak','844-283-678','tomasz@nowak.com',2,7);

INSERT INTO OSOBA(ID_OSOBA, PESEL, IMIE, NAZWISKO, TELEFON, EMAIL, ID_ADRESU, ID_ODDZIALU_NFZ)
VALUES (2,'61070833624','Jan','Barański','629-355-576','jan@baranski.com',3,16);

INSERT INTO OSOBA(ID_OSOBA, PESEL, IMIE, NAZWISKO, TELEFON, EMAIL, ID_ADRESU, ID_ODDZIALU_NFZ)
VALUES (3,'71090219173','Mateusz','Bieliński','887-236-975','mateusz@bielinski.com',5,3);

--PACJENCI
INSERT INTO OSOBA(ID_OSOBA, PESEL, IMIE, NAZWISKO, TELEFON, EMAIL, ID_ADRESU, ID_ODDZIALU_NFZ)
VALUES (4,'07222895836','Anna','Konieczna','932-460-728',null,1,7);

INSERT INTO OSOBA(ID_OSOBA, PESEL, IMIE, NAZWISKO, TELEFON, EMAIL, ID_ADRESU, ID_ODDZIALU_NFZ)
VALUES (5,'80122998973','Stefan','Batory','548-483-031','stefan.batory@gmail.com',4,6);

INSERT INTO OSOBA(ID_OSOBA, PESEL, IMIE, NAZWISKO, TELEFON, EMAIL, ID_ADRESU, ID_ODDZIALU_NFZ)
VALUES (6,'89033199374','Maciej','Konieczny','932-460-728',null,1,7);

--8 PELNOMOCNICTWO
INSERT INTO PELNOMOCNITWO(ID_OSOBA1, ID_OSOBA2, TYP_PELNOMOCNICTWA)
VALUES (4,6,'Rodzajowe');

--10 RECEPTA
INSERT INTO RECEPTA(ID_RECEPTY, KOD_RECEPTY, ILOSC_OPAKOWAN, DAWKOWANIE, ID_WIZYTY)
VALUES (1,0345,1,'1 tab x 14 dni',1);

INSERT INTO RECEPTA(ID_RECEPTY, KOD_RECEPTY, ILOSC_OPAKOWAN, DAWKOWANIE, ID_WIZYTY)
VALUES (2,0666,1,'1 tab x 14 dni',2);

INSERT INTO RECEPTA(ID_RECEPTY, KOD_RECEPTY, ILOSC_OPAKOWAN, DAWKOWANIE, ID_WIZYTY)
VALUES (3,4189,2,'Nie przekraczać 1600 mg dziennie',3);

INSERT INTO RECEPTA(ID_RECEPTY, KOD_RECEPTY, ILOSC_OPAKOWAN, DAWKOWANIE, ID_WIZYTY)
VALUES (4,6030,1,'Nie przekraczać 1600 mg dziennie',4);

INSERT INTO RECEPTA(ID_RECEPTY, KOD_RECEPTY, ILOSC_OPAKOWAN, DAWKOWANIE, ID_WIZYTY)
VALUES (5,1029,1,'1 tab x 14 dni',5);

INSERT INTO RECEPTA(ID_RECEPTY, KOD_RECEPTY, ILOSC_OPAKOWAN, DAWKOWANIE, ID_WIZYTY)
VALUES (6,0563,6,'1 tab dziennie',6);

INSERT INTO RECEPTA(ID_RECEPTY, KOD_RECEPTY, ILOSC_OPAKOWAN, DAWKOWANIE, ID_WIZYTY)
VALUES (7,2018,1,'Nie przekraczać 1600 mg dziennie',7);

INSERT INTO RECEPTA(ID_RECEPTY, KOD_RECEPTY, ILOSC_OPAKOWAN, DAWKOWANIE, ID_WIZYTY)
VALUES (8,6185,2,'Nie przekraczać 1600 mg dziennie',8);

INSERT INTO RECEPTA(ID_RECEPTY, KOD_RECEPTY, ILOSC_OPAKOWAN, DAWKOWANIE, ID_WIZYTY)
VALUES (9,5038,1,'1 tab x 14 dni',9);

--12 SPECJALIZACJA
INSERT INTO SPECJALIZACJA(ID_SPECJALIZACJI, NAZWA_SPECJALIZACJI)
VALUES (1,'Internista');

INSERT INTO SPECJALIZACJA(ID_SPECJALIZACJI, NAZWA_SPECJALIZACJI)
VALUES (2,'Kardiolog');

INSERT INTO SPECJALIZACJA(ID_SPECJALIZACJI, NAZWA_SPECJALIZACJI)
VALUES (3,'Chirurg');

INSERT INTO SPECJALIZACJA(ID_SPECJALIZACJI, NAZWA_SPECJALIZACJI)
VALUES (4,'Laryngolog');

--5 LEKI_NA_RECEPCIE - ASOCJACYJNA
INSERT INTO LEKI_NA_RECEPCIE(ID_LEKU, ID_RECEPTY, ILOSC)
VALUES(2,1,14);

INSERT INTO LEKI_NA_RECEPCIE(ID_LEKU, ID_RECEPTY, ILOSC)
VALUES(2,2,14);

INSERT INTO LEKI_NA_RECEPCIE(ID_LEKU, ID_RECEPTY, ILOSC)
VALUES(3,3,12);

INSERT INTO LEKI_NA_RECEPCIE(ID_LEKU, ID_RECEPTY, ILOSC)
VALUES(3,4,12);

INSERT INTO LEKI_NA_RECEPCIE(ID_LEKU, ID_RECEPTY, ILOSC)
VALUES(2,5,14);

INSERT INTO LEKI_NA_RECEPCIE(ID_LEKU, ID_RECEPTY, ILOSC)
VALUES(1,6,28);

INSERT INTO LEKI_NA_RECEPCIE(ID_LEKU, ID_RECEPTY, ILOSC)
VALUES(3,7,12);

INSERT INTO LEKI_NA_RECEPCIE(ID_LEKU, ID_RECEPTY, ILOSC)
VALUES(3,8,12);

INSERT INTO LEKI_NA_RECEPCIE(ID_LEKU, ID_RECEPTY, ILOSC)
VALUES(2,9,14);

--11 ROZPOZNANIA - ASOCJACYJNA
INSERT INTO ROZPOZNANIA(ID_ICD10, ID_WIZYTY)
VALUES (4,1);

INSERT INTO ROZPOZNANIA(ID_ICD10, ID_WIZYTY)
VALUES (4,2);

INSERT INTO ROZPOZNANIA(ID_ICD10, ID_WIZYTY)
VALUES (5,3);

INSERT INTO ROZPOZNANIA(ID_ICD10, ID_WIZYTY)
VALUES (3,4);

INSERT INTO ROZPOZNANIA(ID_ICD10, ID_WIZYTY)
VALUES (4,5);

INSERT INTO ROZPOZNANIA(ID_ICD10, ID_WIZYTY)
VALUES (2,6);

INSERT INTO ROZPOZNANIA(ID_ICD10, ID_WIZYTY)
VALUES (3,7);

INSERT INTO ROZPOZNANIA(ID_ICD10, ID_WIZYTY)
VALUES (5,8);

INSERT INTO ROZPOZNANIA(ID_ICD10, ID_WIZYTY)
VALUES (4,9);

--13 SPECJALIZACJE_DOKTORA - ASOSCJACYJNA
INSERT INTO SPECJALIZACJE_DOKTORA(ID_SPECJALIZACJI, ID_DOKTORA)
VALUES (1,1);

INSERT INTO SPECJALIZACJE_DOKTORA(ID_SPECJALIZACJI, ID_DOKTORA)
VALUES (2,1);

INSERT INTO SPECJALIZACJE_DOKTORA(ID_SPECJALIZACJI, ID_DOKTORA)
VALUES (3,2);

INSERT INTO SPECJALIZACJE_DOKTORA(ID_SPECJALIZACJI, ID_DOKTORA)
VALUES (4,3);

--9 PROFIL_WIZYTY
INSERT INTO PROFIL_WIZYTY(ID_PROFILU, PROFIL_WIZYTY, CENA_WIZYTY)
VALUES (1,'Internistyczna',150);

INSERT INTO PROFIL_WIZYTY(ID_PROFILU, PROFIL_WIZYTY, CENA_WIZYTY)
VALUES (2,'Kardiologiczna',250);

INSERT INTO PROFIL_WIZYTY(ID_PROFILU, PROFIL_WIZYTY, CENA_WIZYTY)
VALUES (3,'Chirurgiczna',300);

INSERT INTO PROFIL_WIZYTY(ID_PROFILU, PROFIL_WIZYTY, CENA_WIZYTY)
VALUES (4,'Laryngologiczna',200);

--14 WIZYTA
INSERT INTO WIZYTA(ID_WIZYTY, ID_OSOBY, ID_DOKTORA, DATA, ID_PROFILUWIZYTY, ZALECENIA, OPIS_BADANIA)
VALUES (1,4,3,TO_DATE('2021-12-26','YYYY-MM-DD'),4,
        'Płukanie gardła, regularne przyjmowanie antybiotyku przez 7 dni',
        'Angina, od wczoraj silny ból gardła uniemożliwiający połykanie. Na migdałkach typowe zmiany ropne.');

INSERT INTO WIZYTA(ID_WIZYTY, ID_OSOBY, ID_DOKTORA, DATA, ID_PROFILUWIZYTY, ZALECENIA, OPIS_BADANIA)
VALUES (2,5,3,TO_DATE('2022-01-29','YYYY-MM-DD'),4,
        'Płukanie gardła, regularne przyjmowanie antybiotyku przez 7 dni',
        'Angina, od wczoraj silny ból gardła uniemożliwiający połykanie. Na migdałkach brak typowych zmian ropnych.');

INSERT INTO WIZYTA(ID_WIZYTY, ID_OSOBY, ID_DOKTORA, DATA, ID_PROFILUWIZYTY, ZALECENIA, OPIS_BADANIA)
VALUES (3,6,2,TO_DATE('2022-01-31','YYYY-MM-DD'),3,
        'Regularne zmienianie opatrunku, dezynfekcja rany.',
        'Zmiany skórne wymagające wycięcia.');

INSERT INTO WIZYTA(ID_WIZYTY, ID_OSOBY, ID_DOKTORA, DATA, ID_PROFILUWIZYTY, ZALECENIA, OPIS_BADANIA)
VALUES (4,2,1,TO_DATE('2022-02-10','YYYY-MM-DD'),1,
        'Pozostawanie w łóżku, unikanie wysiłków fizycznych.',
        'Przeziębienie, od 3 dni gorączka, ból głowy i katar.');

INSERT INTO WIZYTA(ID_WIZYTY, ID_OSOBY, ID_DOKTORA, DATA, ID_PROFILUWIZYTY, ZALECENIA, OPIS_BADANIA)
VALUES (5,4,3,TO_DATE('2022-02-22','YYYY-MM-DD'),4,
        'Płukanie gardła, regularne przyjmowanie antybiotyku przez 7 dni',
        'Angina, od wczoraj silny ból gardła uniemożliwiający połykanie. Na migdałkach typowe zmiany ropne.');

INSERT INTO WIZYTA(ID_WIZYTY, ID_OSOBY, ID_DOKTORA, DATA, ID_PROFILUWIZYTY, ZALECENIA, OPIS_BADANIA)
VALUES (6,3,1,TO_DATE('2022-03-17','YYYY-MM-DD'),2,
        'Regularna kontrola ciśnienia, eliminacja soli kuchennej, regularny wysiłek fizyczny, normalizacja masy ciała.',
        'Nadciśnienie tętnicze, dobrze kontrolowane, przedłużeie leków stałych.');

INSERT INTO WIZYTA(ID_WIZYTY, ID_OSOBY, ID_DOKTORA, DATA, ID_PROFILUWIZYTY, ZALECENIA, OPIS_BADANIA)
VALUES (7,6,1,TO_DATE('2022-03-22','YYYY-MM-DD'),1,
        'Pozostawanie w łóżku, unikanie wysiłków fizycznych.',
        'Przeziębienie, od 2 dni gorączka, ból głowy i katar.');

INSERT INTO WIZYTA(ID_WIZYTY, ID_OSOBY, ID_DOKTORA, DATA, ID_PROFILUWIZYTY, ZALECENIA, OPIS_BADANIA)
VALUES (8,5,2,TO_DATE('2022-04-01','YYYY-MM-DD'),3,
        'Regularne zmienianie opatrunku, dezynfekcja rany.',
        'Zmiany skórne wymagające wycięcia.');

INSERT INTO WIZYTA(ID_WIZYTY, ID_OSOBY, ID_DOKTORA, DATA, ID_PROFILUWIZYTY, ZALECENIA, OPIS_BADANIA)
VALUES (9,4,3,TO_DATE('2022-04-20','YYYY-MM-DD'),4,
        'Płukanie gardła, regularne przyjmowanie antybiotyku przez 7 dni',
        'Angina, od wczoraj silny ból gardła uniemożliwiający połykanie. Na migdałkach typowe zmiany ropne.');