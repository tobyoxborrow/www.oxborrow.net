+++
title = '6 days left'
date = 2002-11-30
draft = false
tags = []
+++

{{< inset src="ringu.png" >}}

I must say, [Ring](https://www.imdb.com/title/tt0178868/) (Ringu) is an excellent film. 
The sort of horror that actually works, not a drop of blood, pure thriller. 
The film, in a nutshell is about a videotape, 
those who watched it would then have 7 days to live (What I assume is scared to death). 
A journalist investigating the story watches the tape and the story begins as she attempts
to solve the mystery of the tape before her time is up.

I attempted to watch the extras of my Fellowship of the Ring DVD on my laptop in WinDVD 
which came with it and realised it was region locked to Region 1 (I'd wasted my 5 changes). 
I thought all was lost, as I'd read the firmware couldn't be 'fixed' to remove the 'bug'
where it can't read DVDs from other regions. Then I gave xine a try and although I 
couldn't get visual output (another issue to do with the i810 hardware) I could get audio, 
this was very promising. So I grabbed myself a copy of 
[VideoLan Server](https://www.videolan.org/vlc/streaming.html) and set it up on nikita, and 
[VideoLan Client](https://www.videolan.org/vlc/) on wataru 
(to attempt to view the dvd from a computer that has working video). 
And what do you know... it bloody worked and all. Either it was never hardware locked and WinDVD 
is being lame, or some funky mojo is going on in libdvdread and libdvdcss. 
I was quite impressed as to how VideoLan could give the clients the same choice of subtitles 
and audio streams as if they were playing it from their local drive.

Got myself a little note app, I feel I need to keep a to-do list on screen so I get things done. 
Otherwise I'll end up playing games all day. Not sure why thats a bad thing.

After hunting through [freshmeat](https://web.archive.org/web/20030108231436/http://freshmeat.net/)</a>
for a suitable candidate I stumbled upon 
[xpad](https://web.archive.org/web/20030210182742/http://xpad.sourceforge.net/), nice and light, few dependencies. 
Configuring colour is a bit odd, and doesn't seem to remember it, but it keeps my text so I'm not too bothered. 
While looking I found 
[Molasses](https://web.archive.org/web/20030108231436/http://sourceforge.net/projects/gnome-molasses/),
I'm sorry bse, but it didn't have a screenshot, so I clearly had no choice but to overlook it.

Mozilla 1.2 was released, although I've got a feeling 1.2.1 will get released soon. 
Other than some Javascript bug, it's great to have it released to pass onto the masses 
link prefetching and the XML tree rendering. If you're using 1.2 or greater,
you can see this in action by viewing ~~my RDF~~.

Found some other nifty things with Mozilla recently, available in older versions, 
View | Show/Hide | Site Navigation Bar | Show Always (or Show Only As Needed) and you get a new toolbar,
this reads special `<link rel="">` tags (rel="prev", rel="next", first, last, top, up, search, help). 
Very few sites make use of these tags, but they've been round a long time. Mozilla isn't the only 
browser to support them. I noticed Opera 7 and Lynx supports them as well. 
I've put them into ~~my Photolog~~ (I'll soon add them to my blog), 
so if you wanna test the feature out, go into one of the categories.

The other neat trick was Bookmark keywords. 
Create a bookmark to ~~www[.]oxborrow[.]net/search.pl?k=%s~~, 
then enter into "Keyword" something like "oxo". Now you can enter (for example) "oxo ringu" into the URL bar, 
hit enter and it'll search my site for whatever you enter (the %s gets replaced when it loads the site with what you enter). 
You can set this up for lots of different things: Google, other search engines, Babelfish, Dictionary.com, Thesaurus, Bugzilla and more!
This gets 10/10 for funky feature.

