+++
title = 'Wordpress migration and character encoding oddity'
date = 2006-08-20
draft = false
tags = []
+++

This website has a fair bit of Japanese text, 
it's not well written and the grammar is appalling (granted, the same can be said for the English) 
however I like being able to write a little bit of Japanese now and then. 
Recently the website changed servers and doing so caused all the Japanese text to be 
rendered as incomprehensible Latin characters, or as the Japanese would say, mojibake. 
We are not amused.

For example, the following previous post:

> 残念ながら、ギネスのビールってベジタリアンじゃないと聞いたんだよ。 材料のせいではなく作り方のせいだから。

Had become:

> æ®‹å¿µãªãŒã‚ ‰ã€ã‚ ®ãƒã‚ ¹ã®ãƒ"ãƒ¼ãƒ«ã£ã¦ãƒ™ã‚
¸ã‚ ¿ãƒªã‚¢ãƒ³ã˜ã‚ ƒãªã„ã¨èžã„ãŸã‚ "ã ã‚ ˆã€‚
ææ–™ã®ã›ã„ ã§ã¯ãªãä½œã‚ Šæ–¹ã®ã›ã„ ã ã‹ã‚ ‰ã€‚

I'm sure to most people reading this, both blocks of text are as bad as each other.

Thankfully I had played around with MySQL/UTF-8/PHP previously and got to know some 
useful queries to check everything was hunky dory. 
My first thought was that the data was transferred incorrectly. 
Purhaps MySQL's database dump tools didn't preserve the encoding. 
So the first query I used was to check if the data on both servers was indeed identical 
by looking at a text field in Hex. 
If the encoding had changed, the output would be different.

```SQL
SELECT HEX(some_field) FROM some_table
WHERE id=foo;
```

Where "some_field" is a field with non-latin encoded data. 
The output of this command would be something like:

```SQL
mysql> select hex(post_title) from wp_posts where id=57;

+-----------------+
| hex(post_title) |
+-----------------+
| E9AD9A          |
+-----------------+
```

This is useful for two good reasons, first since the output displays 
the value of the field in Hex you can view it in the standard 'mysql' command line tool. 
Second, people who can't read the language even if it was displayed correctly 
probably wouldn't know if it was correct or not.

So after running this command and both databases returned the same value 
for the same query, it was clear the data had maintained the correct 
encoding after the transfer.

This next command tells you what encoding MySQL is using for client connections:

```SQL
SHOW VARIABLES LIKE "%char%";
```

The output of which is a short list of variables such as "character_set_client". 
On the new server these were all set to utf8… On the old server they were all 
latin1 except for character_set_database. This isn't such a big problem, 
from my understanding this means the data will be stored in the database in utf8, 
however all connections will be treated as latin1.

On the server hidden away in some mysterious directories out of public view are 
a few php pages I wrote that use MySQL to store Japanese text, when 
I looked at these they displayed fine… most curious. Now I could narrow the 
problem to being a Wordpress specific issue. Next stop, Wordpress's support forums.


It became quickly apparent I was not alone, as there are many topics 
regarding this problem and they all had a common "fix", adding something 
similar to <code>$this->query("SET NAMES 'utf8'");</code> into Wordpress's main database include. 
This command tells MySQL to treat its connections as utf8 (or maybe it automatically 
converts them to utf8) Thinking back to the previous query I ran that showed the new 
server was handling all matters in utf8 I had little belief this would work, but tried
it anyway as it seemed to solve so many other peoples cases. Sure enough this didn't work for me.
Not the blindest bit of difference.

Since the two databases were handling the connections differently, 
out of curiosity I tried this 
command instead: <code>$this->query("SET NAMES 'latin1'");</code>
To my understanding this *shouldn't* work… but it does. 
Anyway, everything is back to normal although I'm a little more confused than I was before.

このポストはこのサイトについて。
実はね、つまらないポストです。
専門的な言葉が多いし翻訳したくない。
長い話を小さくなったら、サイトがサーバーを変わって日本語が文字化けになちゃった。
今大丈夫です～。

