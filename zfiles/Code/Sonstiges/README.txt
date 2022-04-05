                          Prof. Dr. Juergen Vollmer
                      <juergen.vollmer@dhbw-karlsruhe.de>
                           $Date: 2020/03/13 15:53:15 $


Installation von LaTeX unter Microsoft Windows
==============================================
  - Download von proTeXt von
    	     http://www.dante.de
    bzw.
    	     http://www.tug.org/protext/

  - Die Datei
    	      ProTeXt-VESION.exe
    ist ein selbstextrahierendes Archiv. Sie sollte mit Administrationsrechten
    ausgefuehrt werden und ihr Ergebnis in ein Verzeichnis DIR
    auspacken.

  - Im Verzeichnis DIR die Datei "setup" mittels Doppelklick starten.

  - Als Sprache "Deutsch" und ide TeX-Variante "ProTeXt" auswaehlen.

  - Es startet der Adobe-Acrobat-Reader (der natuerlich installiert
    sein muss).

  - Das angezeigte Dokument lesen, es steuert die restliche Installation.
    Dazu muss man an einigen Stellen die angezeigten Links anklicken:
	- "Klicken Sie hier, um MiKTEX zu installieren"
	  	   "Complete MiKTeX" auswaehlen
	  	   "Anyone whi uses thus computer" auswaehlen
	 	    "Install missing packages on the fly --> YES"
                   "Klicken Sie hier, um TEXnicCenter zu installieren"
	- "Klicken Sie hier, um Ghostscript zu installieren"
	- "Klicken Sie hier, um GSview zu installieren"

  - Die LaTeX IDE "TeXnicCenter" starten und die automatisch
    gestartete Konfiguration durchfuehren.

Installation von LaTeX unter Linux
==================================
   - Benutzen Sie das Software-Installations-Tool Ihrer Distribution und
     installieren Sie LaTeX.
     Fuer SuSE sind dies zumindest die Pakete "texlive-*".

   - Wenn Sie private oder selbstentwickelte Pakete installieren moechten,
     legen Sie ein Verzeichnis $(HOME)/tex/textmf an, und installieren Sie
     Ihre Pakete untergalkb dieses Verzeichnisses.
     Definieren Sie dann (in ~/.bashrc) noch die Umgebungsvariablen:

     # Wo werden die diversen Dateien gesucht:
     # Ein // am Ende bedeutet: in allen Unterverzeichnissen
     # BIBTEX-Style Files (*.bst)
     export BSTINPUTS=.//:$HOME/tex/texmf/tex//:/usr/share/texmf//:$BSTINPUTS

     # BIBTEX Datenbank(en) (*.bib)
     export BIBINPUTS=.//:$HOME/tex/bib//:$BIBINPUTS

     # LaTeX Styles und Klassen (*.sty, *.cls)
     export TEXINPUTS=.//:$HOME/tex/texmf/tex//:/usr/share/texmf//:$TEXINPUTS

   - Wenn Sie EMACS benutzen, installieren Sie das Emacs-Lisp-Paket "auctex".

   - Wenn Sie VI (VIM) benutzen, installieren Sie die Paket
     vim-plugin-latex und vim-plugin-matchit

   - Weitere LaTeX IDE's
     - texmaker
     - lyx
     - kile / kde3-kile

Installation von LaTeX unter Mac OS
===================================
Mactex ist ein Package, das alles beinhaltet was man fuer Latex auf Mac OS
benoetigt...: http://www.tug.org/mactex/

Sonstige Programme
==================

   - Erstellung von Vektorgraphiken:
     - xfig und transfig (Umwandlung von mit xfig erzeugten Bildern in PNG etc.)
       http://www.xfig.org
       Linux (via Software-Managment-Tools installierbar)
       Microsoft Windows (siehe http://www.xfig.org/tools.html)
     - inkscape (SVG-Editor)
       http://inkscape.org
       Linux  (via Software-Managment-Tools installierbar)
       Microsoft-Windows (http://inkscape.org/download)
       Mac (http://inkscape.org/download)
