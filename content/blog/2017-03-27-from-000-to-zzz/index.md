+++
title = 'From 000 to ZZZ'
date = 2017-03-27
draft = false
tags = ["code"]
+++

So there's this kids app Shopkins Chef Club that uses barcodes on physical toys (purchased separately) to unlock characters in the app.

I don't really know the value of unlocking the characters, that is not so important to me. 
When I saw the functionality I assumed it should be possible to enumerate the code space with some code.
This was just for fun to try out some things I've not worked with much (barcodes and GUIs).

I found some example barcodes online and scanned them with a barcode scanner app to see what value was stored. 
After trying a few I noticed they use the format [a-zA-Z0-9]{3}. 
I guess since they have to print the code on small physical toys 
they didn't have the luxury to use longer codes with more possible combinations.

This project displays a window on a computer screen that will show codes one after another, slideshow style. 
It cycles from 000 to ZZZ. 

{{< hero src="20170327_screenshot.png" class="borderless" >}}

A separate device is pointed at the computer displaying the codes with the ChefClub app loaded and in its scanning mode.

{{< hero src="20170327_photo_m.jpg" >}}

It is hardly practical since the search space contains over 200,000 codes and the app requires about 1 second to recognise a code. 
It would take more than two days to verify every code at best. 
In reality, the process needs to be monitored by someone to stop when a code is valid and start again after clearing the message in the app. 
Requiring a human operator means it'll require closer to a week.

[chefcodes project on GitHub](https://github.com/tobyoxborrow/chefcodes).

