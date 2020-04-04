---
lang: pl
layout: post
title:  Programming? It's not hard!
date: 2019-09-10 12:15 UTC 
description: Programowanie, czyż to nie jest piękne? Język C, klasyka bez którego nawet elektronik nie może sie obejść ...
image: /images/programming/programming-header-picture.png
author: Paweł Sobótka
tags: [programming, C]
comments: true
---

Wbrew pozorom i powszechnie krążącym opiniom, napisanie swojego pierwszego programu w języku C nie jest trudne. Poniżej właśnie taki oto przykład!

```c
include <stdio.h>

int main(void)
{
	char *name = "Your Name";//initalize variable with string "Your Name"
	/*
	variable 'name' is type of pointer to char
	type pointer means it is a some place(address) in memory
	here we don't reserve memory for variable by use function:
	malloc()
	we only initialize and in one step, reserve memmory
	in some cases we need to reserve the variable memory separately!
 	*/
	
	//I have used function printf() to display string on the screen
	printf("%s\n", name);
	
	/*nothing wrong, just main function return 0, 
	that's means it's OK no errors, program ends with SUCCESS!
	*/
	return 0;
}
```
No i jeszcze, materiał wideo z mojego kanału na [Youtube](https://www.youtube.com/channel/UCjkuFdVfKy3tO7i8bCALEBA "YouTube Channel")!

<iframe width="560" height="315" src="https://www.youtube.com/embed/GAOe43iT-RA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Dziękuję i zapraszam ponownie!  
_mgr inż. Paweł Sobótka_
- - - 
