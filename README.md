# Thesis Project Repository

## Abstract
This thesis develops a comprehensive, sequential framework for modeling financial returns, designed as an applied "recipe" that starts with univariate models and culminates in a multivariate, copula-based risk approach. The study begins by documenting stylized facts of returns and then models conditional volatility using GARCH(1,1) and GJR-GARCH(1,1) specifications. To capture heavy tails and asymmetry in standardized shocks, it compares two strategies: a skewed t distribution for the entire density and an extreme value theory (POT/EVT) approach focused on the left tail. The evaluation combines statistical and risk management criteria: out-of-sample forecasts and metrics such as VaR and Expected Shortfall, along with calibration diagnostics and tests based on VaR breaches. Results show that models with a skewed t distribution perform poorly in terms of VaR coverage and breach independence, while EVT-based models improve coverage but still exhibit independence issues, suggesting potential for hybrid specifications that adapt asymmetry and kurtosis more quickly to volatility shocks. Finally, to model dependence across assets, a copula approach (static over standardized returns) is proposed, enabling flexible estimation of marginal models by asset and capturing nonlinear dependence relevant for risk, offering a practical alternative to the linear emphasis of approaches such as DCC.

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
