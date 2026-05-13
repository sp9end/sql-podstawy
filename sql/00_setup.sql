-- =============================================
-- PLIK: 00_setup.sql
-- OPIS: Tworzenie tabeli i wstawianie danych
-- BAZA: SQLite
-- =============================================

-- Usuń tabelę jeśli istnieje (przydatne przy resetowaniu)
DROP TABLE IF EXISTS pracownicy;

-- Tworzenie tabeli
CREATE TABLE pracownicy (
    id                INTEGER PRIMARY KEY,
    imie              TEXT    NOT NULL,
    nazwisko          TEXT    NOT NULL,
    dział             TEXT,
    pensja            REAL,
    data_zatrudnienia TEXT
);

-- Wstawianie danych
INSERT INTO pracownicy VALUES (1, 'Anna',    'Kowalska',   'Sprzedaż',  5500, '2021-03-15');
INSERT INTO pracownicy VALUES (2, 'Marek',   'Nowak',      'IT',        7200, '2020-01-10');
INSERT INTO pracownicy VALUES (3, 'Karolina','Wiśniewska', 'Marketing', 6100, '2022-07-01');
INSERT INTO pracownicy VALUES (4, 'Tomasz',  'Zając',      'Sprzedaż',  5200, '2021-11-20');
INSERT INTO pracownicy VALUES (5, 'Ewa',     'Lewandowska','HR',        5800, '2019-05-05');
INSERT INTO pracownicy VALUES (6, 'Piotr',   'Dąbrowski',  'IT',        8100, '2018-09-12');
INSERT INTO pracownicy VALUES (7, 'Marta',   'Kaczmarek',  'Marketing', 5900, '2023-02-28');
INSERT INTO pracownicy VALUES (8, 'Łukasz',  'Woźniak',    'Sprzedaż',  4900, '2022-04-03');

-- Sprawdzenie
SELECT * FROM pracownicy;