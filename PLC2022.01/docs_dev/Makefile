all: docs_dev

path = ./bin

apart = idea.tex

bpart = structure.tex

cpart = algorithm.tex

dpart = implementation.tex

docs_dev: $(apart) $(bpart) $(cpart) $(dpart)
	pdflatex -output-directory=$(path) $(apart) $(bpart) $(cpart) $(dpart)

a: $(apart)
	pdflatex -output-directory=$(path) $(apart)

b: $(bpart)
	pdflatex -output-directory=$(path) $(bpart)

c: $(cpart)
	pdflatex -output-directory=$(path) $(cpart)

d: $(dpart)
	pdflatex -output-directory=$(path) $(dpart)
