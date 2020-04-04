---
lang: pl
layout: post
title:  Multiwibrator, Jak to działa?
date: 2019-05-25 2:00 UTC 
description: Multiwibrator tranzystorowy jest przykładem generatora relaksacyjnego ... We wpisie przykład wykonanej symulacji.
image: /images/mlw/mlw1.png
author: Paweł Sobótka
tags: [electronics, component, theory]
comments: true
---

## Multiwibrator

Multiwibrator jest przykładem generatora relaksacyjnego. Jest to układ astabilny. Nie będę tu opisywał zasady działania, bo można ją znaleźć np. na [Wikipedii](https://pl.wikipedia.org/wiki/Multiwibrator "Multiwibrator"). Przedstawiam wykonaną prze ze mnie symulację układu, wykonaną za pomocą aplikacji [ngspice](http://ngspice.sourceforge.net/ "ngspice"). Schemat układu:

![pict5]({{site.url}}{{site.baseurl}}/images/mlw/pict5.png)

Na schemacie zaznaczone są węzły(wykorzystałem je do stworzenia pliku z definicjami dla programu ngspice). Podane są również wartości elementów. Poniżej plik [mlw.cir](https://github.com/majsterklepka/hrl/blob/master/spice/mlw.cir "file used for simulation") użyty do symulacji:

```
multiwibrator tranzystorowy

.model QMOD NPN level=2 IC=0.6

V1 1 0 dc 5.0V
Q1 2 3 0 QMOD	
Q2 5 4 0 QMOD
R1 1 2 2.2k 
R2 1 4 100k
R3 1 3 100k
R4 1 5 2.2k
C1 4 2 0.1u
C2 3 5 0.1u

.control
op
tran 5e-6 2e-1 
plot v(2)
plot v(3)
plot v(4)
plot v(3) v(4) 
.endc

.end
```
## Kilka przebiegów...

![pict1]({{site.url}}{{site.baseurl}}/images/mlw/pict1.png) 

![pict2]({{site.url}}{{site.baseurl}}/images/mlw/pict2.png)

![pict3]({{site.url}}{{site.baseurl}}/images/mlw/pict3.png)

![pict4]({{site.url}}{{site.baseurl}}/images/mlw/pict4.png)

![pict6]({{site.url}}{{site.baseurl}}/images/mlw/pict6.png)

No właśnie, zmieniając skalę otrzymujemy:

![pict7]({{site.url}}{{site.baseurl}}/images/mlw/pict7.png)

![pict8]({{site.url}}{{site.baseurl}}/images/mlw/pict8.png)

![pict9]({{site.url}}{{site.baseurl}}/images/mlw/pict9.png)

![pict10]({{site.url}}{{site.baseurl}}/images/mlw/pict10.png)


Teorii nie trzeba nikomu wyjaśniać, jest tyle razy opisana w Internecie. Powyżej przedstawiłem wynik prac symulacyjnych. Układ jest prosty i działający. Po resztę ... zapraszam do Sieci!

_mgr inż. Paweł Sobótka_
- - - 
