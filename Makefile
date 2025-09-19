# Marp slide project Makefile

.PHONY: help build html pdf clean watch serve all

help:
	@echo "Available commands:"
	@echo "  build    - Build both HTML and PDF"
	@echo "  html     - Generate HTML slides"
	@echo "  pdf      - Generate PDF slides" 
	@echo "  clean    - Remove generated files"
	@echo "  watch    - Watch files and rebuild automatically"
	@echo "  serve    - Start local server for slides"
	@echo "  all      - Clean and build all formats"

html:
	marp slides.md --theme devin-theme.css --html --allow-local-files -o slides.html

pdf:
	marp slides.md --theme devin-theme.css --pdf --allow-local-files -o slides.pdf

build: html pdf

all: clean build

clean:
	rm -f slides.html slides.pdf

watch:
	marp slides.md --theme devin-theme.css --html --allow-local-files -o slides.html --watch

serve:
	marp slides.md --theme devin-theme.css --server --allow-local-files
