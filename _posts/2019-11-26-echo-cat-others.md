---
lang: pl_PL
layout: post
title:  Echo cat & others.
date: 2019-11-26 12:15 UTC 
description: Używanie poleceń powłoki systemowej pozwala zaoszczędzić mnóstwo czasu. Przykładem takich poleceń są przekierowania > oraz >> . W krótkim materiale właśnie o tych przekierowaniach. 
image: /images/electronics/bash_and_others.png
author: Paweł Sobótka
tags: [opensource, workshop, Linux]
comments: true
---
Z wykształcenia jestem Inżynierem, z pasji również. Moim konikiem jest zrobić coś osobiście, samemu a przy okazji pokazać, że coś umiem. Ukończony studia techniczne z zakresu Fizyki Technicznej na AGH w Krakowie dały mi pewne ugruntowanie już posiadanej wiedzy i umiejętności, reszta to całe lata praktyki i co nie jest mi obojętne, nadal tą wiedzę i umiejętności rozwijam!

Na początek: 
```
man echo 
```

## Polecenie echo ze strony podręcznika systemowego man

```
ECHO(1)                      Polecenia użytkownika                     ECHO(1)

NAZWA
       echo - wyświetla wiersz tekstu

SKŁADNIA
       echo [KRÓTKA-OPCJA]... [NAPIS]...
       echo DŁUGA-OPCJA

OPIS
       Wyświetla NAPIS(Y) na standardowe wyjście.

       -n     nie wypisuje kończącego znaku nowego wiersza

       -e     włącza interpretowania sekwencji specjalnych z ukośnikiem

       -E     wyłącza   interpretowanie  sekwencji  specjalnych  z  ukośnikiem
              (domyślnie)

       --help wyświetla ten tekst i kończy pracę

       --version
              wyświetla informacje o wersji i kończy działanie

...

AUTOR
       Napisane przez Briana Foxa i Cheta Rameya.

ZGŁASZANIE BŁĘDÓW
       Strona       internetowa       z       pomocą       GNU      coreutils:
       <http://www.gnu.org/software/coreutils/>
       Zgłoszenia  błędów  w  tłumaczeniu  echo  proszę   wysyłać   na   adres
       <http://translationproject.org/team/pl.html>

PRAWA AUTORSKIE
       Copyright  ©  2016  Free Software Foundation, Inc. Licencja GPLv3+: GNU
       GPL w wersji 3 lub późniejszej <http://gnu.org/licenses/gpl.html>.
       Jest to wolne oprogramowanie: można je zmieniać i rozpowszechniać.  Nie
       ma ŻADNEJ GWARANCJI, w granicach określonych przez prawo.

ZOBACZ TAKŻE
       Pełna               dokumentacja               na              stronie:
       <http://www.gnu.org/software/coreutils/echo>
       lub lokalnie, za pomocą info '(coreutils) echo invocation'

TŁUMACZENIE
       Autorami polskiego tłumaczenia niniejszej strony  podręcznika  man  są:
       Przemek   Borys   (PTM)  <pborys@dione.ids.pl>,  Wojtek  Kotwica  (PTM)
       <wkotwica@post.pl> i Michał Kułach <michal.kulach@gmail.com>.

       Polskie tłumaczenie jest częścią projektu  manpages-pl;  uwagi,  pomoc,
       zgłaszanie  błędów na stronie http://sourceforge.net/projects/manpages-
       pl/. Jest zgodne z wersją  8.25 oryginału.

GNU coreutils 8.25               styczeń 2016                          ECHO(1)

```

A teraz:

```
man cat
```

## Polecenie cat ze strony podręcznika systemowego man

```
CAT(1)                       Polecenia użytkownika                      CAT(1)

NAZWA
       cat - łączy pliki i wypisuje je na standardowe wyjście

SKŁADNIA
       cat [OPCJA]... [PLIK]...

OPIS
       Łączy PLIK(I) na standardowe wyjście.

       Jeśli  nie  podano  PLIKU  lub  jako  PLIK  podano -, czyta standardowe
       wejście.

       -A, --show-all
              równoważne -vET

       -b, --number-nonblank
              numeruje niepuste linie wyjścia, nadpisując -n

       -e     równoważne -vE

       -E, --show-ends
              wyświetla $ na końcu każdego wiersza

       -n, --number
              numeruje wszystkie wiersze wyjścia

       -s, --squeeze-blank
              zastępuje powielone puste wiersze jednym

       -t     równoważne -vT

       -T, --show-tabs
              wyświetla znaki tabulacji jako ^I

       -u     (ignorowana)

       -v, --show-nonprinting
              używa notacji ^ i M-, z wyjątkiem LFD i TAB

       --help wyświetla ten tekst i kończy pracę

       --version
              wyświetla informacje o wersji i kończy działanie

PRZYKŁADY
       cat f - g
              Wyświetla zawartość: pliku "f", następnie standardowego wyjścia,
              na końcu pliku "g".

       cat    Kopiuje standardowe wejście na standardowe wyjście.

AUTOR
       Napisane przez Torbjorna Granlunda i Richarda M. Stallmana.

ZGŁASZANIE BŁĘDÓW
       Strona       internetowa       z       pomocą       GNU      coreutils:
       <http://www.gnu.org/software/coreutils/>
       Zgłoszenia  błędów  w  tłumaczeniu  cat   proszę   wysyłać   na   adres
       <http://translationproject.org/team/pl.html>

PRAWA AUTORSKIE
       Copyright  ©  2016  Free Software Foundation, Inc. Licencja GPLv3+: GNU
       GPL w wersji 3 lub późniejszej <http://gnu.org/licenses/gpl.html>.
       Jest to wolne oprogramowanie: można je zmieniać i rozpowszechniać.  Nie
       ma ŻADNEJ GWARANCJI, w granicach określonych przez prawo.

ZOBACZ TAKŻE
       tac(1)

       Pełna               dokumentacja               na              stronie:
       <http://www.gnu.org/software/coreutils/cat>
       lub lokalnie, za pomocą info '(coreutils) cat invocation'

TŁUMACZENIE
       Autorami polskiego tłumaczenia niniejszej strony  podręcznika  man  są:
       Wojtek    Kotwica    (PTM)    <wkotwica@post.pl>    i   Michał   Kułach
       <michal.kulach@gmail.com>.

       Polskie tłumaczenie jest częścią projektu  manpages-pl;  uwagi,  pomoc,
       zgłaszanie  błędów na stronie http://sourceforge.net/projects/manpages-
       pl/. Jest zgodne z wersją  8.25 oryginału.

GNU coreutils 8.25               styczeń 2016                           CAT(1)
```

## A teraz użycie...

```
[majster01 ~]$ echo 'pawel' > test.1
[majster01 ~]$ cat test.1
pawel
```

```
[majster01 ~]$ echo 'piotr' >> test.1
[majster01 ~]$ cat test.1
pawel
piotr
```

```
[majster01 ~]$ > test.1
[majster01 ~]$ cat test.1
[majster01 ~]$
```

## Credits

No i oczywiste stwierdzenie: powyższe instrukcje nie wyjdą na MS Windows, bo to nie Linux!

Podczas przygotowania wpisu korzystałem z podręcznika systemowego man w systemie Linux. Zanim walniesz jakąś głupotę, że się nie da, sprawdź tam! Polecam również zasoby Internetu. 

Stara, dobra zasada: kto szuka nie błądzi! 

A przy okazji, w dobie braku zajęć domowych dla Milusińskich: Ćwiczenie czyni Mistrza!

Powodzenia!

_mgr inż. Paweł Sobótka (SQ7EQE)_ 
