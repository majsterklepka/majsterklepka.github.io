---
lang: pl_PL
layout: post
title:  Bash? That's OK! It's script(ing)...
date: 2019-03-15 8:50 CET 
description: Skrypty w shell, to nic trudnego i co ważne to podstawa pracy Administratora Systemu Linux. Tu, przykład skryptu automatyzującego pracę Bloggera1
image: /images/bash/screen-08-38-31-conv.png
author: Paweł Sobótka
tags: [scripts, bash, shell, administration, automation]
comments: true
---

Skrypty, temat prosty a zarazem trudny. Każdy, kto chociaż raz zasiadł przed terminalem komputera z Systemem Linux, wie jak umiejętność pisania skryptów ułatwia i zmniejsza pracochłonność wykonywanych zadań.

## Skrypt

Tu, przykład prostego skryptu automatyzującego pracę Bloggera. Każdy Blogger wie, że materiały multimedialne zamieszczane na stronach bloga wymagają zabezpieczenia. Takim zabezpieczeniem jest np. umieszczenie w danych EXIF informacji o autorze, tytule i adresie URL strony, na której taki plik został opublikowany. Oprócz tego, dobrym rozwiązaniem jest dołączenie napisów do pliku...

```

#!/bin/sh

if [[ $# -ne 1 ]]; then
	echo 'Nie podałeś nazwy pliku!';
	echo "Użycie: $0 nazwa_pliku.ext";
	exit;
fi

title=$(exiftool -s -s -s -title "$1");
width=$(exiftool -s -s -s -imagewidth "$1");
height=$(exiftool -s -s -s -imageheight "$1");
x_poz=$((5*${width}/100));
y_poz=$((10*${height}/100));
font_size=$((4*${height}/100));
font_size_small=$((${font_size}/2));
y_poz_small=$((${y_poz} - ${font_size}/2 - 3));
base=$(basename "$1" .png);

echo "Przetwarzanie $1 ...";

convert "$1" -gravity southwest -family 'Helvetica' \
       -pointsize "$font_size" -fill white -weight Bold \
       -annotate +"$x_poz"+"$y_poz" "$title" \
       -pointsize "$font_size_small" -weight Normal \
       -annotate +"$x_poz"+"$y_poz_small" \
       "user.github.io" "$base-conv.png";

echo "Ukończono przetwarzanie!";
echo "zapisano w $base-conv.png";

exit;


```

Powyższy skrypty przetwarza obrazki PNG i dodaje do nich pewne dane zawarte w danych EXIF. Wcześniej, takie dane muszą być dodane do pliku, o czym będzie w następnym artykule. Skrypt został specjalnie przygotowany na potrzeby tego bloga.
