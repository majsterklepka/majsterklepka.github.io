---
lang: pl_PL
layout: post
title:  Diabethes
date: 2019-03-18 3:00 CET 
description: Każdy kto chociaż raz zetknął się z cukrzycą, wie jak ważne dla zdrowia i życia Pacjenta jest regularne wykonywanie badań. Parametr HbA1C jerst ważnym wskaźnikiem i służy do oceny postępów leczenia.
image: /images/diab/diab2.png
author: Paweł Sobótka
tags: [C, tools, programming]
comments: true
---

Małe programy zawsze nie wychodzą z mody. Tu przykład aplikacji wyliczjącej średni, trzymiesięczny poziom glikemii. Aplikacja napisana została w języku C.

[main.c:](https://github.com/majsterklepka/tdsj/blob/master/glikemia/main.c "main.c file")
```
#include <stdlib.h>
#include <locale.h>
#include <stdio.h>
#include <string.h>
#include <libintl.h>

int main(int argc, char *argv[]) {
	
	setlocale(LC_ALL, "");
	bindtextdomain("glikemia", "./locale");
	textdomain("glikemia"); 
	
	double average_glycemia = 0; 
	double HbA1c; 
	
	printf( gettext("Welcome to the App Diabethes!\n"));
	printf(gettext("==========================\n"));
	printf(gettext("Author: Majster Klepka\n"));
	printf(gettext("License: GPLv3\n"));
	printf(gettext("Copyright: (C) 2018 Paweł Sobótka\n"));
	printf(gettext("Usage: \n\tenter your own level \%HbA1c obtained from\n\tthe medical analysis laboratory\n"));
	printf(gettext("\tand if you do not have it yet ...\n"));
	printf(gettext("\tthen report to your doctor for a referral\t\n"));
	printf(gettext("\tand take the test immediately!\n"));
	printf("----------------------------\n");
	printf(gettext("enter value of \% HbA1c: "));
	scanf("%lf", &HbA1c);
	average_glycemia = 28.7 * HbA1c - 46.7;//equation for parametr calculation
	printf(gettext("Your result of the average three-month glycemia\nthat is: %.2f mg/dL\n"), average_glycemia);
	printf("----------------------------\n");
	printf(gettext("Thank you for using this short program...\nAuthor.\n"));

	return EXIT_SUCCESS;
}

```

Krótki program, dosłownie kilka liniejek kodu. Program przelicza HbA1C z wartości podanej w procentach na wartość podaną w mg/dL. Czasem takie przeliczenie przyczynia się do tego, że otrzymany wynik jest bardziej przystępny i znacznie łatwiej można się zorientować w postępie leczenia. 

### Budowanie programu

```
gcc main.c -o glikemia
```

### Uruchamianie

```
./glikemia
```

## Zapominałbym! 

Równanie użyte do wykonania obliczeń:

![equation 1, diabethes]({{site.url}}{{site.baseurl}}/images/diab/diab-equation.png "equation 1, diabethes")

Dziękuję za korzystanie z programu!  
_mgr inż. Paweł Sobótka_

- - - 






