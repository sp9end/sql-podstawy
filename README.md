# 📊 SQL — Podstawy

Repozytorium dokumentuje moją naukę SQL od podstaw.
Każdy plik `.sql` zawiera zapytania z komentarzami wyjaśniającymi działanie.

## 🛠️ Narzędzia
- SQL (SQLite)
- DBeaver

## 📂 Struktura repozytorium

```
sql-podstawy/
├── sql/
│   ├── 00_setup.sql          # Tworzenie tabeli i dane
│   ├── 01_select_from.sql    # SELECT, FROM
│   ├── 02_where.sql          # WHERE, AND, OR, LIKE, IN, BETWEEN
│   ├── 03_order_by_limit.sql # ORDER BY, LIMIT
│   ├── 04_agregacje.sql      # COUNT, SUM, AVG, MIN, MAX, aliasy
│   └── 05_group_by_having.sql# GROUP BY, HAVING
├── data/                     # Pliki CSV (jeśli < 5MB)
└── README.md
```

## 📋 Tabela: pracownicy

| Kolumna | Typ | Opis |
|---------|-----|------|
| id | INTEGER | Unikalny identyfikator |
| imie | TEXT | Imię pracownika |
| nazwisko | TEXT | Nazwisko pracownika |
| dział | TEXT | Nazwa działu |
| pensja | REAL | Miesięczne wynagrodzenie (PLN) |
| data_zatrudnienia | TEXT | Data rozpoczęcia pracy |

## 📈 Postępy

| # | Temat | Status |
|---|-------|--------|
| 1 | SELECT, FROM | ✅ |
| 2 | WHERE, AND, OR, LIKE, IN, BETWEEN | ✅ |
| 3 | ORDER BY, LIMIT | ✅ |
| 4 | Funkcje agregujące + aliasy | ✅ |
| 5 | GROUP BY, HAVING | ✅ |
| 6 | JOINy | ✅ |
| 7 | Podzapytania i CTE | ⏳ |
| 8 | Projekt portfolio | ⏳ |