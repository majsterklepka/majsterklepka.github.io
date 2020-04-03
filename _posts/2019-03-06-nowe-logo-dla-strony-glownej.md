---
lang: pl_PL
layout: post
title: Nowe logo dla strony głównej.
date: 2019-03-06 15:00 CET 
description: Logo, wizerunek firmy. Pierwsze wrażenie jakie wywoła rzutuje na całość spraw i odczuć. Wykorzystanie w relacjach B2B oraz P2P jest powszechne. To Ono decyduje o tym, czy Klient do nas wróci jeszcze raz i czy poleci nas innym.
image: /images/majsterklepka.jpg
author: Paweł Sobótka
tags: [logo, picture, html5, graphics, GIMP, inkscape, WWW, Open Graph]
comments: true
---

Logo..., coś oczywistego i pewnie każdy powie, że umie je zaprojektować. Tu, logo dla mojej [Strony Głównej]({% link index.md %} "majsterklepka.github.io -> Strona Główna"). Po zapoznaniu się z renderowaniem poprzedniej wersji, doszedłem do wniosku, że format kwadratowy będzie korzystniejeszy. Do przygotowania wykorzystałem, jak zwykle zresztą [#GIMP]({{site.url}}{{site.baseurl}}{% link tags/GIMP.md %}), [#inkscape]({{site.url}}{{site.baseurl}}{% link tags/inkscape.md %}) ...

A oto fragment mojego pliku `_config.yml`
```

twitter:
  username: StaryWandal
  card: summary_large_image

```

Według [link](https://www.h3xed.com/web-and-internet/how-to-use-og-image-meta-tag-facebook-reddit "article") proporcje obrazka powinny być 1.91:1 dla [Facebook](https://web.facebook.com/ "Facebook") a dla [Twitter](https://www.twitter.com "Twitter") właściwe proporcje to 2:1 według [link](https://developer.twitter.com/en/docs/tweets/optimize-with-cards/overview/summary-card-with-large-image.html "Twitter Developer Site") oraz 1:1 dla opcji `card: summary`

A to, co nie udaje się z wykorzystaniem [jekyll-seo-tags](https://github.com/jekyll/jekyll-seo-tag "jekyll plugins"), obrazek w proporcjach 1:1.

![pict. 1 logo.jpg]({{site.url}}{{site.baseurl}}/images/logo.jpg "wersja summary o proporcjach 1:1")

Obrazek na Facebook jest powiększany i kadrowany.









