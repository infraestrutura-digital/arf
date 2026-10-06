// Partial do Quarto que aplica o template toffee-tufte
// (https://typst.app/universe/package/toffee-tufte/ — MIT)
// O pacote é baixado automaticamente pelo Typst no primeiro render.
#import "@preview/toffee-tufte:0.1.1": *

#show: template.with(
$if(title)$
  title: [$title$$if(subtitle)$ #linebreak() #text(size: 0.55em, weight: "regular")[$subtitle$]$endif$],
$endif$
$if(by-author)$
  authors: ($for(by-author)$"$it.name.literal$", $endfor$),
$endif$
$if(date)$
  date: "$date$",
$endif$
$if(toc)$
  toc: true,
$endif$
)

#set text(lang: "pt", region: "BR")
$if(sectionnumbering)$
#set heading(numbering: "$sectionnumbering$")
$endif$
