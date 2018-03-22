TARGET = many-core
SRC    = $(TARGET).tex $(TARGET)-body.tex
TEX    = pdflatex

all : $(TARGET).pdf

$(TARGET).pdf : $(SRC)
	$(TEX) $(TARGET)
	bibtex $(TARGET)
	$(TEX) $(TARGET)
	$(TEX) $(TARGET)

clean:
	rm -f $(TARGET).pdf *.bbl *.blg *.aux *.log *~ 
