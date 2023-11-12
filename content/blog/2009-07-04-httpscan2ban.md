+++
title = 'HTTPScan2Ban'
date = 2009-07-04
draft = false
tags = ["code"]
+++

My website was getting a lot of probes for vulnerable software.

For example (simplified):

```
192.0.2.1 [16/Mar/2009:17:31:07 +0000] "GET /wp-login.php"
192.0.2.1 [16/Mar/2009:21:19:32 +0000] "GET /config.php"
192.0.2.1 [16/Mar/2009:09:26:32 +0000] "GET /phpinfo.php"
```

I don't have these files or the software they are looking for so there was no risk. 
But it was starting to clog the logs, 
especially since I don't get much traffic these requests take up the vast majority of the logs.

To do something about it I created a new project:

1. Bot queries known trigger URL (e.g. /wp-login.php)
1. .htaccess forwards the request to my logging php script
1. The script logs the client IP and replies HTTP 200 to mess up their scan results
1. fail2ban reads the log and adds an iptables entry to deny the IP
1. Bot can no longer make requests to my site

[httpscan2ban project on GitHub](https://github.com/tobyoxborrow/httpscan2ban).

