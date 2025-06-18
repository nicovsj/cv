# Makefile for CV LaTeX project

# Variables
TEX_FILE = cv.tex
PDF_FILE = cv.pdf
TEX_DIR = tex/

# Default target
all: $(PDF_FILE)

# Compile the LaTeX document
$(PDF_FILE): $(TEX_FILE) $(wildcard $(TEX_DIR)*.tex)
	pdflatex $(TEX_FILE)
	pdflatex $(TEX_FILE)  # Run twice for references

# Clean temporary files
clean:
	rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz

# Clean everything including PDF
distclean: clean
	rm -f $(PDF_FILE)

# View the PDF (macOS specific)
view: $(PDF_FILE)
	open $(PDF_FILE)

# Help target
help:
	@echo "Available targets:"
	@echo "  all        - Build the CV (default)"
	@echo "  clean      - Remove temporary files"
	@echo "  distclean  - Remove all generated files including PDF"
	@echo "  view       - Open the PDF viewer"

.PHONY: all clean distclean view help 