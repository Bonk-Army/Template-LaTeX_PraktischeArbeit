# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# %% Descr:       Vorlage fuer Berichte der DHBW-Karlsruhe, Makefile
# %% Author:      Prof. Dr. Juergen Vollmer, vollmer@dhbw-karlsruhe.de
# %% $Id: Makefile,v 1.22 2020/03/13 15:10:57 vollmer Exp $
# %% -*- coding: utf-8 -*-
# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Dateiname der Haupt-Datei
BASE      = bericht
FMT       = $(BASE).fmt

LATEX     = pdflatex -file-line-error
BIBTEX    = bibtex
MAKEINDEX = makeindex -s $(BASE).ist

# Wo werden die diversen Dateien gesucht:
# Ein // am Ende bedeutet: in allen Unterverzeichnissen
# BIBTEX-Style Files (*.bst)
export BSTINPUTS := .//:$(BSTINPUTS)

# BIBTEX Datenbank(en) (*.bib)
export BIBINPUTS := .//:$(BIBINPUTS)

# LaTeX Styles und Klassen (*.sty, *.cls)
export TEXINPUTS := .//:$(TEXINPUTS)

all: $(BASE).pdf

$(BASE).pdf: *.tex *.bib Makefile.
	$(MAKE) clean
	$(LATEX)  $(BASE).tex
	- grep -q "Warning: Citation " $*.log && $(BIBTEX)    $(BASE)
	- [ -f $(BASE).idx ] && $(MAKEINDEX) $(BASE)
	$(LATEX)  $(BASE).tex
	- grep -q "Warning: Citation " $*.log && $(BIBTEX)    $(BASE)
	- [ -f $(BASE).idx ] && $(MAKEINDEX) $(BASE)
	$(BIBTEX) $(BASE)
	$(LATEX)  $(BASE).tex

pdf:
	$(LATEX)  $(BASE)

index:
	$(MAKEINDEX) $(BASE)

bib:
	$(BIBTEX) $(BASE)

# fmt: --> https://tex.stackexchange.com/questions/79493/ultrafast-pdflatex-with-precompiling
#      --> https://ctan.org/pkg/mylatexformat
fmt: $(FMT)
%.fmt:%.tex $(BASE).sty $(BASE).tex
	- pdflatex -ini -jobname=$*  "&pdflatex" mylatexformat.ltx $*.tex

# Nur Fehlermeldungen ausgeben
check: $(BASE).pdf
	@echo; echo "*******************************"; echo; echo;
	$(LATEX) -interaction=nonstopmode $(BASE).tex 2>&1  | egrep "LaTeX Warning";	\
	if [ $$? -ne 0 ]; then exit 0; else exit 1; fi

# Die Datei "Makefile." muss unter Linux existieren, da ProTexT (Windows)
# einen Bug hat, der verhindert, dass eine Datei ohne einen Punkt mittels
# des listings-Paketets inkludiert werden kann. (Siehe "kapitel2.tex")
Makefile. : Makefile
	ln -s Makefile Makefile.

# Hilfsdateien loeschen
clean:
	rm -f *.toc *.dvi *.aux *.log *.blg *.bbl *.out *.for   \
	      *.lof *.lol *.lot *.bcf *.run.xml *-blx.bib *.idx \
	      *.ind *.ilg *.blg *.tdo				\
	      *~

# Wirklich alles loeschen
realclean: clean
	rm -f $(BASE).pdf $(BASE).fmt

# Erstelle tar-Archiv des ganzen Verzeichnisses
tar: $(BASE).pdf
	$(MAKE) clean
	D=`pwd`; D=`basename $$D`;		\
	cd ..; 					\
	tar --exclude "*.tar.gz" --exclude RCS  \
	    --exclude Pakete --exclude "*.fmt"  \
	    --dereference			\
	    -czvf $$D/latex-vorlage-`date "+%Y-%m-%d"`.tar.gz $$D
