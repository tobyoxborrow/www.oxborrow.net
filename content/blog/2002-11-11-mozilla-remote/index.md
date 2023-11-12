+++
title = 'mozilla-remote'
date = 2002-11-11
draft = false
tags = ["code"]
+++

This script will open a specified URL into a new Mozilla tab, or if Mozilla isn't running, it will start it then load the URL. 
This overcomes a little oddity where you can't just call "mozilla $url" and expect it to handle it this way. 
I originally created this for my Logitech iTouch keyboard so I something to bind to the "homepage" key.

This program requires Perl to run and Mozilla.

{{< resource text="mozilla-remote.pl" src="mozilla-remote.pl.txt" >}} (Plain text file)

Save the file with a .pl name, You can then assign keys to it in your Window Manager, 
set programs (eg. X-Chat) to use it to load URLs or run it straight from the console. All use the same syntax:

```Shell
perl mozilla-remote.pl http://www.google.com/
```

[GNU](http://www.gnu.org/)/[GPL](http://www.gnu.org/licenses/licenses.html#GPL).

