SOURCES = $(shell find . -wholename "./figures/*.tex") diapo_qcrypt.tex

FILES_OUT = $(SOURCES:.tex=.pdf)

all: $(FILES_OUT)

%.pdf: %.tex
	@echo "##############################"
	@echo "### Dealing with $^..."
	@echo "##############################"
	cd $(dir $^) && latexmk -pdf --synctex=1 $(notdir $^)
