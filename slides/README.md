# Thesis Defense Beamer Deck

This folder contains the thesis presentation source:

- `slides/defense.tex`

## Scope and assumptions

- Content is based on the thesis sources in:
  - `thesis/main/main.tex`
  - `thesis/chapters/intro.tex`, `thesis/chapters/cap1.tex`, `thesis/chapters/cap2.tex`, `thesis/chapters/cap3.tex`, `thesis/chapters/cap4.tex`, `thesis/chapters/cap5.tex`, `thesis/chapters/conc.tex`
  - `biblo.bib`
  - figures from `plots/`
- Language choice:
  - Spanish for title and degree slide
  - English for the rest of the deck
- Theme:
  - Professional Beamer style using blue `RGB(13,33,161)`
  - ITAM logo appears in the top-right
- Bibliography style:
  - APA-like formatting via `apacite` (same family used in thesis)

## Compile (repo root)

Recommended:

```bash
make slides
```

This uses `latexmk` and keeps slide artifacts under `slides/`.

Use the full sequence so references resolve:

```bash
pdflatex -interaction=nonstopmode slides/defense.tex
bibtex defense
pdflatex -interaction=nonstopmode slides/defense.tex
pdflatex -interaction=nonstopmode slides/defense.tex
```

Notes:

- The manual commands above write `defense.pdf` in the repo root.
- To force outputs under `slides/`, use:

```bash
pdflatex -interaction=nonstopmode -output-directory=slides slides/defense.tex
bibtex slides/defense
pdflatex -interaction=nonstopmode -output-directory=slides slides/defense.tex
pdflatex -interaction=nonstopmode -output-directory=slides slides/defense.tex
```
