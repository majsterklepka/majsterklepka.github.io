---
lang: pl_PL
layout: post
title:  Programator AVR BSD.
date: 2019-07-17 00:00 UTC 
description: Programator AVR "bsd" jest chyba najprostrzym układem z możliwych. Można go zbudować na płytce prototypowej. Był początkowo zaprojektowany dla kompilatora "BASCOM".
image: /images/programmer/programmer-bsd.png
author: Paweł Sobótka
tags: [electronics, component, avr, programmer, bsd, dasa, dasa3, usbasp]
comments: true
---

Programator "BSD" to układ tak banalnie prosty,  że jego wykonanie nie powinno sprawiać problemów nawet dziecku. Początkow zaprojektowany na potrzeby kompilatora "BASCOM", potem włączony do programu avrdude. Z czego składa się ten programator? Z dwóch złączy, kilku rezystorów, kawałka laminatu ...

![picture 1]({{site.url}}{{site.baseurl}}/images/programmer/bsd_programmer.png "Programator 'BSD' schemat")

Poniżej dla przypomnienia układ pinów złącza Centronics(LPT):

![picture 2]({{site.url}}{{site.baseurl}}/images/programmer/centronics_pinout.png "Układ pinów złącza 'Centronics' (LPT) - drukarkowego")

A tu, materiały z GitHub'a :

<iframe src="http://github.com/majsterklepka/hrl/tree/master/kicad/programmer" width="100%" ></iframe>

Aha! Zapomniałbym o układzie płytki drukowanej! Oto ona:

![]({{site.url}}{{site.baseurl}}/images/programmer/bsd_programmer-brd.svg.png "Układ płytki drukowanej")

No i oczywiście, użycie avrdude z wykorzystaniem tego własnie programatora:
```
avrdude -c bsd -p xxx -U flash:w:xxx.hex
```

To na razie tyle! Do zobaczenia!

_mgr inż. Paweł Sobótka_
- - - 
