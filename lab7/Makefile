PANDOC = pandoc
FILTERS =
PDF_ENGINE = --pdf-engine=xelatex

all: rapport.docx rapport.pdf presentation.pdf

rapport.docx: rapport.md images/* bib/*.bib
	$(PANDOC) rapport.md -o rapport.docx $(FILTERS)

rapport.pdf: rapport.md images/* bib/*.bib
	$(PANDOC) rapport.md -o rapport.pdf $(FILTERS) $(PDF_ENGINE)

presentation.pdf: presentation.md
	$(PANDOC) presentation.md -o presentation.pdf -t beamer

presentation.pptx: presentation.md
	$(PANDOC) presentation.md -o presentation.pptx

clean:
	rm -f rapport.docx rapport.pdf presentation.pdf presentation.pptx

.PHONY: all clean
