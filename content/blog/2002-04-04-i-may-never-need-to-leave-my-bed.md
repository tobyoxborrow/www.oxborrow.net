+++
title = 'I may never need to leave my bed'
date = 2002-04-04
draft = false
tags = []
+++

I'm as chuffed as a little steam engine with a new cho cho funnel. I knew it was possible but for a long time I could not work it out, but now, yay, I can have remote applications running on my desktop but displayed on my laptop, through the magic power of X. No need for expensive software like PC Anywhere or the likes, its built into the heart of my display system. Gigabillions of other *nix users seemed to get it working first time hassle free... trust my luck I didn't.

Last week I had my first real stab at it, but I could only get applications display on my desktop that were running on my laptop. 
Not quite what I wanted. Then yesturday I pestered a pal, 
[Phry](https://web.archive.org/web/20020602140027/http://nagzi.yi.org/) and he grudgingly helped me out. 
In the end he sorta solved the problem and somehow sorted another related problem. 
Although, what I have is not a 100% solution, but it works. Basically, I

```Shell
ssh toby@wataru
```

Then type in my ultra secret password and then... (this is the kludge part)

```Shell
export DISPLAY="nikita:0.0"
```

After that, I can run all my purday X apps on wataru (desktop) but they magically appear on nikita (laptop). 
I really only wanted this so I can use XMMS (Winamp clone) from wataru and control my ub3r stereo setup from my bed
(however one big drawback... I still need to get up walk across the room and hit the power switch on the speakers).
Before using magical [XMMS](https://www.xmms.org/) I had happily controled the music via the command line app mpg123, 
but now I use ogg (granted I could use ogg123), and I've found myself a gapless and osd plugins for 
xmms and now I can quickly shuffle about with my playlists and mixer settings. 
It's only wise I do it this way.

I'll get myself a screenshot online when I can, since I havnt in over a month. 
It wont look ultra amazing since xmms will look just like xmms and you couldnt actually tell its remote but hey, 
stop being picky.

In other news, I've switched ISP to [clara.net](https://web.archive.org/web/20020124194812/http://www.clara.net/).
I've decided to bite the bullet, give up on the cheapo ISPs that I need to change every month cause they go bust. 
clara.net have been in the business for a good deal of time, they are reliable and trustworthy. 
They may be more expensive (by about an extra £10 a month) but its worth it for the peice of 
mind of not being cut off every 2 hours, cut off at random times, engaged tones, downtime, etc etc etc.

After a brief check of all the stars of Star Trek, 
[Wil "Wesley Crusher" Wheaton](https://web.archive.org/web/20020527163606/http://wilwheaton.net:80/) has the best website.
It's actually a very good read and updated daily. I shall be keeping an eye on it. 
[William "James T. Kirk" Shatner](https://web.archive.org/web/20020402003626/http://www.williamshatner.com/) comes a close second, 
regular updates and a online story created by his daughter which he stars in called Ruby.

