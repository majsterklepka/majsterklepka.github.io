---
lang: pl_PL
layout: post
title:  Cooking?
date: 2019-03-16 3:00 CET 
description: Skrypty w shell, to nic trudnego i co ważne to podstawa pracy Administratora Systemu Linux. Tu, przykład skryptu automatyzującego pracę Bloggera!
image: /images/bash/cooking-conv.png
author: Paweł Sobótka
tags: [scripts, bash, shell, administration, automation]
comments: true
---

Opisanie plików multimedialnych danymi EXIF, IPTC i XMP jest podstawą dbałości o własne interesy. Pod Linuksem wykorzystuje się do tego narzędzie `exiftool`, tu przykład jego użycia

```
#!/bin/sh

if [[ $# -ne 1 ]]; then
    echo 'skrypt wypełnia/uzupełnia metadane w pliku cyfrowym';
    echo 'aby poprawnie użyć, zastosuj się do instrukcji'
    echo;
    echo "Użycie: $0 filename.ext";
    echo;
    echo 'nie podałeś nazwy pliku z rozszerzeniem...' 
    echo 'więc kończę działanie!'
    exit 1;
fi

author="Your Name Here"
copy="©2019 Your Name Here, all rights reserved"

exiftool -lang pl -charset UTF8 \
-author="$author" \
-artist="$author" \
-XMP:Marked=true \
-xmp:copyrightstatus="Public Domain" \
-xmp:UsageTerms="Commercial and uncommercial usage with atributes of the cc-by-sa license" \
-XMP:Owner="$author" \
-copyright="$copy" \
-rights="$copy" \
-xmp-cc:license="http://creativecommons.org/licenses/by-sa/4.0/" \
-colorspace=sRGB \
 "$1";

exit 0;

```

Powyższy skrypty przetwarza pliki graficzne(format PNG i JPEG) i dodaje do nich pewne dane zdefiniowane w skrypcie. Te dane są dodawane do tagów EXIF, IPTC i XMP. Skrypt został specjalnie przygotowany dla formatu PNG, gdyż ten format zapisu plików graficznym nie przyjmuje wszystkich tagów [więcej na...](https://www.sno.phy.queensu.ca/~phil/exiftool/TagNames/PNG.html "PNG Tags Names").
