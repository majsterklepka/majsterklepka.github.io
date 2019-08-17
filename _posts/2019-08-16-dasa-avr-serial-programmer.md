---
lang: pl_PL
layout: post
title:  Dasa, AVR serial programmer.
date: 2019-08-16 00:15 UTC 
description: Programator 'dasa', projekt łatwy do powtórzenia, wymagający tylko minimum umiejętności, można go wykonać na zwykłej płytce prototypowej z wykorzystaniem kilkunastu elementów dyskretnych. Dasa - device AVR serial adapter.
image: /images/programmer/dasa-page.png
author: Paweł Sobótka
tags: [electronics, component, avr, programmer, bsd, dasa, dasa3, usbasp]
comments: true
---

Programator 'dasa' (device avr serial adapter) to chyba jeden z prostszych układów. Wykorzystuje on złącze RS232 i kilka elementów dyskretnych. Obsługiwany jest prze program [AVRDUDE](https://www.nongnu.org/avrdude/ "https://www.nongnu.org/avrdude/") (avrdude) i co jest chyba oczywiste, działa pod Linuksem. Poniżej przedstawiam schemat ideowy. Jest on zgodnie z opisem, zaczerpnięty z adresu(publikacji) [RS232_AVR_programmer](http://hackerschicken.eu/electronics/RS232_AVR_programmer.pdf "programatory wykorzystujące złącze RS232, publikacja elektroniczna"), opracowanym przeze mnie(w publikacji schematy są odrobinę nieczytelne). Sam układ można zbudować na płytce prototypowej, nie ma konieczności przygotowywania płytki drukowanej. Do programowania wymagany jest jeden wolny port RS232 w komputerze, który można przygotować np. przy pomocy układów FTDI np. FT232RL -> sam ten układ również może służyć za programator i również jest obsługiwany przez oprogramowanie AVRDUDE dostępne nie tylko pod Linuksem.

![picture 1]({{site.url}}{{site.baseurl}}/images/programmer/dasa.png "Programator 'dasa' schemat")

Do projektu zaprojektowałem płytkę drukowaną, wszystko z użyciem programu Kicad, poniżej układ płytki a w katalogu [majsterklepka/avr-programmers/dasa](https://github.com/majsterklepka/avr-programmers/tree/master/dasa "majsterklepka/avr-programmers") mojego repozytorium zamieściłem wszystkie pliki produkcyjne

![picture 2]({{site.url}}{{site.baseurl}}/images/programmer/dasa-brd.png "Programator 'dasa' PCB")

Rozmieszczenie elementów na płytce drukowanej przedstawia rysunek:

![picture 3]({{site.url}}{{site.baseurl}}/images/programmer/dasa-f_fab.png "Programator 'dasa' rozmieszczenie elementów na płytce drukowanej")

Oczywiście, tym programatorem można również i programować popularne Arduino a po drobnych przeróbka i modyfikacji oprogramowania  [AVRDUDE](https://www.nongnu.org/avrdude/ "https://www.nongnu.org/avrdude/") również i procesory z rodziny stm32.

A tu, materiały z GitHub'a : [Programmer for AVR](https://github.com/majsterklepka/avr-programmers.git "MajsterKlepka GitHub Account")

No i oczywiście, przykład użycia `avrdude` z wykorzystaniem tego właśnie programatora:
```
avrdude -c dasa -p xxx -U flash:w:xxx.hex
```

To na razie tyle! Do zobaczenia!

_mgr inż. Paweł Sobótka_
- - - 
