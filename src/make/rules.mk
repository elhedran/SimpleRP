.SUFFIXES:

RELATIVE ?= .
SRCDIR ?= $(CURDIR)
OBJDIR := $(PWD)/$(RELATIVE)

SOURCES=$(wildcard *.svg)
OBJECTS=$(addprefix $(OBJDIR)/,$(SOURCES:.svg=.png))
#OBJECTS=$(SOURCES:.svg=.png)

all: $(OBJECTS) subdirs $(SUBDIRS)

$(OBJECTS): $(addprefix $(SRCDIR),$(@F:.png=.svg))
	mkdir -p $(@D)
	inkscape -z -e $@ -C -w 128 -h 128 $(@F:.png=.svg)

.PHONY: subdirs $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@ RELATIVE=$(RELATIVE)/$@
