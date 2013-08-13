
TARGET=aoprisan_cv

all: $(TARGET).tex
	TEXINPUTS="europecv/":$(TEXINPUTS) pdflatex $(TARGET).tex
#	TEXINPUTS="europecv/":$(TEXINPUTS) pdflatex $(TARGET).tex
#	TEXINPUTS="europecv/":$(TEXINPUTS) bibtex $(TARGET)

pdf: $(TARGET).tex
	TEXINPUTS="europecv/":$(TEXINPUTS) pdflatex $(TARGET).tex

clean:
	rm -f $(TARGET).aux $(TARGET).log $(TARGET).pdf $(TARGET).bbl \
	$(TARGET).blg $(TARGET).dvi *.*~ Makefile~

