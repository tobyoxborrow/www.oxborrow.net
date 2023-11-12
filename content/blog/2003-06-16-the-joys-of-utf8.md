+++
title = 'the joys of UTF8'
date = 2003-06-16
draft = false
tags = []
+++

I've been playing round with [HTML::Template](https://web.archive.org/web/20030621205133/http://html-template.sourceforge.net/) in the hopes 
it would be better than what I currently use, which is an ad-hoc system made by me which works,
but I feel HTML::Template could make my life easier. 
I'm not intending on using it for this site though, 
but for an uber-secret (as in, I've only told maybe 15 people so far) mini-site 
that won't really get used for many months but I'm just itching to have it ready.

I've also learnt the joys of UTF8 (the default character set of GNOME2 and Win2k and probably a few other things by now) 
and how to mix it with websites and MySQL 3x. 
The MySQL secret is, you create the varcars with syntax similar to:

```SQL
CREATE TABLE `name` ( `field` NATIONAL VARCAR(255) );
```

As [described](https://web.archive.org/web/20030622181006/http://www.mysql.com/doc/en/Charset-national.html) in the MySQL Manual...

> In MySQL-4.x and earlier, NCHAR and CHAR were synonymous. ANSI defines NCHAR or NATIONAL CHAR as a way to define that a CHAR column should use some predefined character set. MySQL uses utf8 as that predefined character set.

Thus if you want UTF8, just declare the field NATIONAL. 
From my tests, TEXT fields dont need any special declarations, 
presumably because they are just binary fields and what you put in is what you get out, no behind-the-scenes translations.

[MacIE is being dropped](https://apple.slashdot.org/story/03/06/14/0442228/microsoft-kills-off-mac-ie-blames-safari) 
because Safari (a browser yet to be officially released) is so much better. 
Best covered by [zeldman](https://www.zeldman.com/daily/0603a.shtml#ju1303). 
I find this quite odd since in many ways, MacIE was/is better than WinIE (MacIE 5.0 was very bad, but 5.1+ solved every horrid css/render issue i could notice). 
Funny as their main reason was to do with lack of access to the source code to Apple's OS, so does this mean they'll be putting out a version for Linux :) 
Alas I think not.

And then theres the story that there will be 
[no more standalone versions of WinIE6](https://tech.slashdot.org/story/03/05/31/1650206/ie6-sp1-will-be-last-standalone-version). 
I first ignored the story not quite understanding what this meant. 
Second time i spotted the story it finally hit me. 
Two years from now until IE7. 
We'll be stuck with IE6sp1 as the dominant browser during this time. 
Will CSS/Render bugs be fixed during this time? Unlikely. 
So if you want to be able to change font size for text specified in px... whats you're hope? 
Wait for Windows Longhorn and prey IE7 has resolved the issue 
(after 4 years of development I would sure as heck hope its fixed). 
Again, [zeldman covers it best](https://www.zeldman.com/daily/0603a.shtml#goredbylonghorn). 
While the rest of the browsers have been evolving trying to gain market share, 
Internet Explorer has just remained static... oh sure, 
IE6 brought us great new innovations... 
an image toolbar most design sites disable, 
a media sidebar (wtf?) and one good feature, 
3rd partie cookie blocker 
(which has admididly been a pain for some work related issues with single sites being hosted over multiple servers).

