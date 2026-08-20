LATEXMK ?= latexmk
LATEX_FLAGS ?= -pdf -interaction=nonstopmode -file-line-error

THESIS_SRC := thesis/main/main.tex
EXEC_SUMMARY_SRC := executive_summary/main/main.tex
SLIDES_DIR := slides
SLIDES_SRC := $(SLIDES_DIR)/defense.tex

.PHONY: all thesis executive-summary slides clean clean-thesis clean-executive-summary clean-slides

all: thesis executive-summary slides

thesis:
	$(LATEXMK) $(LATEX_FLAGS) -cd $(THESIS_SRC)

executive-summary:
	$(LATEXMK) $(LATEX_FLAGS) -cd $(EXEC_SUMMARY_SRC)

slides:
	$(LATEXMK) $(LATEX_FLAGS) -outdir=$(SLIDES_DIR) $(SLIDES_SRC)

clean: clean-thesis clean-executive-summary clean-slides
	rm -f defense.aux defense.bbl defense.blg defense.fdb_latexmk defense.fls defense.log defense.nav defense.out defense.snm defense.synctex.gz defense.toc defense.pdf

clean-thesis:
	$(LATEXMK) -c -cd $(THESIS_SRC)
	rm -f main.aux main.bbl main.blg main.fdb_latexmk main.fls main.log main.out main.toc main.pdf

clean-executive-summary:
	$(LATEXMK) -c -cd $(EXEC_SUMMARY_SRC)
	rm -f main.aux main.bbl main.blg main.fdb_latexmk main.fls main.log main.out main.toc main.pdf

clean-slides:
	$(LATEXMK) -c -outdir=$(SLIDES_DIR) $(SLIDES_SRC)
