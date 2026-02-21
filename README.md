# Thesis Project Repository

This repository contains:

- The full thesis manuscript (book-style LaTeX)
- The defense presentation (Beamer)
- Shared bibliography and figures

## Repository layout

- `thesis/main/main.tex`: thesis entry point
- `thesis/chapters/`: thesis chapter files (`intro.tex`, `cap1.tex`, ..., `conc.tex`)
- `slides/defense.tex`: slide deck entry point
- `slides/README.md`: slides-specific notes
- `biblo.bib`: bibliography database
- `plots/`: figures used by thesis and slides
- `Makefile`: build automation for thesis + slides

## Requirements

- A LaTeX distribution (recommended: TeX Live)
- `latexmk`
- `bibtex`

## Build commands (run from repo root)

Build everything:

```bash
make all
```

Build only thesis:

```bash
make thesis
```

Build only slides:

```bash
make slides
```

Clean auxiliary files:

```bash
make clean
```

## Output locations

- Thesis PDF: `thesis/main/main.pdf`
- Slides PDF: `slides/defense.pdf`
