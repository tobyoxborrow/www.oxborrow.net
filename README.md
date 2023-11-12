# www.oxborrow.net

Content for the website [www.oxborrow.net](http://www.oxborrow.net/).

Powered by [Hugo](https://gohugo.io/).

## New content

```Shell
# using hugo
hugo new content blog/YYYY-MM-DD-slug.md
# or, in a bundle dir:
hugo new content blog/YYYY-MM-DD-slug/index.md

# using helper script
./tools/newpost.pl -date YYYY-MM-DD -title "Some title!"
# or, in a bundle dir:
./tools/newpost.pl -dir -date YYYY-MM-DD -title "Some title!"
```

Then edit the resulting file.

## Testing

```Shell
hugo server
```

Hugo spins up a web server, which you can browse locally.

## Publishing

```Shell
# regular
hugo --minify --templateMetrics --templateMetricsHints --logLevel debug

# with cleanup
hugo --cleanDestinationDir --minify --templateMetrics --templateMetricsHints --logLevel debug

rsync --verbose --partial --progress --archive ./public/ www.oxborrow.net:/var/www/html/
```
