---
lang: pl
layout: post
title:  Connectors.
date: 2019-07-22 03:00 UTC 
description: Złącza, porty ... Każdy przecież komputer posiada złącza peryferyjne i to właśnie te złącza wykorzystano przy konstruowaniu programatorów. RS232, Centronics, LPT, czy nawet złącze AVR-ISP są na tyle popularne i zapomniane a jakże są użyteczne w pracowni Radioamatora.
image: /images/programmer/connectors.png
author: Paweł Sobótka
tags: [electronics, component, avr, programmer,rs232, centronics, avr-isp]
comments: true
---

## Centronics

Opisane w poprzedni poście [Programator bsd]({% post_url 2019-07-17-avr-bsd-programmer %} "programator bsd") złącze Centronics

![picture 1]({{site.url}}{{site.baseurl}}/images/programmer/centronics_pinout.png "Układ pinów złącza 'Centronics' (LPT) - drukarkowego")

chyba najstarsze i najbardziej popularne złącze, interfejs w komputerze. Każdy komputer kiedyś je posiadał, powszechnie wykorzystywane do komunikacji z programatorami, złącze równoległe, port równoległy i co dalej ... ? Ano, złącze RS232.

## RS232

port szeregowy, nadal powszechnie używany w technice komputerowej, powszechnie używany w biznesie(drukarki fiskalne, terminale kasowe, skanery kasowe, wagi). W pracowni Radioamatora ma równie powszechne zastosowanie, programatory, akwizycja danych, LAN

![picture 2]({{site.url}}{{site.baseurl}}/images/programmer/rs232_db9_pinout.png "Układ pinów złącza RS232 - szeregowego")

no i wreszcie, temat cyklu:

## AVR-ISP

Zaprojektowany na potrzeby swoich mikrokontrolerów, przez firmę Atmel port, występujący w dwóch układach, tu moja wersja oparta o projekt programatora USB-asp ...

![picture 3]({{site.url}}{{site.baseurl}}/images/programmer/avr-isp.png "Układ pinów złącza AVR-ISP - złącza do programowania układów AVR")

Nie jest to proste i przejrzyste, zwłaszcza gdy jest w jednym miejscu??!!

To na razie tyle! Do zobaczenia!

_mgr inż. Paweł Sobótka_
- - - 
