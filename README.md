# ARF — PodeCrer

Documentação técnica (Architecture Reference Framework) da **Infraestrutura Pública Digital de Credenciais Verificáveis do Brasil**, baseada no stack open source [Inji](https://inji.io) com customizações da organização [injibr](https://github.com/injibr).

Site construído com [Quarto](https://quarto.org). A estrutura se inspira na [documentação técnica do swiyu](https://swiyu-admin-ch.github.io/) (e-ID suíça) e no [ARF europeu](https://eu-digital-identity-wallet.github.io/eudi-doc-architecture-and-reference-framework/); o conteúdo é original e adaptado ao stack Inji.

## Estrutura

- `index.qmd` — página inicial
- `introducao.qmd` — papéis, componentes, ciclo de vida, confiança
- `stack-tecnologico.qmd` — padrões e protocolos adotados
- `componentes-open-source.qmd` — repositórios e como contribuir
- `cookbooks/` — guias práticos de onboarding (emissor, verificador, Acesso gov.br, carteira)
- `_partials/` — corpo do conteúdo, compartilhado entre site e PDF
- `arf-pdf.qmd` — documento-mestre do PDF consolidado (Typst)
- `especificacoes/` — Perfil Brasileiro (identificadores, VC, emissão, verificação, confiança)
- `roadmap.qmd` — estágio atual e lacunas
- `modelo-de-ameacas.qmd` — escopo e método do modelo de ameaças

## Desenvolvimento local

```bash
# https://quarto.org/docs/get-started/
quarto preview                       # servidor local com live reload
quarto render                        # gera o site estático em _site/
quarto render arf-pdf.qmd --to typst # gera o PDF em _site/arf-ipd-credenciais.pdf
```

O conteúdo vive em `_partials/` e é compartilhado entre as páginas do site (wrappers finos com `include`) e o documento consolidado `arf-pdf.qmd` (PDF via Typst). **Edite sempre os arquivos em `_partials/`**, não os wrappers. Os placeholders de imagem/diagrama aparecem só no HTML (`content-visible when-format="html"`).

O PDF usa o template [toffee-tufte](https://typst.app/universe/package/toffee-tufte/) (Typst Universe, MIT), aplicado via `typst-show.typ`. O Typst baixa o pacote automaticamente no primeiro render (requer internet). Tabelas largas podem precisar de ajuste (`#wideblock[...]` do template) na coluna de texto estilo Tufte.

## Licença

A definir.
