# Add unbreakable spaces to HTML content in Hugo

To print the text with improved typography (can be useful for blog posts, we use this code in [Noltio blog](https://noltio.com/cs/blog/)), just use this code snippet and paste it to the `.Content` target in your HTML file. I am explaining the code in [this article](https://noltio.com/cs/blog/hugo-jak-na-automaticke-nahrazeni-mezer-nedelitelnymi/) (in Czech).

```
{{ $content := .Content }}
{{ $content = replaceRE "(>|\\(|\\[|\\{)?(A|I|O|U|K|S|V|Z)(</[a-z0-9]>)? " "$1$2$3&nbsp;" $content }}
{{ $content = replaceRE " (\\(|\\[|\\{)?(A|I|O|U|K|S|V|Z|a|i|o|u|k|s|v|z)(</[a-z0-9]>)? " " $1$2$3&nbsp;" $content }}
{{ $content = replaceRE "( |>|\\(|\\[|\\{)(\\d\\.?)(</[a-z0-9]>)? " "$1$2$3&nbsp;" $content }}
{{ $content = replaceRE "( |>|\\(|\\[|\\{)([A-Z]\\.)(</[a-z0-9]>)? " "$1$2$3&nbsp;" $content }}
{{ $content | safeHTML }}
```

_This code hasn't been tested in other cases than in the one when Forestry is used to generate the HTML content of the page._
