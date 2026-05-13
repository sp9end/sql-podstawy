-- =============================================
-- PLIK: 03_order_by_limit.sql
-- OPIS: Sortowanie i ograniczanie wyników
-- =============================================

-- Sortowanie rosnąco po pensji
SELECT imie, nazwisko, pensja
FROM pracownicy
ORDER BY pensja ASC;

-- Sortowanie malejąco po pensji
SELECT imie, nazwisko, pensja
FROM pracownicy
ORDER BY pensja DESC;

-- Sortowanie po kilku kolumnach
-- najpierw dział alfabetycznie, potem pensja malejąco
SELECT imie, nazwisko, dział, pensja
FROM pracownicy
ORDER BY dział ASC, pensja DESC;

-- TOP 3 najlepiej zarabiające osoby
SELECT imie, nazwisko, pensja
FROM pracownicy
ORDER BY pensja DESC
LIMIT 3;

-- Zadanie: TOP 5 najwyższych pensji
SELECT imie, nazwisko, pensja
FROM pracownicy
ORDER BY pensja DESC
LIMIT 5;