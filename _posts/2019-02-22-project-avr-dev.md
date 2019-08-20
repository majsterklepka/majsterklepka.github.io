---
lang: pl_PL
layout: post
title: Projekt AVR Dev
date: 2019-02-22 7:30 CET 
description: Płytki rozwojowe, to standard w elektronice, tu przykład płytki opartej o układ f-my Atmel ATtiny2313. 
image: /images/avrdev/avrdev.png
author: Paweł Sobótka
tags: [electronics, embededboard, microcontrollers, ATtiny2313,equipment,  gerber]
comments: true
---

Płytki rozwojowe, czy jak kto woli płytki doświadczalne są od lat powszechnie stosowane w elektronice. Tu, projekt oparty o układ ATtiny2313 f-my Atmel. Płytka rozwojowa zaprojektowana z wykorzystaniem programu KiCad >> aplikacji OpenSource.

## Założenia projektu

Celem projektu było przygotowanie platformy do przeprowadzania eksperymentów z wykorzystaniem mikrokontrolerów. Padło na firmę Atmel i jej bardzo popularny układ ATtiny2313.

### Schemat ideowy

![picture 1, schematic sheets]({{site.url}}{{site.baseurl}}/images/avrdev/AVR_Dev.svg.png "Schemat ideowy płytki AVR Dev")

Jak widać, układ jest bardzo prosty, w typowej konfiguracji. Mikrokontroler ATtiny2313, z oscylatorem kwarcowym 8Mhz, programowany poprzez złącze ISP-6, zasilany z zewnętrznego zasilacza(na płytce znajduje się stabilizator napięcia)

### PCB layout

![picture 2, PCB layout AVR Dev]({{site.url}}{{site.baseurl}}/images/avrdev/AVR_Dev-brd.svg.png "Rysunek płytki drukowanej, AVR dev")

A tu: [AVR Dev, pliki projektu]({{site.url}}{{site.baseurl}}/files/AVR_Dev.zip "Pliki projektu: AVR_Dev.zip, AVR dev")

