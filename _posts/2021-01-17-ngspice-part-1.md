---
lang: pl
layout: post
title:  ngspice part 1.
date: 2021-01-17 11:00 UTC 
description: Z wykształcenia jestem Inżynierem, z pasji również. Moim konikiem jest zrobić coś osobiście, samemu a przy okazji pokazać, że coś umiem ... 
image: /images/electronics/berkley-spice.png
author: Paweł Sobótka
tags: [opensource, diy, electronics]
comments: true
---
Z wykształcenia jestem Inżynierem, z pasji również. Moim konikiem jest zrobić coś osobiście, samemu a przy okazji pokazać, że coś umiem. Ukończone studia techniczne z zakresu Fizyki Technicznej na AGH w Krakowie dały mi pewne ugruntowanie już posiadanej wiedzy i umiejętności, reszta to całe lata praktyki i co nie jest mi obojętne, nadal tą wiedzę i umiejętności rozwijam!

- - - 

## Układ wspólnego emitera
  
Przykład żywcem zaczerpnięty z z dokumentacji ngspice'a

![pict01]({{site.url}}{{site.baseurl}}/images/trans01/berkleya.png "common emitter circuit")

Jeden tranzystor NPN, kilka rezystorów, jeden kondensator ... wzmocnienie wyliczone na podstawie schematu to 

```
         rcollector	  3k9	
gain = - ---------- = - ------ = -3.9
          remitter        1k
```

ale na początek:

## Co na wejściu?

![pict02]({{site.url}}{{site.baseurl}}/images/trans01/plot1a.png "input-base plot")

Na wejściu układu podawany jest sygnał sinusoidalny o amplitudzie 1V i częstotliwości 1kHz, punkt pracy tranzystora został tak dobrany aby napięcie ...

```
base = 2.074617e+00
emit = 1.293957e+00
coll = 7.003534e+00

```

## A co na wyjściu?

![pict03]({{site.url}}{{site.baseurl}}/images/trans01/plot2a.png "input-output plot")

Jak widać, na wyjściu sygnał jest wzmocniony(o tym później) i jest odwrócony w fazie o 180 stopni

![pict04]({{site.url}}{{site.baseurl}}/images/trans01/plot5a.png "signal phase plot")

Wzmocnienie układu prezentuje się tak

![pict05]({{site.url}}{{site.baseurl}}/images/trans01/plot3a.png "gain plot")

```
gain = -3.78542e+00

```

A charakterystyka przenoszenia ...

![pict06]({{site.url}}{{site.baseurl}}/images/trans01/plot4a.png "body plot")

### A oto plik użyty do symulacji

```
 Berkeley SPICE3 compatible circuit  
*  
* This circuit contains only Berkeley SPICE3 components.  
*  
* The circuit is an AC coupled transistor amplifier with  
* a sinewave input at node "1", a gain of approximately -3.9,  
* and output on node "coll".  
*  
.tran 1e-5 2e-3 
*  
vcc vcc 0 12.0  
vin 1 0 0.0 ac 1.0 sin(0 1 1k)  
ccouple 1 base 10uF  
rbias1 vcc base 100k 
rbias2 base 0 24k  
q1 coll base emit generic
rcollector vcc coll 3.9k  
remitter emit 0 1k
*
.model generic npn  
*

  
.end


```

## Credits

Oczywiście, treści zamieszczone na tej stronie publikowane są na zasadach licencji typu Open-Source! Można się nimi dzielić, wykorzystywać go do dowolnych celów, również komercyjnych.

Licencjonowanie:

- [CC-BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/ "license text")

Poczuj się wolny! Podziel się tą zawartością z Przyjaciółmi i zawsze pamiętaj o Autorze(ach) tego i innych wpisów(treści) zamieszczonych tutaj.

- - -

_mgr inż. Paweł Sobótka (SQ7EQE)_
