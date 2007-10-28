SRC=00-unix-esme
TARGET_DIR=/home/rpelisse/Desktop
PROJECT_NAME=unix-initiation
VERSION=4.0
WORK=work
WEBSITE=website
IMG_DIR=_Images
PDF2LATEX=pdflatex -output-directory=$(WORK) -output-format=pdf -interaction=nonstopmode

all  :		pdf

site :  	clean
	mkdir website
	latex2html -address "<Sylvain Baudry> baudry@esme.fr" -style ./style.css -local_icons -dir ${WEBSITE} $(SRC).tex 
	cp ./_website/*.png ${WEBSITE}
	cp ${WEBSITE}/next.png ${WEBSITE}/next_g.png 
	cp ${WEBSITE}/prev.png ${WEBSITE}/prev_g.png 
	cp ${WEBSITE}/up.png	${WEBSITE}/up_g.png
	cp style.css ${WEBSITE}/style.css

cvt-img :
	./_tools/cvt-img.sh

pdf :		clean cvt-img

	mkdir $(WORK)
	ln -s $(IMG_DIR) $(WORK)/$(IMG_DIR)
	$(PDF2LATEX) $(SRC).tex
	makeindex $(WORK)/00-unix-esme.idx
	$(PDF2LATEX) $(SRC).tex
	
release:	

#this next file to retrieve the version number...
#	VERSION=`cat $(SRC).tex | egrep -e '\newcommand{\\docversion}' | \
#	sed -e 's/\(\\newcommand{\\docversion}{\)\([0-9\.]*\)\(}.*\)/\2/'`
	cp ./work/00-unix-esme.pdf poly-$(VERSION).pdf 

clean :
	rm -rf work
	rm -rf website
	rm -rf *.pdf
