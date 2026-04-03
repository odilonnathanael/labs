PANDOC = pandoc
PDF_ENGINE = --pdf-engine=xelatex -V mainfont="DejaVu Serif"

all: rapport.docx rapport.pdf presentation.pptx

rapport.docx: rapport.md images/*
	$(PANDOC) rapport.md -o rapport.docx

rapport.pdf: rapport.md images/*
	$(PANDOC) rapport.md -o rapport.pdf $(PDF_ENGINE)

presentation.pptx: presentation.md
	$(PANDOC) presentation.md -o presentation.pptx

clean:
	rm -f rapport.docx rapport.pdf presentation.pptx

.PHONY: all clean
