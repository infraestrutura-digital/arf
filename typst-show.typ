// Partial do Quarto que aplica o template toffee-tufte
// (https://typst.app/universe/package/toffee-tufte/ — MIT)
// O pacote é baixado automaticamente pelo Typst no primeiro render.
#import "@preview/toffee-tufte:0.1.1": *

#show: template.with(
  full: true, // largura inteira: sem a margem direita de notas laterais
$if(title)$
  title: [$title$$if(subtitle)$ #linebreak() #text(size: 0.55em, weight: "regular")[$subtitle$]$endif$],
$endif$
$if(by-author)$
  authors: "$for(by-author)$$it.name.literal$$sep$, $endfor$", // texto, não lista: o cabeçalho exibe o valor cru
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

// Encaixa a imagem na caixa sem recortar (o padrão "cover" corta diagramas cuja
// proporção declarada pelo Quarto difere da do arquivo).
#set image(fit: "contain")

// Reduz imagens e diagramas maiores que a área útil, mantendo a proporção:
// cabem na largura do texto e em até 85% da altura da página. Menores ficam intactas.
#show image: it => layout(region => {
  let natural = measure(it)
  let max-height = if region.height == float.inf * 1pt { 22cm } else { region.height * 0.85 }
  let factor = calc.min(1.0, region.width / natural.width, max-height / natural.height)
  if factor < 1.0 { scale(factor * 100%, reflow: true, it) } else { it }
})
