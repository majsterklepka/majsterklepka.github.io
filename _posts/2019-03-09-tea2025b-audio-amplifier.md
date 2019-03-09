---
lang: pl_PL
layout: post
title: TEA2025B audio amplifier.
date: 2019-03-09 18:00 CET 
description: Wzmacniacz audio oparty o popularny układ TEA2025B. Tu -> implementacja zaczerpnięta z danych katalogowych układu scalonego.
image: /images/tea2025b/board.png
author: Paweł Sobótka
tags: [projects, amplifiers, TEA2025B, electronics]
comments: true
---

Wzmacniacze audio, kto ich nie umie projektować... Układ TEA2025B jest przykładem dosyć starej konstrukcji ale za to jego zastosowanie jest bardzo proste. Może pracować jako układ stereo, bądź mono.

## Schemat ideowy

W projekcie wykorzystano typową implementację, zaczerpniętą z noty katalogowej producenta układu [TEA2025B](http://www.alldatasheet.com/datasheet-pdf/pdf/25316/STMICROELECTRONICS/TEA2025B.html) Układ można kupić np. tu: [link](https://sklep.avt.pl/product/search?query=TEA2025B).

![pict. 1]({{site.url}}{{site.baseurl}}/images/tea2025b/tea2025b_amp.svg.png "schemat ideowy wzmacniacza audio")

### spis elementów:

U1 : TEA2025B w obudowie DIP-16  
R<sub>1</sub> : 1k  
C<sub>1</sub>, C<sub>3</sub>, C<sub>4</sub> : 100u  
C<sub>5</sub>, C<sub>6</sub>, C<sub>7</sub> : 100u  
C<sub>2</sub> : 0,22u
C<sub>8</sub>, C<sub>9</sub> : 0,15u  
J<sub>2</sub>, J<sub>3</sub> : złącze śrubowe raster 5mm podwójne  
J<sub>1</sub> : złącze RCA pojedyncze do druku

Jak widać, spis elementów jest krótki. Sam wzmacniacz powstał na płytce drukowanej, dwustronnej, z metalizacją otworów. Poniżej pliki z rysunkiem płytki. Płytka ma wymiary 45x65 mm. Zamieszczone pliki są w rozdzielczości 300dpi.

### Rysunek płytki PCB

![pict. 2]({{site.url}}{{site.baseurl}}/images/tea2025b/tea2025b_amp-brd.svg.png "Płytka PCB rysunek poglądowy")  

### Układ ścieżek na płytce PCB

![pict. 3]({{site.url}}{{site.baseurl}}/images/tea2025b/tea2025b_amp-F.Cu.svg.png "Płytka PCB ścieżki od strony elementów, odbicie lustrzane")  

Rysunek ścieżek drukowanych płytki PCB, od strony elementów, odbicie lustrzane.

![pict. 4]({{site.url}}{{site.baseurl}}/images/tea2025b/tea2025b_amp-B.Cu.svg.png "Płytka PCB ścieżki od strony spodniej, odbicie lustrzane")  

Rysunek ścieżek drukowanych płytki PCB, od strony spodniej, odbicie lustrzane.

### Rysunki montażowe wzmacniacza audio

![pict. 5]({{site.url}}{{site.baseurl}}/images/tea2025b/tea2025b_amp-F.Fab.svg.png "Płytka PCB rozmieszczenie elementów na płytce")  

Płytka PCB rozmieszczenie elementów na płytce.

![pict. 6]({{site.url}}{{site.baseurl}}/images/tea2025b/tea2025b_amp-PTH-drl_map.ps.png "Płytka PCB szablon wierceń")  

Płytka PCB szablon wierceń.

Wykonanie płytek dwustronnych z metalizacją najlepiej przekazać wyspecjalizowanemu zakładowi a to ze względu na troskę i dbałość o środowisko. Układ nie wymaga szczególnej troski jeśli chodzi o uruchamianie.







