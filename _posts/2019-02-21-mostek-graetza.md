---
lang: pl
title: Mostek Graetza
date: 2019-02-21 10:00 CET 
description: Mostek diodowy Graetza, układ złożony z czterech diód a jego zastosoaniem jest prostowanie prądu przemiennego. Jest to mostek prostowniczy, czyli prostownik. W tym wpisie właśnie o mostku Graetza.
image: /images/graetz/mostek-graetza.png
author: Paweł Sobótka
tags: [electronics, diodes, GraetzBridge, power-supply, theory]
comments: true
---

Mostek diodowy Graetza, układ złożony z czterech diód a jego zastosoaniem jest prostowanie prądu przemiennego. Jest to mostek prostowniczy, czyli prostownik. W tym wpisie właśnie o mostku Graetza.

## Mostek Graetza

Mostek Graetza jest powszechnie stosowanym subukładem w konstrukcji liniowych i impulsowych zasilaczach i przetwornicach ac/dc. Jednym z jego zastosowań jest zabezpieczenie układu elektronicznego przed niewłaściwą polaryzacją DC.

### Symbol mostka Graetza

Na schematach ideowych można znaleźć takie oto symbole używane do oznaczenia mostka Graetza:

![mostek greatza pict. 1]({{site.url}}{{site.baseurl}}/images/graetz/graetz-bridge.png "symbol stosowany do oznaczenia subukładu mostek Graetza")


![mostek greatza pict. 2]({{site.url}}{{site.baseurl}}/images/graetz/graetz-bridge-alt.png "symbol stosowany do oznaczenia subukładu mostek Graetza, alternatywny")

## Zasada działania

Podając na wejście AC układu mostek Graetza prąd przemienny, w układzie ulega on wyprostowaniu na prąd DC, pulsujący:

![mostek greatza pict. 3]({{site.url}}{{site.baseurl}}/images/graetz/ac-dc-bridge-1.png "Diagram obrazujący zasadę działania mostka Graetza")

W celu zmniejszenia pulsacji, na wyjściu stosuję się dodatkowo kondensatory elektrolityczne o dużej pojemności oraz kondensatory ceramiczne w celu odcięcia(odfiltrowania) składowej w.cz. z napięcia wyjściowego.




