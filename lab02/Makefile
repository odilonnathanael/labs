# Makefile pour générer les rapports
MD = rapport.md
DOCX = rapport.docx
PDF = rapport.pdf

all: $(DOCX) $(PDF)

$(DOCX): $(MD)
	pandoc $(MD) -o $(DOCX)

$(PDF): $(MD)
	pandoc $(MD) -o $(PDF)

clean:
	rm -f $(DOCX) $(PDF)

.PHONY: all clean
