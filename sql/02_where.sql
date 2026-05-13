-- =============================================
-- PLIK: 02_where.sql
-- OPIS: Filtrowanie danych - WHERE
-- =============================================

-- Filtrowanie po dziale
SELECT imie, nazwisko, dział
FROM pracownicy
WHERE dział = 'IT';

-- Filtrowanie po pensji
SELECT imie, nazwisko, pensja
FROM pracownicy
WHERE pensja > 6000;

-- BETWEEN - przedział pensji
SELECT imie, nazwisko, pensja
FROM pracownicy
WHERE pensja BETWEEN 5500 AND 6500;

-- IN - lista działów
SELECT imie, nazwisko, dział
FROM pracownicy
WHERE dział IN ('IT', 'Marketing');

-- LIKE - imię zaczyna się na "M"
SELECT imie, nazwisko
FROM pracownicy
WHERE imie LIKE 'M%';

-- AND - dział IT z pensją powyżej 7000
SELECT imie, nazwisko, dział, pensja
FROM pracownicy
WHERE dział = 'IT'
  AND pensja > 7000;

-- OR - Sprzedaż lub HR
SELECT imie, nazwisko, dział
FROM pracownicy
WHERE dział = 'Sprzedaż'
   OR dział = 'HR';

-- Zadanie: Sprzedaż z pensją > 5000
SELECT imie, nazwisko, pensja
FROM pracownicy
WHERE dział = 'Sprzedaż'
  AND pensja > 5000;