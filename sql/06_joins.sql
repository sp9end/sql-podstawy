-- =============================================
-- PLIK: 06_joins.sql
-- OPIS: Łączenie tabel - JOINy
-- =============================================

-- Tworzenie tabeli działów
CREATE TABLE działy (
    id          INTEGER PRIMARY KEY,
    nazwa       TEXT    NOT NULL,
    budżet      REAL,
    lokalizacja TEXT
);

INSERT INTO działy VALUES (1, 'IT',        150000, 'Warszawa');
INSERT INTO działy VALUES (2, 'Sprzedaż',  90000,  'Kraków');
INSERT INTO działy VALUES (3, 'Marketing', 70000,  'Warszawa');
INSERT INTO działy VALUES (4, 'HR',        50000,  'Wrocław');
INSERT INTO działy VALUES (5, 'Finanse',   80000,  'Gdańsk');

-- INNER JOIN - pracownicy z danymi działu
SELECT
    p.imie,
    p.nazwisko,
    p.pensja,
    d.nazwa        AS dział,
    d.lokalizacja,
    d.budżet
FROM pracownicy p
INNER JOIN działy d ON p.dział = d.nazwa;

-- LEFT JOIN - działy bez pracowników
SELECT
    d.nazwa       AS dział,
    d.lokalizacja,
    p.imie,
    p.nazwisko
FROM działy d
LEFT JOIN pracownicy p ON d.nazwa = p.dział
WHERE p.id IS NULL;

-- Pensja vs budżet działu
SELECT
    d.nazwa                                  AS dział,
    d.budżet                                 AS budżet_działu,
    COUNT(p.id)                              AS liczba_pracowników,
    SUM(p.pensja)                            AS suma_pensji,
    ROUND(SUM(p.pensja) / d.budżet * 100, 1) AS procent_budżetu
FROM działy d
LEFT JOIN pracownicy p ON d.nazwa = p.dział
GROUP BY d.nazwa, d.budżet
ORDER BY procent_budżetu DESC;

-- Zadanie: IT i Marketing z lokalizacją
SELECT
    p.imie,
    p.nazwisko,
    p.pensja,
    d.lokalizacja
FROM pracownicy p
INNER JOIN działy d ON p.dział = d.nazwa
WHERE p.dział IN ('IT', 'Marketing')
ORDER BY p.pensja DESC;