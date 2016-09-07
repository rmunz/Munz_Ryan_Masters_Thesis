all:
	multimarkdown -t latex -o paper.tex paper.mmd
	pdflatex paper.tex
	#biber paper
	pdflatex paper.tex

clean:
	rm -rf $(document) *.lof *.lot *.glg *.gls *.glo *.idx *.log *.out *.toc *.ist *.aux *.dvi *.bbl *.blg *.ps *.pdf paper.tex *.run.xml *.bcf _minted-paper

.PHONY: all clean
