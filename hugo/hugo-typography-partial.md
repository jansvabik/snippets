# Partial for adding unbreakable spaces to any content in Hugo

To print the text with improved typography (can be useful for blog posts, we use this code in [Noltio blog](https://noltio.com/cs/blog/)), just use this code snippet. I am explaining the code in [this article](https://noltio.com/cs/blog/hugo-jak-na-automaticke-nahrazeni-mezer-nedelitelnymi/) (in Czech).

_layouts/partials/typographied.html_
```
{{ $content := . }}
{{ $content = replaceRE "(>|\\(|\\[|\\{)?(A|I|O|U|K|S|V|Z)(</[a-z0-9]>)? " "$1$2$3&nbsp;" $content }}
{{ $content = replaceRE " (\\(|\\[|\\{)?(A|I|O|U|K|S|V|Z|a|i|o|u|k|s|v|z)(</[a-z0-9]>)? " " $1$2$3&nbsp;" $content }}
{{ $content = replaceRE "( |>|\\(|\\[|\\{)(\\d\\.?)(</[a-z0-9]>)? " "$1$2$3&nbsp;" $content }}
{{ $content = replaceRE "( |>|\\(|\\[|\\{)([A-Z]\\.)(</[a-z0-9]>)? " "$1$2$3&nbsp;" $content }}
{{ return ($content | safeHTML) }}
```

To call this partial just use standard partial calling code `{{ partial "typographied" . }}`. Instead of `.` you can use any context you want to typographically improve.
