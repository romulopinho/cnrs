pdfviewer = okular
latex = pdflatex

pics := flow.pic

pdf : dvi
	#dvips project.dvi
	#ps2pdf project.ps
	
dvi : bbl  
	$(latex) project.tex
	
$(pics) : %.pic : %.flo
	flow  $< $@

bbl : 
	# generate .aux
	$(latex) project.tex
	# generate .bbl
	bibtex project
	
view : pdf
	$(pdfviewer) project.pdf &
	
clean :
	rm *.pic *.aux *.bbl *.blg *.log *.dvi *.ps  *.pdf *.out
