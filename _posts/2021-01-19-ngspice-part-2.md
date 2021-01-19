---
lang: pl
layout: post
title:  ngspice part 2
date: 2021-01-19 09:00 UTC 
description: Z wykształcenia jestem Inżynierem, z pasji również. Moim konikiem jest zrobić coś osobiście, samemu a przy okazji pokazać, że coś umiem ... 
image: /images/electronics/ngspice-part-2.jpg
author: Paweł Sobótka
tags: [opensource, diy, electronics]
comments: true
---
Z wykształcenia jestem Inżynierem, z pasji również. Moim konikiem jest zrobić coś osobiście, samemu a przy okazji pokazać, że coś umiem. Ukończone studia techniczne z zakresu Fizyki Technicznej na AGH w Krakowie dały mi pewne ugruntowanie już posiadanej wiedzy i umiejętności, reszta to całe lata praktyki i co nie jest mi obojętne, nadal tą wiedzę i umiejętności rozwijam!

- - - 

## Bocznik prądowy, przykład analizy

kilka ważnych wzorów:

```
	Pd = I^2*R [W]

	Vd = R*I [V]

```

Pd - moc strat na rezystorze

Vd - spadek napięcia na rezystorze 

Do symulacji wykorzystano prosty układ, źródło prądowe połączone równolegle z rezystorem,
 poniżej plik z zestawem komend dla ngspice

```
Power Dispose

.dc iin 0 100m 1m
.save @rload[p] v(1)

iin 1 0 dc 0.1
rload 1 0 470e-3

.control
set hcopydevtype=postscript
set hcopypscolor=1
set hcopywidth=600
set hcopyheight=400
run
let pd = @rload[p]
plot pd title " Resistor Power Dispose "
hardcopy pd.ps pd title " Resistor Power Dispose "
let vd = abs(v(1))
plot vd title " Resistor Drop Voltage "
hardcopy vd.ps vd title " Resistor Drop Voltage "
.endc

.end
```

Zestawienie elementów:  
- rload   : 0R470
- isource : 100mA

Oczywiście aby móc podejrzeć zmiany należało zastosować analizę DC, przemiatając źr prądowe w zakresie 0...100mA 


## Co na pokazuje symulator?

![pict01]({{site.url}}{{site.baseurl}}/images/trans01/pd.jpg "power dispose")

- - -

![pict02]({{site.url}}{{site.baseurl}}/images/trans01/vd.jpg "drop voltage")

## Przydatny skrypt w shell'u

```
#!/bin/sh

name="$(basename  -s .ps $1)"

gs -o $name.eps -sDEVICE=eps2write -dEPSCrop $name.ps

gs -sDEVICE=jpeg -dJPEGQ=100 -dNOPAUSE -dBATCH -dEPSCrop -dSAFER -r100 -sOutputFile=$name.jpg $name.eps

```

Ten skrypt użyłem do przygotowania wyjściowych grafik wygenerowanych prze ngspice w formacie Postscript

## Credits

Oczywiście, treści zamieszczone na tej stronie publikowane są na zasadach licencji typu Open-Source! Można się nimi dzielić, wykorzystywać go do dowolnych celów, również komercyjnych.

Licencjonowanie:

- [CC-BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/ "license text")

Poczuj się wolny! Podziel się tą zawartością z Przyjaciółmi i zawsze pamiętaj o Autorze(ach) tego i innych wpisów(treści) zamieszczonych tutaj.

- - -

_mgr inż. Paweł Sobótka (SQ7EQE)_
