---
lang: pl_PL
layout: post
title:  SQlite, krótkie wyjaśnienie
date: 2019-03-30 17:00 CET 
description: SQLite, to bardzo popularna baza danych, wykorzystywana nawet na urządzeniach mobilnych. Tu, krótkie objaśnienie c api. Artykuł jest częścią prac nad projektem BaCaDe.
image: /images/sqlite3/sqlite3.png
author: Paweł Sobótka
tags: [C, tools, programming, algorithms, SQLite3, c-api]
comments: true
---

## SQLite

Każdy, kto zetknął się z programowaniem, musi wreszcie zetknąć się z problemem baz danych. SQLite, jest motorem baz danych, jest oprogramowaniem Open Source i jest udostępniany na zasadach Public Domain. jest bardzo popularnym narzędziem, a więc? Jak go ugryźć?

Cały problem polega na poprawnym przygotowaniu zapytania, tu wykorzystuje się kilka różnych metod, poniższy przykład wykorzystuje `sqlite3_prepare_v2()`. Na początek, inicjacja bazy danych:

```c
#include <sqlite3.h>
#include <stdio.h>
#include <string.h>

#define RESPONSE_OK 	0

...

sqlite3 *db;

int main(void) {
    
    int rc = sqlite3_open(":memory:", &db);
    
    if (rc != SQLITE_OK) {
        
        fprintf(stderr, "Nie mogę otworzyć bazy danych: %s\n", sqlite3_errmsg(db));
        sqlite3_close(db);
        
        return 1;
    }
```

następna funkcja, przygotowuje bazę dancyh do pracy,

```c
int init_database()
{
	sqlite3_stmt *res;
    
     char *sql = "CREATE TABLE IF NOT EXISTS Friends(Id INTEGER PRIMARY KEY, Name TEXT);";
          
    
    int rc = sqlite3_prepare_v2(db, sql, -1, &res, 0);
    if (rc != SQLITE_OK){
		printf("Nie udało się przygotować zapytania...\n");
		return -1;
	}
    
    if (sqlite3_step(res) == SQLITE_DONE ) {
        fprintf(stdout, "Tabela Friends utworzona z sukcesem\n");
    }
    sqlite3_reset(res);
    sqlite3_finalize(res);
    return 0;
}
```
... i właśnie, wiersz, 
```c
    int rc = sqlite3_prepare_v2(db, sql, -1, &res, 0);
```
wykorzystuje funkcję z C API SQLite do przygotowania zapytania. Następny fragment,
```c
if (sqlite3_step(res) == SQLITE_DONE ) {
        fprintf(stdout, "Tabela Friends utworzona z sukcesem\n");
    }
```
odpowiada za to, że zapytanie zostanie wykonane. A teraz najważniejsza funkcja, dodawanie rekordów do bazy danych!

```c
int insert_data()
{
	sqlite3_stmt *res = NULL;
	char *sql = "INSERT INTO Friends (Name) VALUES(?1);";
    
    
	int rc = sqlite3_prepare_v2(db, sql, strlen(sql), &res, NULL);
    if (rc != SQLITE_OK){
		printf("Nie udało się przygotować zapytania...\n");
		return -1;
	}
    char *names[] = {"Paweł", "Marek", "Janusz"};
    int i = 0;
    for ( i = 0; i < 3; i++){
			rc = sqlite3_bind_text(res, 1, names[i], strlen(names[i]), NULL);
			if (rc != SQLITE_OK)
				return 1;
			if (sqlite3_step(res) != SQLITE_DONE) {
				sqlite3_finalize(res);
				sqlite3_close(db);
		        return -1;
			}
           sqlite3_reset(res);
	   sqlite3_clear_bindings(res);
	}
	sqlite3_finalize(res);
		
	return 0;
}
```
gdzie: zmienna `sql` zawiera ciąg znakowy z komendami języka SQL, odpowiedzialnymi za to, że do bazy danych, zostaną dodane właściew rekordy. Przygotowanie zapytania odbywa się tak jak w poprzedniej funkcji a wprowadzanie danych ...
```c
char *names[] = {"Paweł", "Marek", "Janusz"};
    int i = 0;
    for ( i = 0; i < 3; i++){
			rc = sqlite3_bind_text(res, 1, names[i], strlen(names[i]), NULL);
			if (rc != SQLITE_OK)
				return 1;
			if (sqlite3_step(res) != SQLITE_DONE) {
				sqlite3_finalize(res);
				sqlite3_close(db);
		        return -1;
			}
           sqlite3_reset(res);
	   sqlite3_clear_bindings(res);
	}
```
najważniejszą funkcją z API SQLite jest tu `sqlie3_bind_text(res, names[i], strlen(names[i]), NULL)` odpowiada ona za dpodanie rekordu do bazy danych i jak zwykle nie może się obejść bez kolejnej funkcji `sqlite3_step(res)`, powodujące to, że zapytanie, czy jak kto woli komenda wydana w języku SQL zostanie wykonana. Kolejne funkcje realizują: `sqlite3_finalize(res)` odpowiada za zakończenie wykonania poleceń w jęzku SQL a funkcja `sqlite3_close(db)` kończy połączenie z bazą danych.

Teraz przejdźmy do odczytu rekordów i wypisania ich na ekranie terminala znakowego, realizuje to funkcja:
```c
int read_data()
{
    sqlite3_stmt *res = NULL;
	
		
    char *sql = "SELECT * FROM Friends";
    int rc = sqlite3_prepare_v2(db, sql, -1, &res, 0);
    if (rc != SQLITE_OK){
		printf("Nie udało się skompilować zapytania...\n");
		return -1;
	}
    while(sqlite3_step(res) == SQLITE_ROW){
		printf("ID: %d\t%s\n", sqlite3_column_int(res, 0), sqlite3_column_text(res,1));
	}
	sqlite3_finalize(res);
//-----------------------------------------------------------
    int last_id = sqlite3_last_insert_rowid(db);
    printf("Ostatni klucz z wprowadzonych rekordów %d\n", last_id);
//-----------------------------------------------------------   
	
	return 0;
}
```
która przy okazji wyświetla ilosć wprowadzonych danych(ostatni klucz). Niekoniecznie jest to oczywiście zgodne z całkowitą ilością rekordów.

a tu: [insert.c](https://github.com/majsterklepka/tdsj/blob/master/sqlite3/insert.c "przykład") jest kompletny plik w języku c. Aby go skompilować, należy wykonac polecenie
```
gcc -Wall insert.c -o sqltest -lsqlite3
```
oczywiście należy mieć zainstalowane w systemie pakiety devel dla bazy danych SQLlite3, które zawierają niezbędne pliki nagłówkowe.

_mgr inż. Paweł Sobótka_
- - - 
