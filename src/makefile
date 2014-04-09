DPI ?= 90

OBJDIR := $(PWD)
SOURCES=$(wildcard assets/minecraft/textures/blocks/*.svg)
OBJECTS=$(addprefix $(OBJDIR)/,$(SOURCES:.svg=.png))

all: $(OBJECTS) quant
	cp pack.mcmeta $(OBJDIR)

$(OBJECTS): $(OBJDIR)/%.png : %.svg
	mkdir -p $(@D)
	inkscape -z -e $@ -C -d $(DPI) $<

quant:
	pngquant --force --quality 90-100 --ext=.png $(OBJECTS)

clean:
	rm -f $(OBJECTS)

.PHONY: clean all
