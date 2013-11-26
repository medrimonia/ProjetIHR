BIN=report.pdf

SRC=partieI.tex         \
    partieII.tex        \
    PredictiveModel.tex

.PHONY: all clean

all: $(BIN)

%.pdf: %.tex
	pdflatex $< && pdflatex $<

report.pdf: ${SRC}

clean:
	@ rm -f $(BIN) *~ *.log *.aux *.toc *.out
