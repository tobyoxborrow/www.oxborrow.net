+++
title = 'Fireloader'
date = 2009-04-30
draft = false
tags = ["code"]
+++

I work with iptables a lot to manage firewall rules. 
So to help me, I've created a script to manage iptables rules - automatically saving and restoring from files. 
Too many times I've lost rules when the server restarted and I forgot to save the rules first.
So this script will register as a service and save rules automatically when the system shuts down and load them at boot.

Firewall rules are kept in a separate file, /etc/fireloader.conf in iptables-save format.

[Fireloader project on GitHub](https://github.com/tobyoxborrow/Fireloader/).

