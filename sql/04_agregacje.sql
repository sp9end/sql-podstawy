-- =============================================
-- PLIK: 04_agregacje.sql
-- OPIS: Funkcje agregujące + aliasy
-- =============================================

-- COUNT - liczba pracowników
SELECT COUNT(*) AS liczba_pracowników
FROM pracownicy;

-- SUM - suma pensji
SELECT SUM(pensja) AS suma_pensji
FROM pracownicy;

-- AVG - średnia pensja
SELECT AVG(pensja) AS średnia_pensja
FROM pracownicy;

-- MIN i MAX
SELECT
    MIN(pensja) AS najniższa_pensja,
    MAX(pensja) AS najwyższa_pensja
FROM pracownicy;

-- Wszystkie agregacje razem
SELECT
    COUNT(*)    AS liczba_pracowników,
    SUM(pensja) AS suma_pensji,
    AVG(pensja) AS średnia_pensja,
    MIN(pensja) AS min_pensja,
    MAX(pensja) AS max_pensja
FROM pracownicy;

-- Zadanie: agregacje dla działu IT z aliasem tabeli
SELECT
    AVG(p.pensja) AS średnia_pensja,
    MIN(p.pensja) AS min_pensja,
    MAX(p.pensja) AS max_pensja
FROM pracownicy p
WHERE p.dział = 'IT';