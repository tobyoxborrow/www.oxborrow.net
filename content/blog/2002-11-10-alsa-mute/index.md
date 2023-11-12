+++
title = 'alsa-mute'
date = 2002-11-10
draft = false
tags = ["code"]
+++

On my Logitech iTouch keyboard I have some "media" buttons, one being mute. 
After assigning the keycode for it to XF86AudioMute I then created this little 
script to handle the action of turning mute on or off depending on it's current state.
Then its just a matter of editing your Window Managers key bindings to assining 
XF86AudioMute to alsa-mute.pl.

For fluxbox this meant editing "~/.fluxbox/keys" and adding the line:

```
None XF86AudioMute :ExecCommand perl ~/alsa-mute.pl
```

This program requires Perl to run and ALSA (Advanced Linux Sound Architechture) installed. 
You will also need to edit your Window Manager's key bindings. An excersise left to the reader.

{{< resource text="alsa-mute.pl" src="alsa-mute.pl.txt" >}} (Plain text file)

Save the file with a .pl name,
Edit your Window Manager's key bindings to call it for the key you want,
You can also call this straight from the console:

```Shell
perl alsa-mute.pl
```

[GNU](http://www.gnu.org/)/[GPL](http://www.gnu.org/licenses/licenses.html#GPL).

