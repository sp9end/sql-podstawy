-- =============================================
-- PLIK: 01_select_from.sql
-- OPIS: Podstawowe zapytania SELECT i FROM
-- =============================================

-- Wszystkie kolumny z tabeli
SELECT * FROM pracownicy;

-- Wybrane kolumny
SELECT imie, nazwisko, pensja
FROM pracownicy;

-- Wybrane kolumny: imię, dział, data zatrudnienia
SELECT imie, dział, data_zatrudnienia
FROM pracownicy;