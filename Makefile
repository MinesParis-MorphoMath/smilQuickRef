
OBJECTS = 	SmilQuickReference.pdf 

all : $(OBJECTS)

.SUFFIXES: .tex .pdf

.tex.pdf :
	@echo "** Building $@..."
	@pdflatex $< > /dev/null

clean:
	@rm -f *.bak*             include/*.bak*
	@rm -f *.aux              include/*.aux
	@rm -f *.lof              include/*.lof
	@rm -f *.log              include/*.log
	@rm -f *.toc              include/*.toc
	@rm -f *.fmt              include/*.fmt
	@rm -f *.fot              include/*.fot
	@rm -f *.out              include/*.out
	@rm -f *.dvi              include/*.dvi
	@rm -f *.xdv              include/*.xdv
	@rm -f .pdf               include/.pdf
	@rm -f *.bbl              include/*.bbl
	@rm -f *.bcf              include/*.bcf
	@rm -f *.blg              include/*.blg
	@rm -f *-blx.aux          include/*-blx.aux
	@rm -f *-blx.bib          include/*-blx.bib
	@rm -f *.synctex*         include/*.synctex*
	@rm -f *.pdfsync          include/*.pdfsync
	@rm -f *.tfm              include/*.tfm
	@rm -f *.?end             include/*.?end
	@rm -f *.[1-9]            include/*.[1-9]
	@rm -f *.[1-9][0-9]       include/*.[1-9][0-9]
	@rm -f *.[1-9][0-9][0-9]  include/*.[1-9][0-9][0-9]
	@rm -f *.sav              include/*.sav
	@rm -f *.backup           include/*.backup
	@rm -f .*.swp             include/.*.swp

realclean : clean
	@rm -f *.pdf
	@rm -f *.org include/*.org


