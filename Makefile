# Makefile for LaTeX CV

# ==============================================================================
# Variables
# ==============================================================================

# The main LaTeX file to compile
MAIN_FILE = cv_template

# The PDF output file
PDF_FILE = $(MAIN_FILE).pdf

# LaTeX compiler and flags
LATEX_COMPILER = pdflatex
LATEX_FLAGS = -interaction=nonstopmode

# Files to be removed by the clean command
AUX_FILES = $(MAIN_FILE).aux $(MAIN_FILE).log $(MAIN_FILE).out

# ==============================================================================
# Targets
# ==============================================================================

# Default target: build the CV
all: $(PDF_FILE)

# Rule to compile the LaTeX file to PDF
$(PDF_FILE): $(MAIN_FILE).tex profile.tex skills.tex experience.tex education.tex certifications.tex languages.tex references.tex keywords.tex
	$(LATEX_COMPILER) $(LATEX_FLAGS) $(MAIN_FILE).tex
	$(LATEX_COMPILER) $(LATEX_FLAGS) $(MAIN_FILE).tex

# Clean up auxiliary files
clean:
	rm -f $(AUX_FILES)

# Rebuild the CV from scratch
rebuild: clean all

# Phony targets
.PHONY: all clean rebuild
