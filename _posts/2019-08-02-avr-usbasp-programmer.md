---
lang: pl_PL
layout: post
title:  Programator AVR USBasp.
date: 2019-08-02 00:01 UTC 
description: Programator USBasp to chyba najpopularniejszy z programatorów dla układów AVR. Wykorzystuje złącza USB jako port do komunikacji z komputerem i złącze ISP jako złącze programowania. Jest to w całości projekt OpenSource.
image: /images/programmer/usbasp.png
author: Paweł Sobótka
tags: [electronics, component, avr, programmer, bsd, dasa, dasa3, usbasp]
comments: true
---

Układ programatora USBasp wykorzystuje mikro-kontroler np. Atmega8 z wgranym firmware. Całość projektu mieści się na niewielkiej płytce drukowanej. Firmware jest dostępne w folderze [usbasp](https://github.com/majsterklepka/avr-programmers/tree/master/usbasp "majsterklepka/avr-propgrammers") w katalogu mojego repozytorium na GitHub'ie.

![picture 1]({{site.url}}{{site.baseurl}}/images/programmer/usbasp-schematic.png "Programator 'USBasp' schemat")

Do projektu zaprojektowałem płytkę drukowaną, wszystko z użyciem programu Kicad, poniżej układ płytki a w katalogu [usbasp](https://github.com/majsterklepka/avr-programmers/tree/master/usbasp "majsterklepka/avr-propgrammers") mojego repozytorium zamieściłem wszystkie pliki produkcyjne

![picture 2]({{site.url}}{{site.baseurl}}/images/programmer/usbasp-board-f.png "Programator 'USBasp' PCB")

![picture 3]({{site.url}}{{site.baseurl}}/images/programmer/usbasp-board-b.png "Programator 'USBasp' PCB")

No i oczywiście, widok 3D projektu:

![picture 4]({{site.url}}{{site.baseurl}}/images/programmer/usbasp-3d-view.png "Programator 'USBasp' PCB 3d view")


A tu, materiały z GitHub'a : [Programmer for AVR](https://github.com/majsterklepka/avr-programmers.git "MajsterKlepka GitHub Account")

No i oczywiście, użycie avrdude z wykorzystaniem tego właśnie programatora:
```
avrdude -c usbasp -p xxx -U flash:w:xxx.hex
```

To na razie tyle! Do zobaczenia!

_mgr inż. Paweł Sobótka_
- - - 
