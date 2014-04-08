SOURCES=$(wildcard *.svg)
OBJECTS=$(SOURCES:.svg=.png)

%.png : %.svg
	inkscape -z -e $@ -C -w 128 -h 128 $<

all: $(OBJECTS) $(SUBDIRS)

.PHONY: subdirs $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@

.PHONY: clean
clean: cleandirs
	-rm $(OBJECTS)

cleandirs:
	for dir in $(SUBDIRS); do \
	    $(MAKE) -C $$dir clean; \
	done
