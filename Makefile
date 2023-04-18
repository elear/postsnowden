
DOCS=	draft-farrell-tenyearsafter.txt \
	draft-farrell-tenyearsafter.xml \
	draft-farrell-tenyearsafter.html

all: $(DOCS)

%.xml:	%.mkd
	kramdown-rfc2629 $< > $@
%.html %.txt:	%.xml
	xml2rfc --html $<
	xml2rfc --text $<


