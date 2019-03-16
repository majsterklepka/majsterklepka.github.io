---
lang: pl_PL
layout: post
title:  Cooking? what's else?
date: 2019-03-16 17:00 CET 
description: Opisanie plików multimedialnych danymi EXIF, IPTC i XMP jest podstawą dbałości o własne interesy. Pod Linuksem wykorzystuje się do tego narzędzie exiftool, tu przykład jego użycia. Przykład na co dzień wykorzystywany podczas publikowania artykułów na blogu.
image: /images/bash/screen-16-03-2019-1.jpg
author: Paweł Sobótka
tags: [scripts, bash, shell, administration, automation]
comments: true
---

No właśnie, tagi... Każdy, nawet robiący amatorsko zdjęcia, wie jak ważne dla jego reputacji jest zamieszczenie wewnątrz pliku danych o zdjęciu, autorze, miejscu, prawach autorskich czy chociażby licencji, nie wspominając o opisie. Tu przykład użycia narzędzia `exiftool` właśnie do tego celu.

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
copy_notice="©2019 Your Name Here, all rights reserved"

exiftool -lang pl -charset UTF8 \
-author="$author" \
-artist="$author" \
-ExifVersion=0230 \
-IPTC:CopyrightNotice="$copy_notice" \
-XMP:Marked=true \
-xmp:copyrightstatus="Public Domain" \
-xmp:UsageTerms="Commercial and uncommercial usage with atributes of the cc-by-sa license" \
-XMP:Owner="$author" \
-copyright="$copy" \
-rights="$copy" \
-xmp-cc:license="http://creativecommons.org/licenses/by-sa/4.0/" \
-city="City" \
-countrycode="PL" -country="POLAND" \
-MakerNote="some descriptions for exp. where picture was done" \
-XMP:CreatorAddress="Place of residence" \
-XMP:CreatorCity="City" \
-XMP:CreatorRegion="region" \
-XMP:CreatorPostalCode="Postal Code" \
-XMP:CreatorCountry="POLAND" \
-XMP:CreatorWorkEmail="Your email" \
-XMP:CreatorWorkURL="Your work website" \
-XMP:Credit="Credit exp. Name of Your Agent" \
-xmp:AuthorsPosition="Street Photographer" \
-XMP:Creator="$author" \
-XMP:CaptionWriter="$author" \
-XMP:CreatorWorkTelephone="Your Phone Number" \
-XMP:LocationShownWorldRegion="Europe" \
-colorspace=sRGB \
 "$1"

exit 0;

```

Powyższy skrypty przetwarza pliki graficzne(format PNG i JPEG) i dodaje do nich pewne dane zdefiniowane w skrypcie. Te dane są dodawane do tagów EXIF, IPTC i XMP.

### Uwaga

Tag `IPTC:CopyrightNotice` wymaga znaków ze zbioru ASCII  
Tag `city` wymaga znaków ze zbioru ASCII 
