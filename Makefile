pdfviewer = okular
latex = pdflatex

pics := flow.pic

project.pdf : project.dvi
	#dvips project.dvi
	#ps2pdf project.ps
	
project.dvi : project.bbl project.tex  
	$(latex) project.tex
	
$(pics) : %.pic : %.flo
	flow  $< $@

project.bbl : project.tex
	# generate .aux
	$(latex) project.tex
	# generate .bbl
	bibtex project
	# integrate .bbl
	$(latex) project.tex
	
view : project.pdf
	$(pdfviewer) project.pdf &
	
clean :
	rm *.pic *.aux *.bbl *.blg *.log *.dvi *.ps  *.pdf *.out
