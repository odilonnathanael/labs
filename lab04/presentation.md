% Лабораторная работа №4: Продвинутое использование git
% LISSOM BAYEM ODILLON NATHANAEL
% 02/09/2026

# Цель

- Освоить Gitflow
- Conventional Commits
- Семантическое версионирование

# Gitflow

- master – релизы
- develop – разработка
- feature – новые функции
- release – подготовка релиза
- hotfix – исправления

# Conventional Commits

cd ~/lab/lab04

cat > Makefile << 'EOF'
PANDOC = pandoc
PDF_ENGINE = --pdf-engine=xelatex -V mainfont="DejaVu Serif"

all: rapport.docx rapport.pdf presentation.pptx

rapport.docx: rapport.md
	$(PANDOC) rapport.md -o rapport.docx

rapport.pdf: rapport.md
	$(PANDOC) rapport.md -o rapport.pdf $(PDF_ENGINE)

presentation.pptx: presentation.md
	$(PANDOC) presentation.md -o presentation.pptx

clean:
	rm -f rapport.docx rapport.pdf presentation.pptx

.PHONY: all clean
