+++
title = 'Password Generator'
date = 2012-03-20
draft = false
tags = ["code"]
+++

I often need new passwords, for employees, services, servers, VPN pre-shared-keys and so on. 
Each have slightly different requirements. 
Humans would prefer easy to read/remember/write passwords, while computers can handle longer, less user-friendly passwords.
I've created a script to generate a whole bunch of passwords in different formats, letting me pick the one that suits my needs.

The script can also use a wordlist to bash words together with some numbers and symbols. 
Plus just randomly selected words - in case I just want to make a password manually.
I use a custom wordlist that has short and very long words removed. 
As an extra idea, I also filtered out words that matched the LulzSec password list.

```Text
$ passwords.pl --all
  jnmq49B9wnsW7Ass  pkF2Evu5chh9wMV4  wjy3Jw8CBzpN4JeT  uVu8Ms6iJbmZzaX4
  wS9hnCbmULJz8aDx  o3YFjWZ7gfaXrgzh  iHCZ2Vt3M2xcsH4A  so9Ndqj7Z5YdgBwh
--------------------------------------------------------------------------
   fNmemuKGBwWxaGqDh3wwaGsJr5fFEaHg    vbsJ9xcQ28yrKsgFdTeWKqb2b8rF4kPb
   sVs3buaTyjV2kZoa9fCzXdeD9n2J7ctQ    xgNg5Q7crqYiPc8LGztrbMp54j5P2aEe
--------------------------------------------------------------------------
  cq4sdiYG7Gs7/a=W  rte887qCiHxawJXr  wDgf3,2nwg/A\NfZ  brs.4D/GtGb,f=bG
  c uWetQ/ap7iWFD4  zqkr\Tj6kxfP86/w  ovE745hdV\xZL;nJ  q=NxSxvqjnvocuP9
--------------------------------------------------------------------------
  n4U.vQz{,8k4joAR  ghuX2sr`|Biv(\iK  yi`YhuokLy#\sJ\m  c+xJd=\Nn9nsBCd,
  q~iVY3oVerKB\xzv  fLzQbd.b`6R8rog8  z87WtMTrsgx%\v2j  hEJPbz-\RfpmdT%v
--------------------------------------------------------------------------
   8c24ef693f06837c11be61062e847668    a6faaf0feb28221d6490f11fc21dd49c
   4f77488566ab78a7cd44c9dd5df5797c    1fe9cd09977163976a2691e7622f41b4
--------------------------------------------------------------------------
     abaser82Backup's        Female5*circuity            Upsets5vim's
    Kimble'sNaiad's5%        RussianInstead32        catchingCrosser7
      antTalmud's263          caughtFoggier8         Jugged89goddess
--------------------------------------------------------------------------
bandiest duffer sunburn pottered Watling fantasy Rent's Fortiori
Planers poorly Glowed Honers mesas moon Irked Thayer's Intrigue
bullock hasp Involves spoons Manley Unisys's Worksop Gregorio Skysails
Celestas SMSA's Sanskrit uncheck docked humorist Mom's Tomlin target
--------------------------------------------------------------------------
```

[PasswordGenerator project on GitHub](https://github.com/tobyoxborrow/PasswordGenerator).

