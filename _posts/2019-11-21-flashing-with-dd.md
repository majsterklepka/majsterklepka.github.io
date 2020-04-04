---
lang: pl
layout: post
title:  Flashing with dd.
date: 2019-11-21 14:15 UTC 
description: Linux, dla mnie to podstawa! Wykształcony na Unix'ie nie widzę siebie z innym systemem operacyjnym niż Linux. Tu, taka drobnostka wgrywanie obrazówsystemu Linux ISO(img) na nośnik wymienny z użyciem polecenia dd.
image: /images/electronics/flashing_with_dd.png
author: Paweł Sobótka
tags: [opensource, electronics, workshop, Linux]
comments: true
---
Z wykształcenia jestem Inżynierem, z pasji również. Moim konikiem jest zrobić coś osobiście, samemu a przy okazji pokazać, że coś umiem. Ukończony studia techniczne z zakresu Fizyki Technicznej na AGH w Krakowie dały mi pewne ugruntowanie już posiadanej wiedzy i umiejętności, reszta to całe lata praktyki i co nie jest mi obojętne, nadal tą wiedzę i umiejętności rozwijam!

Na początek: 
```
man dd
```

## Polecenie dd ze strony podręcznika systemowego man

```
DD(1)                        Polecenia użytkownika                       DD(1)

NAZWA
       dd - konwertuje i kopiuje plik

SKŁADNIA
       dd [OPERATOR]...
       dd OPCJA

OPIS
       Kopiuje plik, konwertując i formatując go zgodnie z operatorami.

       bs=BAJTÓW
              odczytuje i zapisuje BAJTÓW naraz.

       cbs=BAJTÓW
              konwertuje BAJTÓW naraz

       conv=KONW
              konwertuje plik według oddzielonej przecinkami listy symboli

       count=N
              kopiuje jedynie N wejściowych bloków

       ibs=BAJTÓW
              odczytuje BAJTÓW naraz (domyślnie: 512)

       if=PLIK
              Czyta z PLIKU zamiast ze standardowego wejścia

       iflag=FLAGI
              czyta według oddzielonej przecinkami listy symbolów

       obs=BYTES
              zapisuje BAJTÓW naraz (domyślnie: 512)

       of=PLIK
              zapisuje do PLIKU zamiast na standardowe wyjście

       oflag=FLAGI
              zapisuje według oddzielonej przecinkami listy symbolów

       seek=N pomija N bloków o rozmiarze obs na początku wyjścia

       skip=N pomija N bloków o rozmiarze ibs na początku wejścia

       status=POZIOM
              POZIOM  informacji  wypisywanych  na stderr; none wypisuje tylko
              komunikaty  z  błędami,  noxfer  wyłącza  wypisywanie  końcowych
              statystyk   transferu,  progress  pokazuje  okresowe  statystyki
              transferu

       Po   N   i   BAJTACH    mogą    występować    następujące    przyrostki
       zwielokrotniające:  c  =1,  w  =2,  b  =512,  kB  =1000,  K  =1024,  MB
       =1000*1000, M =1024*1024, xM =M, GB =1000*1000*1000, G  =1024*1024*1024
       itd. dla T, P, E, Z, i Y.

       KONW może przyjmować wartości:

       ascii  z EBCDIC do ASCII.

       ebcdic z ASCII do EBCDIC

       ibm    z ASCII do alternatywnego EBCDIC

       block  dopełnia  rekordy  oddzielone znakami nowego wiersza spacjami do
              rozmiaru cbs

       unblock
              zamienia końcowe spacje w rekordach cbs znakiem nowego wiersza

       lcase  zamienia duże litery na małe

       ucase  zamienia małe litery na duże

       sparse próbuje pomijać zamiast zapisywać i  wypisywać  bloki  wejściowe
              NUL

       swab   zamienia miejscami każdą parę bajtów wejściowych

       sync   dopełnia  każdy blok wejściowy bajtami zerowymi (NUL); z opcjami
              block i unblock dopełnia spacjami zamiast NUL

       excl   przerywa, jeśli plik wyjściowy już istnieje

       nocreat
              nie tworzy pliku wyjściowego

       notrunc
              nie przycina pliku wyjściowego

       noerror
              kontynuuje po błędach odczytu

       fdatasync
              fizycznie zapisuje dane pliku wyjściowego przed zakończeniem

       fsync  podobnie, lecz zapisuje także metadane

       Każdy symbol FLAGA może przyjąć wartość:

       append tryb dopisywania (ma sens tylko dla wyjścia, sugeruje się użycie
              conv=notrunc)

       direct używa bezpośredniego wejścia/wyjścia dla danych

       directory
              zwraca błąd w przypadku innym niż katalog

       dsync  używa synchronizowanego wejścia/wyjścia dla danych

       sync   podobnie, lecz także dla metadanych

       fullblock
              gromadzi pełne bloki dla danych (tylko iflag)

       nonblock
              używa asynchronicznego wejścia/wyjścia

       noatime
              nie aktualizuje czasu dostępu

       nocache
              żąda porzucenia bufora. Zobacz też oflag=sync

       noctty nie przypisuje kontrolowanego terminalu z pliku

       nofollow
              nie podąża za dowiązaniami symbolicznymi

       count_bytes
              traktuje "count=N" jako liczbę bajtów (tylko iflag)

       skip_bytes
              traktuje "skip=N" jako liczbę bajtów (tylko iflag)

       seek_bytes
              traktuje "seek=N" jako liczbę bajtów (tylko oflag)

       Wysłanie   sygnału   USR1   do   uruchomionego   procesu  dd,  powoduje
       wyświetlenie  przez  niego  statystyk  wejścia/wyjścia  na  standardowe
       wyjście błędów i wznowienie kopiowania.

       Dostępne opcje:

       --help wyświetla ten tekst i kończy pracę

       --version
              wyświetla informacje o wersji i kończy działanie

AUTOR
       Napisane przez Paula Rubina, Davida MacKenzie i Stuarta Kempa.

ZGŁASZANIE BŁĘDÓW
       Strona       internetowa       z       pomocą       GNU      coreutils:
       <http://www.gnu.org/software/coreutils/>
       Zgłoszenia  błędów  w  tłumaczeniu   dd   proszę   wysyłać   na   adres
       <http://translationproject.org/team/pl.html>

PRAWA AUTORSKIE
       Copyright  ©  2016  Free Software Foundation, Inc. Licencja GPLv3+: GNU
       GPL w wersji 3 lub późniejszej <http://gnu.org/licenses/gpl.html>.
       Jest to wolne oprogramowanie: można je zmieniać i rozpowszechniać.  Nie
       ma ŻADNEJ GWARANCJI, w granicach określonych przez prawo.

ZOBACZ TAKŻE
       Pełna               dokumentacja               na              stronie:
       <http://www.gnu.org/software/coreutils/dd>
       lub lokalnie, za pomocą info '(coreutils) dd invocation'

TŁUMACZENIE
       Autorami polskiego tłumaczenia niniejszej strony  podręcznika  man  są:
       Przemek   Borys   (PTM)  <pborys@dione.ids.pl>,  Wojtek  Kotwica  (PTM)
       <wkotwica@post.pl> i Michał Kułach <michal.kulach@gmail.com>.

       Polskie tłumaczenie jest częścią projektu  manpages-pl;  uwagi,  pomoc,
       zgłaszanie  błędów na stronie http://sourceforge.net/projects/manpages-
       pl/. Jest zgodne z wersją  8.25 oryginału.

GNU coreutils 8.25               styczeń 2016                            DD(1)
```


