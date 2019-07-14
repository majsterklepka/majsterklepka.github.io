---
lang: pl_PL
layout: post
title:  IBAN, jak sprawdzić sumę kontrolną?
date: 2019-03-28 3:00 CET 
description: IBAN - International Bank Account Number. System numerów rachunków bankowych używany we Wspólnocie Europejskiej. Niezawodny, uznawany na całym świecie, łatwy do weryfikacji. Czy łatwo można sprawdzić, poprawność otrzymanego numeru?
image: /images/iban/iban2.png
author: Paweł Sobótka
tags: [C, tools, programming, algorithms, promotions]
comments: true
---

## IBAN ...

No właśnie, IBAN ... w Polsce ten system obowiązuje od końca lat 90-tych. W zależności od kraju, jego długość jest różna, ale zasada i algorytm jest taki sam. Przyjęty w Polsce numer rachunku bankowego według standardu IBAN ma długość 28 znaków, 26 to cyfry, dwa znaki to oznaczenie, kod kraju(PL). sam algorytm jest bardzo prosty, polega na wyliczeniu sumy modulo 97 z długiego numeru, liczby całkowitej bez znaku ... najpierw trzeba przygotować ten numer.

### Struktura numeru(w Polsce)

Numer w używany w Polsce składa się, o czym już wspomniałem, z 28 znaków:

```
PLXX XXXX XXXX XXXX XXXX XXXX XXXX
```

Pierwsze cztery znaki to suma kontrolna łącznie z oznakowaniem, kodem kraju. Tak definiuje je standard. Aby wyliczyć sumę kontrolną, należy dokonać małej konwersji ...

Pierwsze cztery znaki przenosimy na koniec ciągu, o tak:

```
XXXX XXXX XXXX XXXX XXXX XXXX PLXX
```

Litery zamieniamy na cyfry według przypisania:
```
A = 10, B = 11, C = 12, D = 13, E = 14, 
F = 15, G = 16, H = 17, I = 18, J = 19,
K = 20, L = 21, M = 22, N = 23, O = 24,
P = 25, Q = 26, R = 27, S = 28, T = 29,
U = 30, W = 31, X = 32, Y = 33, Z = 34 
```

Można to zrobić poprzez prosty algorytm, pamiętając, że znak(cyfra) jest znakiem ASCII

```c
/*
  preparation of the correct sequence for the algorithm. 
  Recoding ASCII characters to obtain the correct 
  operation of the algorithm
*/
for (i = j = 0; i < strlen(number); ++i, ++j) {
	if (isdigit(number[i]))
		trans[j] = number[i];
	else {
		trans[j]   = (number[i] - 55) / 10 + '0';
		trans[++j] = (number[i] - 55) % 10 + '0';
	}
}
trans[j] = '\0';//set last character to \0
```
Po takim przekodowaniu, można już przystąpić do wyliczenia sumy kontrolnej, a dokładniej do sprawdzenia, czy numer jest poprawny ... teraz, badany numer ma nie jak na początku 28 znaków, tylko 30, i wygląda tak

```
XXXX XXXX XXXX XXXX XXXX XXXX XXXXXX
```

Do wyliczenia sumy modulo 97 tak długiego numeru potrzebna jest biblioteka [gmp](https://gmplib.org/ "GMP Library Home Page"). Standardowo, biblioteka jest dostępna w każdej dystrybucji Linuksa i nie tylko w niej, bo praktycznie w każdym Wolnym Systemie Operacyjnym. Jeśli tak wyliczona suma wyjdzie nam równa **1** to tylko oznacza, że numer jest poprawny. 

Artykuł jest częścią promującą moje biblioteki Open Source [Carramba Libs](https://github.com/majsterklepka/carramba-libs.git "Carramba Libs Repository") i [Libiban](https://github.com/majsterklepka/libiban.git "Libiban Repsitory"). Jedną z funkcji obu biblitek jest właśnie wyliczanie i sprawdzanie czy numer IBAN jest prawidłowy. 


_mgr inż. Paweł Sobótka_
- - - 
