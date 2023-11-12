+++
title = 'Small World'
date = 2015-09-29
draft = false
tags = ["code"]
+++

For work I was going linter crazy, adding linters for all the code in a particular project and wondered, is there was a linter for git messages?
Very quickly I found [gitlint](https://github.com/jorisroovers/gitlint). 
With this your git messages could be checked and rejected according to your requirements.

However, it didn't have tests for some issues I was concerned about and I wanted the features! 
I reached out to the owner Joris and realised we both worked for Cisco. 
In fact, in the same business unit, though we'd not met or worked together yet.
He rightly suggested I create PRs for the changes I want and if they are good enough they'll get merged. 
They were and they did.

My PR added three new tests:

- TitleLeadingWhiteSpace - Leading whitespace in the title.
- BodyTooShort - Body message doesn't contain enough detail.
- BodyMissing - No body message at all.

[gitlint project on GitHub](https://github.com/jorisroovers/gitlint).

