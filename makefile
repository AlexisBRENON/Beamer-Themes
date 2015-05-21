THEME_NAME = ab2015
THEME_FILES = $(wildcard $(THEME_NAME)/*)

TEX_FILE = BeamerTest.tex
#ASSETS_FOLDER = assets/

BUILD_FOLDER = build/
PDF_FILE = $(patsubst %.tex,%.pdf,$(TEX_FILE))

LATEX = lualatex
LATEX_OPTIONS = -shell-escape

.PHONY: clean

all: $(PDF_FILE)

$(PDF_FILE): $(BUILD_FOLDER)
	latexmk -cd -pdf -pdflatex="$(LATEX) $(LATEX_OPTIONS)" $(BUILD_FOLDER)/$(TEX_FILE)
	
$(BUILD_FOLDER): $(TEX_FILE) $(ASSETS_FOLDER) $(THEME_FILES)
	@mkdir -p $(BUILD_FOLDER)
	@cp -rf $? $(BUILD_FOLDER)

clean:
	@rm -f $(PDF_FILE)
	@rm -fr $(BUILD_FOLDER)

