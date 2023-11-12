+++
title = '8x8 game of life'
date = 2017-04-04
draft = false
tags = ["code"]
+++

I got an 8x8 display for my Arduino without any plan. After displaying some simple shapes, 
I remembered my [Java-based game of life project](https://github.com/tobyoxborrow/gameoflife) from 2006, 
and had a go at making it run on the 8x8 display.

{{< hero src="20170404_gameoflife.gif" >}}

Due to the limited size the games end very quickly. 
It will detect when the game has ended (everything dying or no further growth) and will reset after a while, 
so it will keep itself active.

[gameoflife-arduino project on GitHub](https://github.com/tobyoxborrow/gameoflife-arduino).

