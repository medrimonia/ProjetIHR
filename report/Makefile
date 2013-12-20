BIN=report.pdf

SRC=$(wildcard *.tex)

IMAGES=comparison.png

.PHONY: all clean

all: $(BIN)

%.pdf: %.tex
	pdflatex $< && pdflatex $<

report.pdf: ${SRC} ${IMAGES}

comparison.png: drawComparison.sh ../comportement/TestExperienceDatabase.py
	./drawComparison.sh

clean:
	@ rm -f $(BIN) *~ *.log *.aux *.toc *.out
