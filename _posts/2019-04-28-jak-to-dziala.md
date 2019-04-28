---
lang: pl_PL
layout: post
title:  Jak to działa?
date: 2019-04-28 13:00 UTC 
description: Prawidłowa konfiguracja ścieżek dostępu do plików nagłówkowych, oraz zdefiniowanie bibliotek do linkowania w projekcie jest niezbędnym elementem wymaganym do tego, aby móc zbudować jakąkolwiek, nawet najprostszą aplikację. Na przykładzie środowiska IDE Eclipse zaprezentuję, jak to działa?
image: /images/eclipse/img_eclipse_3.png
author: Paweł Sobótka
tags: [C, tools, programming, Eclipse, IDE]
comments: true
---

{{page.description}}

## IDE Eclipse

**I**ntegrated **D**eveloped **E**nvironment - zintegrowane środowisko programistyczne, jest to narzędzie, kombajn storzony tylko po to(jak niektórzy twierdzą), aby mocno zdenerwować Programistów. Tak naprawdę, to bardzo użyteczne narzędzie, ze zbioru aplikacji użytkowych. Bardzo popularnym przykładem tego typu narzędzia jest [IDE Eclipse](https://www.eclispe.org "IDE Eclipse"). Co to jest tak naprawdę, IDE Eclipse ... ? Stworzone przez Programistów, dla Programistów, skalowalne, rozszerzalne i wszechstronnie konfigurowalne ... no i? Odrobinę za ciężkie środowisko do tworzenia aplikacji, chyba w każdym języku programowania. Standardowo wchodzące w skład praktycznie każdej dystrybucji systemu [#Linux]( {{site.url}}{{site.baseurl}}{% link tags/linux.md %} ).

Do prawidłowego przeprowadzenia procesu budowania jakiejkolwiek aplikacji w tym właśnie IDE, niezbędne jest poprawne skonfigurowanie tego wlaśnie środowiska. Co, więc należy zrobić, aby budowanie pakietu zakończyło się sukcesem?

Należy:

- skonfigurować ściezki dostępu do plików nagłówkowych
- zdefiniować biblioteki do linkowania
- poprawie ustawić niezbędne przez te biblioteki flagi kompilatora
- właściwie wybrać kompilator i środowisko budowania
- prawidłowo skonfigurować zależne projekty  
i wiele innych ...

## Przykład, aplikacja napisana z wykorzystaniem GUI opartym o GTK+ oraz biblioteki libxml2

Obie biblioteki posiadają swoje własne środowikso konfiguracji kompilatora. Dla biblioteki [GTK+](https://www.gtk.org/ "GTK+") jest to polecenie `pkg-config`, a dla biblioteki [libxml2](https://xmlsoft.org/ "libxml2 library") jest to polecenie `xml2-config`.

Wydając polecenie: `pkg-config --cflags --libs gtk+-3.0` w oknie terminala otrzymujemy infrormację jakie są ścieżki dostępu do plików nagłówkowych, oraz jakie biblioteki są wymagane aby aplikacja wykorzystująca to właśnie GUI mogła być zbudowana i tym samym działać.

![eclipse screenshot No. 3]({{site.url}}{{site.baseurl}}/images/eclipse/img_eclipse_12.png "eclipse screenshot No. 3")

Zaznaczone na zielono dane to właście ścieżki dostępu do plików nagłówkowych, definicje bibliotek oraz flag niezbędnych do prawidłowego budowania aplikacji... ale najpierw: Projekt > Właściwości > C/C++ Build > Ustawienia .

![eclipse screenshot No. 8]({{site.url}}{{site.baseurl}}/images/eclipse/img_eclipse_5.png "eclipse screenshot No. 8")

![eclipse screenshot No. 9]({{site.url}}{{site.baseurl}}/images/eclipse/img_eclipse_6.png "eclipse screenshot No. 9")

![eclipse screenshot No. 10]({{site.url}}{{site.baseurl}}/images/eclipse/img_eclipse_7.png "eclipse screenshot No. 10")

![eclipse screenshot No. 11]({{site.url}}{{site.baseurl}}/images/eclipse/img_eclipse_8.png "eclipse screenshot No. 11")

## Konfigurowanie

Wynik działania poleceń `pkg-config --cflags --libs gtk+-3.0` i `xml2-config --cflags --libs` 

![eclipse screenshot No. 3]({{site.url}}{{site.baseurl}}/images/eclipse/img_eclipse_12.png "eclipse screenshot No. 3")

![eclipse screenshot No. 5]({{site.url}}{{site.baseurl}}/images/eclipse/img_eclipse_2.png "eclipse screenshot No. 5")

kopiujemy do następujących pól w ustawieniach projektu

![eclipse screenshot No. 12]({{site.url}}{{site.baseurl}}/images/eclipse/img_eclipse_9.png "eclipse screenshot No. 12")

![eclipse screenshot No. 1]({{site.url}}{{site.baseurl}}/images/eclipse/img_eclipse_10.png "eclipse screenshot No. 1")

![eclipse screenshot No. 2]({{site.url}}{{site.baseurl}}/images/eclipse/img_eclipse_9.png "eclipse screenshot No. 2")

 
## Krótki materiał wideo

<iframe width="560" height="315" src="https://www.youtube.com/embed/JukROD3I1N8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>



_mgr inż. Paweł Sobótka_
- - - 
