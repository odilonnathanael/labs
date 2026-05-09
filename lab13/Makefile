PANDOC = pandoc

all: rapport.docx presentation.pptx

rapport.docx: rapport.md
	$(PANDOC) rapport.md -o rapport.docx

presentation.pptx: presentation.md
	$(PANDOC) presentation.md -o presentation.pptx

pdf: rapport.docx presentation.pptx
	libreoffice --headless --convert-to pdf rapport.docx
	libreoffice --headless --convert-to pdf presentation.pptx

clean:
	rm -f rapport.docx presentation.pptx rapport.pdf presentation.pdf

.PHONY: all clean pdf
