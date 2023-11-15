+++
title = 'Installation of akira'
date = 2001-10-25
draft = false
tags = ['tech']
+++
## obtaining a copy

Smoothwall is most easily available from their site, where they have [a page](https://web.archive.org/web/20020708000718/http://www.smoothwall.org/gpl/get/download.html) dedicated to download mirrors. The download is about 20MB, so wont take too long to obtain on a 56k modem.

It may also be possible to get a copy on the front of a magazine as I did, but the website will always have the latest copy.

## installation

Before you can install, you need to burn the download to CD-ROM as it is a CD-ROM ISO image. I used [Nero](https://web.archive.org/web/20020708000718/http://www.nero.com/) (A Windows CD burner), however the Nero documentation does not go out of its way to tell you how to burn an ISO image, so I followed [a guide](https://web.archive.org/web/20020404095556/http://www.linuxiso.org:80/neroburning.html) I found.

Installation is a breeze, and can be over in as little as ten minutes. Slip the CD into the tray, power the machine on, let it frag the drive, answer a few questions, reboot and you're done. The install program also found my network card no problem. The only problems I did have were with the CD-ROM drives, which take a random number, square it, divide that by pi, then just guess if they want to read the block of data today.

After what seemed like 20 reboots and praying the kernel didn't panic because the drive wouldn't pass it some valuable data, I got smoothy installed.

## client configuration

To allow the clients of the network to use the Smoothwall box to access the Internet, they must be configured. Basically, thanks to TCP/IP standards, the theory is the same for any operating system, you just need to tell the clients which gateway to use. 

In Windows it's as easy as right clicking on Network Neighbourhood, properties, double click TCP/IP (for the Ethernet card), type in the IP for the gateway on the gateway tab, click OK about 30 times and reboot. 

For UNIX like systems, the program route can be used to do all this in one line without the reboot and excessive OK clicking:

    # route add default gw IP_ADDRESS netmask 0.0.0.0 metric 1

where IP_ADDRESS is the IP address of the Smoothwall machine, in my case 192.168.0.1.

That really is all there is to it, maybe you will need to tell some programs that they should use LAN (Internet Explorer for example) but other than that, you're all set-up.

## configuration

Configuring smoothy is as easy as... as... um... well it's easy! Just point your web browser to the IP address of the Smoothwall box and click the link PPP to setup the phone number, user / pass for your ISPs. But first it will ask you for a username and password to get to the setup page. The username is 'admin' the password is whatever you chose during the installation.
It can be slightly fiddly at first to work out how to manage multiple ISP profiles, but basically, you select a slot from the drop down list, but you do not click the button 'select' next to it, you fill in the text boxes with the ISP details then click save. The details you have entered are now saved to that slot.
You use the 'select' button to choose which ISP profile to use for dialling.
I changed the password for the user 'dial' to 'dial' so that other people on my network can dial up when they need to, but they wont have the ability to change settings (which is left to user 'admin').

## extra

I could not just leave the box alone, smoothy uses very little resources on the machine, and is always on, so it makes a great candidate for the [distributed.net](https://web.archive.org/web/20020708000718/http://www.distributed.net/) [client](https://web.archive.org/web/20020708000718/http://www.distributed.net/download/clients.html).
Installation is quite easy since the program comes pre-compiled (smoothy does not have any compile tools), I just slapped it in /root/dnetc/ configured it (./dnetc --configure) ran a benchmark (./dnetc --benchmark) to see how well it performs. (0.00:00:16.60 [431,317.59 keys/sec] btw).
Now it needs to be made to run at boot, so I use the vi editor, which comes with smoothy, to edit /etc/rc.d/rc.sysinit and add the line right at the bottom of the file:

    /root/dnetc/dnetc --hide

I edited (using vi) /etc/hosts and added the lines:

    #
    #	network
    #
    192.168.0.1     akira
    192.168.0.101   wataru
    192.168.0.102   andy
    192.168.1.101   nikita

That way, from any of my network clients, I could type the name instead of typing the IP address. Eg. in a web browser i could type 'akira' instead of 192.168.0.1, a lot easier no ?

I also added a heap load more to this from [http://www.ecst.csuchico.edu/…/adblock.shtml](http://www.ecst.csuchico.edu/~atman/spam/adblock.shtml) to help speed up my browsing experience by removing most of the banner ads.