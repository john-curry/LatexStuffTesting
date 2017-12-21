FILE=report
all: $(FILE).pdf

$(FILE).pdf: $(FILE).tex
	latex $(FILE); bibtex references; latex $(FILE); pdflatex $(FILE)
clean:
	rm $(FILE).{aux,blg,bbl,log,dvi,pdf}
open:
	xdg-open $(FILE).pdf
