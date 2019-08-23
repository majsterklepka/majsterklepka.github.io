---
lang: pl_PL
layout: post
title:  Dasa3, AVR serial programmer.
date: 2019-08-23 00:15 UTC 
description: Programator 'dasa', projekt łatwy do powtórzenia, wymagający tylko minimum umiejętności, tu wersja znana jako 'dasa3'. Ten układ jest obsługiwany przez oprogramowanie **AVRDUDE**.
image: /images/programmer/dasa-3-page.png
author: Paweł Sobótka
tags: [electronics, avr, programmer, dasa, dasa3, avrdude, gerber]
comments: true
---

Na rysunku poniżej, schemat ideowy programatora **dasa3**. Oczywiście, ten programator współpracuje z oprogramowaniem [AVRDUDE](https://www.nongnu.org/avrdude/ "https://www.nongnu.org/avrdude/"), podobnie jak i pozostałe układy, opisane w poprzednich wpisach [#programmer]({% link tags/programmer.md %})

![picture 1]({{site.url}}{{site.baseurl}}/images/programmer/dasa-3.png "Programator 'dasa3' schemat ideowy")
Do projektu zaprojektowałem płytkę drukowaną, nie jest ona wymagana bo programator można zbudować na płytce prototypowej, na rysunku poniżej układ płytki, a w katalogu [odnośnik](https://github.com/majsterklepka/avr-programmers/tree/master/dasa3 "majsterklepka >> avr-programmers >> dasa3") mojego repozytorium zamieściłem wszystkie pliki produkcyjne. Pliki zostały przygotowane z użycie programu [KiCad](http://http://www.kicad-pcb.org/ "KiCad, Open Source EDA software"). Pliki produkcyjne, można wysłać przez Internet np to firmy produkującej płytki PCB, niektóre firmy z tej branży akceptują również i pliki programu KiCad, inne tylko w formacie [#gerber]({% link tags/gerber.md%} ). W każdym razie, zalecam dokładne zapoznanie się z instrukcjami dla składających zamówienie, jakie są zamieszczane na stronach tych podmiotów.

![picture 2]({{site.url}}{{site.baseurl}}/images/programmer/dasa-3-brd.png "Programator 'dasa3' PCB")

Rozmieszczenie elementów na płytce drukowanej przedstawia rysunek:

![picture 3]({{site.url}}{{site.baseurl}}/images/programmer/dasa-3-f_fab.png "Programator 'dasa3' rozmieszczenie elementów na płytce drukowanej")

Oczywiście, i tym programatorem można również programować popularne [Arduino](https://www.arduino.cc/ "Arduino development board, Home Page"). A tu, materiały z GitHub'a : [Programmer for AVR](https://github.com/majsterklepka/avr-programmers.git "https://github.com/majsterklepka/avr-programmers.git") dostępne dla każdego bez żadnych ograniczeń.

No i oczywiście, przykład użycia `avrdude` z wykorzystaniem tego właśnie programatora:
```
avrdude -c dasa3 -p xxx -U flash:w:xxx.hex
```
To na razie tyle! Do zobaczenia!

_mgr inż. Paweł Sobótka_
- - - 
