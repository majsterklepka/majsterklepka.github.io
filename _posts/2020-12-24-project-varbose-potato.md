---
lang: pl
layout: post
title:  ICL7101 based milivoltmeter.
date: 2020-12-24 9:00 UTC 
description: Z wykształcenia jestem Inżynierem, z pasji również. Moim konikiem jest zrobić coś osobiście, samemu a przy okazji pokazać, że coś umiem ... 
image: /images/electronics/varbose-potato-02.png
author: Paweł Sobótka
tags: [opensource, diy, electronics, news]
comments: true
---
Z wykształcenia jestem Inżynierem, z pasji również. Moim konikiem jest zrobić coś osobiście, samemu a przy okazji pokazać, że coś umiem. Ukończone studia techniczne z zakresu Fizyki Technicznej na AGH w Krakowie dały mi pewne ugruntowanie już posiadanej wiedzy i umiejętności, reszta to całe lata praktyki i co nie jest mi obojętne, nadal tą wiedzę i umiejętności rozwijam!

- - - 

## Repozytorium 

Ostatnio pracowałem nad projektem woltomierza cyfrowego. Płytka, którą zaprojektowałem miała kilka drobnych wad, poprawiłem je i zamówiłem ponownie. Całość projektu tu: [varbose-potato](https://github.com/majsterklepka/varbose-potato "ICL7107 Digital Voltmeter Module")

## Praca laboratoryjna

Nie będę ukrywał, nie zawsze informacje znalezione w Internecie nadają się do czegokolwiek, zbudowałem fragment projektu, przetwornicę dostarczającą napięcia ujemnego, tu: 

![pict02]({{site.url}}{{site.baseurl}}/images/electronics/varbose-potato-03.png)

Przy wykorzystaniu posiadanego zaplecza pomiarowego, sprawdziłem czy układ dostarcza napięcia ujemnego i o jakiej wartości.

### Pomiary

Vout = -4.25V  
Vcc = +5.0V
f = 100 Hz
Vrms = 5.63V //napięcie na wejściu przetwornicy, wyjście z generatora

Do pompowania przetwornicy użyłem generatora opartego o układ XR2206, zasilanego z zasilacza +5.0V, sam układ zasilany był z MB-102 a poza tym, wykorzystałem:

- zasilacz wtyczkowy +9.0V 
- zasilacz wtyczkowy +5.0V
- dso138
- dmm klasy podstawowej 3.5 cyfry
- MB-102
- płytka stykowa 400 pól
- kable DuPont
- CD4069
- 1N4148
- 10u/50V
- 470n/100V

Sam układ, zmontowany wygląda o tak:

![pict03]({{site.url}}{{site.baseurl}}/images/electronics/varbose-potato-01.jpg)

## Credits

Oczywiście, treści zamieszczone na tej stronie publikowane są na zasadach licencji typu Open-Source! Można się nimi dzielić, wykorzystywać go do dowolnych celów, również komercyjnych.

Licencjonowanie:

- [CC-BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/ "license text")

Poczuj się wolny! Podziel się tą zawartością z Przyjaciółmi i zawsze pamiętaj o Autorze tego i innych wpisów zamieszczonych tutaj.

- - -

_mgr inż. Paweł Sobótka (SQ7EQE)_
