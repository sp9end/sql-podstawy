-- =============================================
-- PLIK: 05_group_by_having.sql
-- OPIS: Grupowanie i filtrowanie grup
-- =============================================

-- Liczba pracowników w każdym dziale
SELECT
    dział,
    COUNT(*) AS liczba_pracowników
FROM pracownicy
GROUP BY dział;

-- Statystyki pensji per dział
SELECT
    dział,
    AVG(pensja)  AS średnia_pensja,
    MIN(pensja)  AS min_pensja,
    MAX(pensja)  AS max_pensja
FROM pracownicy
GROUP BY dział
ORDER BY średnia_pensja DESC;

-- HAVING - tylko działy ze średnią pensją > 6000
SELECT
    dział,
    AVG(pensja) AS średnia_pensja
FROM pracownicy
GROUP BY dział
HAVING AVG(pensja) > 6000;

-- WHERE + HAVING razem
-- Działy (bez HR) gdzie pracuje więcej niż 1 osoba
SELECT
    dział,
    COUNT(*) AS liczba_pracowników
FROM pracownicy
WHERE dział <> 'HR'
GROUP BY dział
HAVING COUNT(*) > 1;

-- Zadanie: dział, liczba pracowników, suma pensji
-- tylko działy z sumą pensji > 10000, posortowane malejąco
SELECT
    dział,
    COUNT(*)    AS liczba_pracowników,
    SUM(pensja) AS suma_pensji
FROM pracownicy
GROUP BY dział
HAVING SUM(pensja) > 10000
ORDER BY suma_pensji DESC;