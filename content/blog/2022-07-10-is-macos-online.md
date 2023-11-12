+++
title = 'Is macOS online?'
date = 2022-07-10
draft = false
tags = ["code"]
+++

I revisited another previous project, msnciasm. I hadn't used it in a while and wanted to again, but it threw up a `EXC_BAD_ACCESS` error. 

The eventual fix was trivial (literally one character):

```Assembly
- mov r14d, [eax]
+ mov r14d, [rax]
```

However, I had not touch this particular project or assembly in so long it was daunting to know where to start. 
Basically like debugging someone else's code in a language you don't read.
Fortunately, I had done a lot of reverse engineering binaries for Capture the Flag events, that was helpful to get me stepping through the code to troubleshoot and eventually worked out the fix.

Now I had a new problem, OSX is not a thing anymore, this is macOS. Just enough had changed that the binary wouldn't build.
Getting a working compile probably took longer than the actual fix. But got there in the end.

Updated [msnciasm project on GitHub](https://github.com/tobyoxborrow/msncsiasm).

