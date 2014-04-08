.SUFFIXES:

RELATIVE ?= .
SRCDIR ?= $(CURDIR)
OBJDIR := $(PWD)/$(RELATIVE)

SOURCES=$(wildcard *.svg)
OBJECTS=$(addprefix $(OBJDIR)/,$(SOURCES:.svg=.png))
#OBJECTS=$(SOURCES:.svg=.png)

$(OBJECTS):
	echo $(@)
	mkdir -p $(@D)
	inkscape -z -e $@ -C -w 128 -h 128 $(@F:.png=.svg)

all: $(OBJECTS) $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ RELATIVE=$(RELATIVE)/$@
