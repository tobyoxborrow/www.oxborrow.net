+++
title = 'ogg to mp3'
date = 2003-10-22
draft = false
tags = ["code"]
+++

There are quite a few MP3->OGG converters, but I could find no ideal OGG->MP3 converters. 
Fortunatly, most of my music I have the original CDs for, so reripping to MP3 to put on 
the iPod wasnt such a big deal (with iTunes even less of a deal, one click, 
copied from CD to my computer, one more click and it's on the iPod). 
But I have some OGGs that I don't have the original source for, 
namely UT2k3's soundtrack which was provided as OGG on the CDs, 
then there's music freely available by 
[Pajama Crisis](https://web.archive.org/web/20031121090336/http://pajamacrisis.net/)
and that Swedish band I forget. 
Thus, I wrote a Perl script to do the hard work of converting each one for me.

It goes something like this...

- ogginfo to get the bitrate and tags (title, album etc)
- oggdec to decode to WAV
- lame to encode to MP3, using ABR (average bitrate, the same method used by ogg) and the id3v1/2 tags

You too can enjoy the wonders of 
{{< resource text="ogg2mp3.pl" src="ogg2mp3_pl.txt" >}}. Requires vorbis-tools and lame.

And speaking of iTunes, as far as I'm concerned it's very nifty. 
It's ability to manage multiple id3 tags beats all the shareware apps I've tried.
Plus having auto complete when filling in tags helps reduce typos. 
Since the iPod relys on the tags so much, it's immensely usful. 
And then you can create smart playlists, with SQL like expressions, 
which I can plonk onto the iPod (they dont stay smart on the iPod, 
they only update when you sync, which is a shame). And that search 
gizmo in the top right is hella useful (not to mention damn smart).

