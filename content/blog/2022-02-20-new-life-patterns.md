+++
title = 'New life patterns'
date = 2022-02-20
draft = false
tags = ["code"]
+++

I revisited my arduino project that displayed the game of life on an 8x8 display to be slightly more interesting to watch.
Since it starts with a random grid, a lot of games end very quickly and so the display is "off" more than I'd like while it pauses between games.

The new version will still use a random grid, but now will also mix in pre-configured grids with known plays. 
To start off the pre-configured grids I found some well-known stable or interesting patterns.
I also poked at the pixels myself to come up with a few custom grids of my own.

Updated [gameoflife-arduino project on GitHub](https://github.com/tobyoxborrow/gameoflife-arduino).

