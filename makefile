THEME = ab2015
THEMEFILES = $(wildcard $(THEME)/*)
BUILDFOLDER = build
TEXFILE = $(wildcard *.tex)
PDF = $(patsubst %.tex,%.pdf,$(TEXFILE))

TEXC := xelatex
TEXC_OPTS += -shell-escape

.PHONY: clean

all: $(PDF)

$(PDF): $(TEXFILE) $(THEMEFILES)
	$(MAKE) _prepare
	cd ./$(BUILDFOLDER)/ && \
	$(TEXC) $(TEXC_OPTS) $(TEXFILE) ; \
	cd -
	$(MAKE) _sanitize

_prepare:
	@mkdir -p $(BUILDFOLDER)
	@cp -r $(THEMEFILES) $(BUILDFOLDER)
	@cp $(TEXFILE) $(BUILDFOLDER)
  
_sanitize:
	@mv $(BUILDFOLDER)/$(PDF) ./$(PDF)

clean:
	@rm -f $(PDF)
	@rm -fr $(BUILDFOLDER)

