NAME = latexcolors

.PHONY: all clean

all: $(SUBDIRS)
	latex $(NAME).ins
	pdflatex --interaction=nonstopmode $(NAME).dtx
	pdflatex --interaction=nonstopmode $(NAME).dtx
	makeindex -s gglo.ist -o $(NAME).gls $(NAME).glo
	pdflatex --interaction=nonstopmode $(NAME).dtx
	pdflatex --interaction=nonstopmode $(NAME).dtx

clean: $(SUBDIRS)
	--@rm -rf *.aux *.glo *.gls *.ilg *.log *.out *.toc
