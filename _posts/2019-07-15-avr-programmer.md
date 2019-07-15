---
lang: pl_PL
layout: post
title:  Programatory do układów Atmel'a.
date: 2019-07-15 11:00 UTC 
description: Programatory to w dzisiejszych czasach coś oczywistego. Poniżej krótki przegląd dostępnych projektów dla układów Atmel, począwszy od najprostszych aż do opartych o mikrokontrolery.
image: /images/programmer/programmer.png
author: Paweł Sobótka
tags: [electronics, component, avr, programmer, bsd, dasa, dasa3, usbasp]
comments: true
---

No to? Od czego by tu zacząć? Już wiem! Najprostsze programatory oparte są o dostępne porty w komputerach klasy PC. Takimi portami są złącze drukarkowe równoległe (Centronics), złącze szeregowe RS232, złącze USB. Od momentu zaistnienia na rynku podzespołów elektronicznych firmy Atmel zaistniała konieczność dostarczenia odpowiednich narzędzi, takimi narzędziami są właśnie programatory układów Atmel. O czym tu będę pisać?

**bsd** : chyba najprostszy programator wykorzystujący port równoległy w komputerze. kilka rezystorów, płytka prototypowa, złącze DB25 męskie, złącze AVR-ISP 10 pinowe do podłączenia programowanego układu. Obsługiwany przez avrdude.

**dasa** : programator oparty o port szeregowy, jego konstrukcja wymaga już odrobinę więcej elementów. Również i ten programator jest obsługiwany przez avrdude.

**dasa3** : jest to również programator oparty o port szeregowy i również jak jego poprzednik jest obsługiwany prze program avrdude.

**usbasp** : jest to zaawansowany programator wykorzystujący mikro-kontroler atmega8, atmega88, tiny2313. Komunikacja z komputerem odbywa się poprzez port USB. Programator jest obsługiwany przez program avrdude.

**USBTinyISP** : jest to programator przygotowany do eksperymentów z mikrokontrolerami o pamięci nie większej niż 64K . Ten programator jest również obsługiwany prze program avrdude.

Wszystkie opisane powyżej konstrukcje to projekty open-source. Dotyczy to zarówno schematu ideowego jak i kodu źródłowego.

## Programator bsd

O tym programatorze i pozostałych w następnych częściach opracowania ...

_mgr inż. Paweł Sobótka_
- - - 
