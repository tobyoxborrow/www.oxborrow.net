+++
title = 'Am I online?'
date = 2017-01-11
draft = false
tags = ["code"]
+++

As part of an effort to teach myself assembly, I created a tiny command-line tool that checks if you are online and sets its exit code appropriately. Then this can be called from scripts that want to know.

The program will perform two tests using Microsoft's NCSI (Network Connectivity Status Indicator) service.

1. GET request for http://www.msftncsi.com/ncsi.txt
1. DNS request for dns.msftncsi.com

If the GET request succeeded and the content was correct, it stops there and will exit with 0.
If the GET request succeeded, but the content was not correct, it will perform the second test.
If the second test succeeds, it will stop there and exit with 1 (to differentiate).
Otherwise, it will exit with a non-zero exit status.

The command has no input and provides no output except its exit status. Usage example from a bash script:

```Shell
if ./msncsi; then
    echo "I'm online :-)"
else
    echo "I'm offline :-("
fi
```

[msnciasm project on GitHub](https://github.com/tobyoxborrow/msncsiasm).

