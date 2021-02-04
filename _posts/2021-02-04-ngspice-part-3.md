---
lang: pl
layout: post
title:  ngspice part 3
date: 2021-02-04 04:00 UTC 
description: Charakterystyka wyjściowa tranzystora BF214 wykreślona przy użyciu ngspice
image: /images/electronics/ngspice-part-3.jpg
author: Paweł Sobótka
tags: [opensource, diy, electronics]
comments: true
---
Z wykształcenia jestem Inżynierem, z pasji również. Moim konikiem jest zrobić coś osobiście, samemu a przy okazji pokazać, że coś umiem. Ukończone studia techniczne z zakresu Fizyki Technicznej na AGH w Krakowie dały mi pewne ugruntowanie już posiadanej wiedzy i umiejętności, reszta to całe lata praktyki i co nie jest mi obojętne, nadal tą wiedzę i umiejętności rozwijam!

- - - 

## BF214

Jest to bardzo stary tranzystor NPN małej mocy, wielkiej częstotliwości, poniżej zrzut datasheeet:

![pict01]({{site.url}}{{site.baseurl}}/images/trans01/bf214.jpg "datasheet")

Do symulacji wykorzystano prosty układ, schemat połączeń na rysunku:

![pict02]({{site.url}}{{site.baseurl}}/images/trans01/bf214-lab-connection.jpg "lab connection")

Plik sterujący dla programu ngspcie jest poniżej:

```
BF214 charakterystyki wyjsciowe

.model BF214 NPN BF 232 BR 24 IS 2.043e-13 CJE 2.4P CJC 1P TF 0.42N TR 28.9N MJE 0.5 MJC 0.5 VJE 1 VJC 0.6 VAF 50 XTB 3.75 TNOM 27

VCC 2 0 2
IB 0 1 20u
Q1 2 1 0 BF214


.options temp=27 tnom=27
.dc VCC 0 1 0.02 IB 10u 30u 10u
.save @q1[ic]


.control

run
plot @q1[ic]

.endc
```


Oczywiście aby móc podejrzeć zmiany należało zastosować analizę DC, przemiatając źródło prądowe w obwodzie bazy w zakresie 10u - 30u z krokiem 10u oraz napięcie w obwodzie kolektora w zakresie 0 ... 1V.

>Sam układ został zaczerpnięty z książki pt. "SPICE program analizy nieliniowej układów elektronicznych" z serii USE wydawnictwa WNT


## Co na pokazuje symulator?

![pict03]({{site.url}}{{site.baseurl}}/images/trans01/bf214-out.jpg "output characteristic")


>**Uwaga:** na wykresie przebiegi mają tendencję rosnącą, jednak w rzeczywistym układzie jest ona malejąca.

## Credits

Oczywiście, treści zamieszczone na tej stronie publikowane są na zasadach licencji typu Open-Source! Można się nimi dzielić, wykorzystywać go do dowolnych celów, również komercyjnych.

Licencjonowanie:

- [CC-BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/ "license text")

Poczuj się wolny! Podziel się tą zawartością z Przyjaciółmi i zawsze pamiętaj o Autorze(ach) tego i innych wpisów(treści) zamieszczonych tutaj. Autor nie przypisuje sobie wyłącznego autorstwa zamieszczonych tu materiałów. Zawarte treści bez większych trudów można znaleźć w Necie w tej bądź innej postaci, jednak to opracowanie jest wyłączną własnością Autora.

- - -

_mgr inż. Paweł Sobótka (SQ7EQE)_
