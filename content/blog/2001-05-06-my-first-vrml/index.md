+++
title = 'My first VRML'
date = 2001-05-06T21:52:15+00:00
draft = false
tags = ['code']
+++
VRML (Virtual Reality Modelling Language) is used to create 3D worlds that can be downloaded and viewed in a web browser, however the technology never really caught on, that did not stop me making a world.

For my Mutlimedia HND (Higher National Diploma) today I made a simplistic model of our solar system.

It is purly to demonstrate VRML, much better things can be achieved with more time. The whole world is 36.8kb so should take about 5-10s to download on a 56k modem.

- {{< resource text="View the solar system" src="solar_system.wrl" >}} (VRML, requires plugin)
- {{< resource text="Source code" src="solar_system.wrl.txt" >}} (Plain text)

To view VRML worlds you need a plug-in for your browser.

If you dont already have a VRML (version 1.0 compatible) viewer, and you are using either Internet Explorer or Netscape I recommend you get Cortona (there are others, but this is the best I have found, quick and easy to install).

To get the required parts of Cortona:
- First visit [this page](https://web.archive.org/web/20010617230100/http://www.parallelgraphics.com/products/cortona/download/other/) to get the plug-in (984kb, 2m33s on 56k modem).
- Then you need to get it's 1.0 converter [here](https://web.archive.org/web/20010608171258/http://www.parallelgraphics.com/products/cortona/converter/other/) (32kb, 5s on 56k modem).

Cortona is compatible with VRML 2.0 by default, this 1.0 converter lets it read the older format. The only reason I coded this in 1.0 format is because its quicker to write and learn.

related links
- [VRML browser detector](https://web.archive.org/web/20010603063415/http://cic.nist.gov/vrml/vbdetect.html).
- Netscape have an excellent [guide to VRML 1.0 here](https://web.archive.org/web/20010413183506/http://home.netscape.com/eng/live3d/howto/vrml_primer_body.html).
- [VRML 1.0 specification](https://web.archive.org/web/20010619141837/http://www.virtpark.com/theme/vrml/).
- The model was based on the main graphic from [this page](https://web.archive.org/web/20010526124549/http://pds.jpl.nasa.gov/planets/).
- [Textpad](http://www.textpad.com/), an excellent text authoring program for Win32 systems (Windows 95, 98, NT, 2000).
- VRML syntax definition file for Textpad on [this page](https://web.archive.org/web/20010605102313/http://www.textpad.com/add-ons/uzsyn.html).
