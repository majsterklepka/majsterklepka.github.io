---
lang: pl
title: Diody - teoria i praktyka cz. III
date: 2019-02-08 3:00 CET 
description: Złącze p-n. Podstawa wsþółczesnej elektroniki. Od momentu odkrycia jego wykorzystanie przyczyniło się do gwałtownego rozwoju wsþółczenej techniki. Ciągle ulepszane, rozwijane i badane. Upowszechnienie się krzemu spowodowało gwałtowny boom sprzętu elektronicznego i obniżenie kosztów. 
image: /images/diodes-post-3/diode-poster-3.png
author: Paweł Sobótka
tag: 'diode, p-n, semiconductor, schematics symbols, theory'
excerpt: Złącze p-n. Podstawa wsþółczesnej elektroniki. Od momentu odkrycia jego wykorzystanie przyczyniło się do gwałtownego rozwoju współczesnej techniki. Ciągle ulepszane, rozwijane i badane. Upowszechnienie się krzemu spowodowało gwałtowny boom sprzętu elektronicznego i obniżenie kosztów.
---

![diody poster 3]({{site.url}}{{site.baseurl}}{{page.image}} "{{page.title}}")

# Złącze p-n, budowa, charakterystyka prądowo-napięciowa.

Zacznijmy od podstaw. Zasada działania przyrządu półprzewodnikowego, a takim jest dioda półprzewodnikowa, oparta jest o zasadę działania złącza p-n, jest to podstawa. Co to jest złącze p-n? 

Złącze p-n składa się z półprzewodnika typu n(jon + elektron)(domieszkowany donorowo) oraz półprzewodnika typu p(jon + dziura)(domieszkowany akceptorowo). W sytuacji, gdy złącze jest niespolaryzowane, w obszarze połączenia tych dwóch półprzewodników,

![złącze p-n]({{site.url}}{{site.baseurl}}/images/diodes-post-3/zlacze-p-n.png "złącze p-n rysunek poglądowy")

swobodne nośniki większościowe dyfundują(przemieszczają się). Jest to spowodowane różnicą koncentracji tychże nośników. Elektrony przemieszczają się do obszaru typu p a dziury do obszaru typu n(stają się wtedy nośnikami mniejszościowymi). Dochodzi tu do rekombinacji z nośnikami większościowymi, czyli do połączenia elektronu z dziurą. W miejscu kontaktu pozostają jedynie  odsłonięte jony domieszek(ujemne akceptorów oraz dodatnie donorów). Te jony wytwarzaj ą pole elektryczne, zapobiegające dalszemu przemieszczaniu się nośników. W miejscu kontaktu powstaje tzw. warstwa zaporowa(nieposiadająca swobodnych nośników). Nieruchomy ładunek dodatni po stronie warstwy n hamuje przepływ dziur z obszaru p, nieruchomy ładunek ujemny z obszaru p, hamuje przepływ elektronów z warstwy n. Efektem jest zatrzymanie przepływu nośników. Jednym z ważnych parametrów jest tzw, napięcie dyfuzyjne. Dla złączy wykonanych z krzemu jest to w granicach 0.6 do 0.8 V. Napięcie dyfuzyjne ma tendencję do zmian wraz ze zmianami temperatury.

# Złącze p-n, polaryzacja złącza

W sytuacji, gdy do złącza zostanie przyłożone napięcie zewnętrzne, to wówczas równowaga złącza zostanie zachwiana:

- w kierunku przewodzenia, plus jest dołączony do obszaru typu p,
- w kierunku zaporowym, plus jest dołączony do obszaru typu n.

![złącze p-n, charakterystyka]({{site.url}}{{site.baseurl}}/images/diodes-post-3/zlacze-p-n-charakterystyka.png "charakterystyka prądowo-napięciowa złącza p-n")

Jak widać na rysunku, w przypadku złącza p-n, wyróżnia się cztery obszary pracy. Gdy napięcie przyłożone do złącza jest mniejsze od napięcia dyfuzyjnego jest to stan zatkania złącza(złącze praktycznie nie przewodzi), gdy napięcie przyłożone do złącza jest większe od napięcia dyfuzyjnego do złącze jest w stanie otwartym. Gdy złącze jest spolaryzowane w kierunku zaporowym i napięcie jest większe od napięcia przebicia, to złącze również nie przewodzi, gdy napięcie jest mniejsze od napięcia przebicia, to prąd gwałtownie wzrasta i, albo złącze ulega uszkodzeniu(przebicie lawinowe) albo zachodzi tu efekt Zenera. 

cdn.

<div class="fb-comments" data-href="https://majsterklepka.github.io/2019/02/08/diody-teoria-i-praktyka-cz-3/" data-width="500" data-numposts="5"></div>

