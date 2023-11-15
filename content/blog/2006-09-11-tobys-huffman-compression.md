+++
title = "Toby's Huffman Compression"
date = 2006-09-11
draft = false
tags = ["code"]
+++

プログラミングについてから翻訳したくなくてごめん。

As I'm sure no one has noticed, recently a lot of C++ programming guides and articles have made their way into my del.icio.us bookmarks. My University's bridging course's algorithm project made itself the perfect cause to pick up a new language.

After various unfocused dabbling, I sat down to something more adventurous. 
So for my big first adventure, I choose to write an implementation Huffman's Compression. 
I had just made my first binary trees and wanted something useful to do with one. 
Soon I found a [descriptive article on the algorithm](http://www.cs.duke.edu/csed/poop/huff/info/) (with pictures!). 
Actually the pictures really helped, as I didn't know if I was constructing the tree in a suitable way. 
One problem I faced was handling all the bits correctly and how to write a suitable header. 
I toyed with the bitset object, but in the end I wrote a wrapper for the string class to handle a stream of binary data in bit form.

For those interested, [the code is available](https://github.com/tobyoxborrow/THuffman).

I wanted my version to be as much as my own code as possible, so I didn't consult other people's while coding. 
As such my code almost certainly differs from others and would not be compatible either. 
The only other version I have checked out is a [python version](https://web.archive.org/web/20070218223407/http://gumuz.looze.net/wordpress/index.php/archives/2004/11/25/huffman-encoding/). 
What he does in just 6k blew me away. 
Scripting languages have a habit of undermining compiled languages like that. 
However my goliath 160k compiled app (24k of code) out performed his in both speed and compression so in the end I wasn't too put off. 
I think his problem with compression was more due to using cPickle to store the header as this makes it quite large.

To store a number, the smallest value C will allow you to write is 1 byte in the form of a char. 
This was too much for me, so I expanded my bit buffer class to write numbers even smaller! 
The numbers I wanted to store was the length of the character bit code (as it was variable) before the bit code, so I knew how much to use. 
The method I ended up using was a tally system, "[multiples-of-5]0[remainder]0". 
The ones act as a tally and zero is the terminator.
So, 1 would be "010", 6 would be: "1010", 22 would be "110110" and so on. 
This works well at storing small numbers (0 - 25) in less than a byte.

As x86 computers won't let you write individual bits, you must pad up to the nearest byte. 
And since my output dealt with bits, it was likely the output would not round exactly to a byte, so I would need to add some empty space to make the computer happy. 
Other implementations put the padding at the very end. 
I figured this would require me to know where the body ends and ignore the rest, which might require a byte or two for storing a number. 
I instead stuck my padding between the header and body. 
I knew where the header ended as I stored how many letters as the first value. 
Then if I generate the body early I know it's length. 
Adding the two values together I would know how much padding to pad. 
My method was to use 0s, terminated by a 1. When decoding it ignores the 0s, only waiting until it gets a 1 then passes control to the body decoder. 
The body decoder can then loop until it runs out of bits, instead of testing for a pseudo EOF. 
So, padding of 5 bits would be "00001" and 1 would be "1". 
Sadly, the worse case is if no padding is needed, in this case a whole byte has to be added to provide padding for the 1 bit.

Encoded structure:

```
[header][body]
  [header]:
  [letter_count][letters][padding]
    [letters]:
    [letter_in_ascii][bitcode_length][bitcode]
```

References:

- [My C++ version](https://github.com/tobyoxborrow/THuffman)
- [Python version](https://web.archive.org/web/20070218223407/http://gumuz.looze.net/wordpress/index.php/archives/2004/11/25/huffman-encoding/)
- [http://www.cs.duke.edu/…/info/](http://www.cs.duke.edu/csed/poop/huff/info/)
- [http://cprogramming.com/…/huffman.html](https://www.cprogramming.com/tutorial/computersciencetheory/huffman.html)

