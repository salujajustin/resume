all: clean pdf html

prepare:
	cp -v resume.rst resume.rst.in
pdf: prepare
	rst2pdf resume.rst.in --output=pdf/resume.pdf
html: prepare
	rst2html5 --stylesheet=css/resume.css --html-tag-attr='lang="en-US"' resume.rst.in >| html/resume.html
clean:
	rm -vf pdf/resume.pdf html/resume.html resume.rst.in

