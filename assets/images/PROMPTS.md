# Prompts de imagem — Nano Banana 2

Imagens a gerar para o site, seguindo a identidade visual (linguagem do swiyu, paleta brasileira).

**Estilo base** (comum a ícones/banners): ícone de linha branca minimalista, traço uniforme com cantos arredondados, centralizado; rótulo em branco, minúsculas, fonte sans-serif geométrica; fundo em gradiente diagonal suave e vibrante de azul profundo (#0B2B66) a azul (#1351B4), teal (#0E7A5F) e verde (#168821), com brilho radial sutil; estética flat, vetorial, limpa, sem texturas, sem ruído, sem pessoas.

Após gerar cada imagem, salve neste diretório com o nome indicado e substitua o placeholder correspondente no `.qmd` por `![](assets/images/NOME.png){fig-alt="..."}`.

## Identidade

| Arquivo | Proporção | Prompt |
|---|---|---|
| `logo.png` | 1:1 | Logotipo quadrado: ícone de linha branca de um cartão de identidade com um check, sobre o gradiente base; sem texto. Cantos levemente arredondados. |
| `hero_overlay.png` | 16:5 | Fundo abstrato largo apenas com o gradiente base (azul profundo → azul → teal → verde), com feixes de luz diagonais muito sutis e brilho radial descentrado à direita; sem ícones, sem texto. |
| `github_banner.png` | 4:1 | Banner para o README do GitHub: à esquerda, texto "IPD de Credenciais" em branco, negrito, sans-serif geométrica, com subtítulo "architecture reference framework" em minúsculas; à direita, ícone de linha branca de um cartão de identidade com check; fundo no gradiente base. |

## Cards da home — não usam mais imagens estáticas

Os cards da home agora usam [Lucide icons](https://lucide.dev) (SVG inline, renderizados por script incluído no `_quarto.yml`) sobre o gradiente CSS — classe `.card-icon` em `index.qmd`. Ícones em uso: `anchor`, `lightbulb`, `git-branch`, `book-open`, `file-badge`, `milestone`, `shield-alert`.

Os arquivos `*__card.png` gerados anteriormente não são mais referenciados e podem ser removidos.

## Banners de cookbooks (10:3) — prompts completos nos `.qmd` de cada cookbook

| Arquivo | Ícone | Rótulo |
|---|---|---|
| `banner_cookbook_emissor.png` | prédio com colunas | "emissor" |
| `banner_cookbook_verificador.png` | lupa com check | "verificador" |
| `banner_cookbook_govbr.png` | impressão digital em círculo | "autenticação" |
| `banner_cookbook_carteira.png` | smartphone com cartão | "carteira" |

## Diagramas (16:9, fundo branco)

| Arquivo | Local | Conteúdo | Status |
|---|---|---|---|
| `diagrama_stack.png` | `_partials/stack-tecnologico.qmd` | Stack em camadas com Acesso gov.br e ICP-Brasil | ✅ gerada, em uso |
| `diagrama_ecossistema.png` | `_partials/introducao.qmd` | Triângulo da confiança (emissor, portador, verificador + registro) | ✅ gerada, em uso |

## Dicas para o Nano Banana 2

- Peça o texto exato entre aspas e revise a grafia em pt-BR (acentos em "especificações", "autenticação").
- Gere em alta resolução (mínimo 2000 px de largura para banners) e exporte PNG.
- Para consistência entre imagens, gere todas na mesma sessão reaproveitando o estilo base, ou use a primeira imagem aprovada como referência de estilo.
- Depois de gerar `logo.png`, descomente a linha `logo:` no `_quarto.yml`.
