+++
title = "He's no use to me dead"
date = 2002-05-23
draft = false
tags = ["code"]
+++

I haven't worked on the [ExB](http://exb.sf.net/) project half as much as I should have recently.
Today [bse](https://web.archive.org/web/20020526154320/http://bakterium.com/) asked me wtf SROMMod (a plugin module for the bot) was, and I hadn't the foggiest, 
I racked my brains for a few moments, I knew I had made it, it was the last thing I had done, 
but what on earth was it. Just as I loaded up Mozilla to rummage around the 
[online cvs repository](https://web.archive.org/web/20010804072042/http://cvs.sourceforge.net/cgi-bin/viewcvs.cgi/exb/) I remembered.
SROMMod, or Sucks-Rules O'Meter, inspired by 
[this website](https://web.archive.org/web/20020602053457/http://srom.zgp.org/) which fellow workmate 
[graham](https://web.archive.org/web/20020526154320/http://grahamdell.co.uk/) pointed me at.

Basically SROMMod finds out what is better of two items. 
You give the bot two terms, it then googles them with the words "sucks" and "rules OR rocks" 
and counts the results, does a little (flawed) calculation on them and spits out a pretty graph.

I feel a little demonstration is in order:

```plaintext
[19:43:01] [wataru] ExB: srom leon nikita
[19:43:03] [ExB] nikita pwnz!
[19:43:04] [ExB] leon:   [--------##|#######---]
[19:43:04] [ExB] nikita: [--------##|##########]

[19:53:26] [wataru] ExB: srom starbucks suicide
[19:51:54] [ExB] suicide pwnz!
[19:51:56] [ExB] starbucks: [--########|##--------]
[19:51:56] [ExB] suicide:   [-------###|##########]

[19:53:26] [wataru] ExB: srom computers girls
[19:53:32] [ExB] computers wins!
[19:53:36] [ExB] computers: [----------|###-------]
[19:53:36] [ExB] girls:     [##########|#######---]

[19:54:56] [wataru] ExB: srom linux windows
[19:55:00] [ExB] linux wins!
[19:55:02] [ExB] linux:   [-------###|#######---]
[19:55:02] [ExB] windows: [##########|----------]

[19:55:43] [Jeff] ExB: srom wataru jeff
[19:55:46] [ExB] jeff pwnz!
[19:55:46] [ExB] wataru: [----------|----------]
[19:55:46] [ExB] jeff:   [--------##|##########]
```

[Jeff](https://web.archive.org/web/20020526154320/http://jeffersoft.net/) trys to reassure me with this comment: "it's okay, you do own though, just no one knows it".

