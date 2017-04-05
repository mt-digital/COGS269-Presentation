

pres:
	pandoc -t beamer -V theme:Berkeley main.md -o main.pdf && open main.pdf

supp-first: supplement.tex
	pdflatex supplement.tex

supp: supp-first
	bibtex supplement && pdflatex supplement.tex

osupp: supp
	open supplement.pdf