No właśnie! Tyle teorii, a jak wygląda praktyka?

## Użycie polecenia systemowego powłoki dd.

```
sudo dd bs=4M if=/path/to/your/iso/file/xxx.iso of=/dev/sdb conv=noerror,fsync status=progress
```

Nazwę urządzenia blokowego w systemie Linux sprawdzimy poleceniem powłoki `lsblk`. Należy pamiętać o tym, że dyski fizyczne w nazwie nie posiadają cyfry np `/dev/sda` za to partycje należące do dysku nazywane są jako `/dev/sdaX`, gdzie `X` to numer partycji.

Kopiowanie wykonuje się w ten sposób, że przenosi się bajt za bajtem z obrazu dysku(*.ISO bądź *.img) na dysk np. `/dev/sdb` a nie jak to niejeden raz robi się na partycję `/dev/sdb1`. Przed rozpoczęciem kopiowania nośnik wymienny należy od-montować poleceniem `sudo umount /dev/sdbX`.

No właśnie, oto wynik działania polecenia `lsblk`:

```
NAME                            MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda                               8:0    0 698,7G  0 disk 
├─sda1                            8:1    0   200M  0 part /boot/efi
├─sda2                            8:2    0     1G  0 part /boot
├─sda3                            8:3    0 407,9G  0 part 
│ ├─fedora_localhost--live-swap 253:0    0   7,9G  0 lvm  [SWAP]
│ └─fedora_localhost--live-home 253:1    0   400G  0 lvm  /home
└─sda4                            8:4    0   280G  0 part /
sdb                               8:16   1   7,5G  0 disk 
├─sdb1                            8:17   1   1,8G  0 part /run/media/majsterklepka/Fedora-WS-Live-30-1-2
├─sdb2                            8:18   1   9,8M  0 part 
└─sdb3                            8:19   1  20,5M  0 part 
```

Należy jeszcze pamiętać, aby nośnik wymienny miał nadaną flagę boot dla głównej partycji oraz był sformatowany jako system plików FAT32 lba. Do tego celu można użyć np.: **gparted** bo inaczej przygotowywanie nośnika startowego z ulubioną dystrybucją systemu Linux się nie powiedzie.

## Credits

No i oczywiste stwierdzenie: powyższe instrukcje nie wyjdą na MS Windows, bo to nie Linux!

Jako Grafikę Tytułową wykorzystałem zmodyfikowaną jedną ze stron z aktualnego wydania Swiata Radio (grudzień 2019) po uprzedniej modyfikacji.

Powodzenia!

_mgr inż. Paweł Sobótka (SQ7EQE)_ 
