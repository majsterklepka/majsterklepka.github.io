---
lang: pl_PL
layout: post
title:  Octave? What is wrong(with You)?
date: 2019-12-12 0:15 UTC 
description: Wszyscy chwalą się tym, co umieją, ja też tak robię. Tu, część mojego Warsztatu Pracy ... Oprogramownaie Naukowo-Inżynierskie. Drogie, niedostępne i jakże trudne i niewdzięczne w użyciu. 
image: /images/electronics/octave-what-is-wrong.png
author: Paweł Sobótka
tags: [opensource, workshop, Linux]
comments: true
---
Z wykształcenia jestem Inżynierem, z pasji również. Moim konikiem jest zrobić coś osobiście, samemu a przy okazji pokazać, że coś umiem. Ukończone studia techniczne z zakresu Fizyki Technicznej na AGH w Krakowie dały mi pewne ugruntowanie już posiadanej wiedzy i umiejętności, reszta to całe lata praktyki i co nie jest mi obojętne, nadal tą wiedzę i umiejętności rozwijam!

Dla moich młodszych Kolegów, Fizyków ... Przykład wzięty z podręcznika GNU Octave, która podobnie jak [#Linux]({{site.url}}{{site.baseurl}}{% link tags/linux.md %}) jest Wolnym Oprogramowaniem, jak widać za czas poświęcony lekcji powtórkowej otrzymałem zgrabny wykresik funkcji sin(x), wykresik zapisałem jako obrazek png no i można go jeszcze wydrukować, ale z tego co wiem, na moim wydziale preferuje się wersję elektroniczną, policzmy ile im zabrałem: 

- za donos min 2000 euro
- nagroda dla uczciwego obywatela 5000 PLN
- sąd, prokurator i adwokat też nie zarobił

a oprócz tego jest to całkowicie legalne!

## Scrypt

Poniżej załączam kod źródłowy skryptu, użyty do wygenerowania tytułowego obrazu:

```

fig = figure();
x = -10:0.1:10;

plot(x, sin(x));

xlabel("x");
ylabel("sin(x)");
title("Simple 2-D Plot");

saveas(fig, "fig1.png", "png");

```

Oczywiście, tytułowy obrazek nie wyglądał by tak gdyby nie kilka sztuczek zrobionych w GIMP'ie! Ale to już inna Bajka(dla Dorosłych)! a tu: [link]({{site.url}}{{site.baseurl}}{% link images/electronics/fig1.png %} "Simple 2-D Plot") jest tytułowy wykres do pobrania.

## Credits

Tym programem ponad 17 lat temu wykonałem kilkanaście obliczeń i kilka wykresów do mojej pracy magisterskiej i on nadal jest, dołączany jako baza do każdej dystrybucji Linux'a i jak lata temu, tak i dzisiaj jest za przysłowiowe "DZIĘKUJĘ!" Skąd taki post? Pocztą pantoflową doszło do mnie, że przed świętami odbyła się kontrola legalności oprogramowania w moim Akademiku "Hajduczek" i jak zwykle, tak i teraz jest kilka trafień.

No i oczywiste stwierdzenie: powyższe instrukcje nie wyjdą( w zasadzie )  na MS Windows, bo to nie Linux!

Podczas przygotowania wpisu korzystałem z podręcznika systemowego man w systemie Linux, strony systemu infotexi. Zanim walniesz jakąś głupotę, że się nie da, sprawdź tam! Polecam również zasoby Internetu. 

Stara, dobra zasada: kto szuka nie błądzi! 

A przy okazji, w dobie braku zajęć domowych dla Milusińskich: Ćwiczenie czyni Mistrza!

Powodzenia!

_mgr inż. Paweł Sobótka (SQ7EQE)_ 
