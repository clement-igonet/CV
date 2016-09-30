MD=$(wildcard *.md)

HTML=$(MD:.md=.html)
PDF=$(MD:.md=.pdf)
DOCX=$(MD:.md=.docx)
TXT=$(MD:.md=.txt)

all: $(HTML) $(PDF)

%.html: %.md style.css
	pandoc --standalone -c style.css --from markdown --to html -o $@ $<

%.pdf: %.html
	wkhtmltopdf -s A4 -B 5 -L 0 -R 0 -T 3 $< $@

%.docx: %.md
	pandoc --from markdown --to docx -o $@ $<

%.txt: %.md
	pandoc --standalone --smart --from markdown --to plain -o $@ $<

clean:
	rm -f *.html *.pdf *.docx *.txt
