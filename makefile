paper.pdf: paper.tex plot-data.png
	pdflatex paper.tex
plot-%.png: %.dat plot.py
	./plot.py -i $*.dat -o $@
.PHONY:clean
clear:
	rm *.pdf *.aux *.png *.log
	git ls-files -o|xargs rm -f
