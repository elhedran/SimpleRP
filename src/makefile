DPI ?= 90

OBJDIR := $(PWD)
SOURCES=$(wildcard assets/minecraft/textures/blocks/*.svg)
OBJECTS=$(addprefix $(OBJDIR)/,$(SOURCES:.svg=.png))
SOURCES_V=$(addsuffix _V,$(SOURCES))

all: raster quant meta

raster: $(OBJECTS)

$(OBJECTS): $(OBJDIR)/%.png : %.svg
	mkdir -p $(@D)
	inkscape -z -e $@ -C -d $(DPI) $<

vacuum: $(SOURCES_V)

$(SOURCES_V):
	inkscape -z --vacuum-defs $(patsubst %_V,%,$@)

quant:
	pngquant --force --quality 90-100 --ext=.png $(OBJECTS)

meta: pack.mcmeta
	cp pack.mcmeta $(OBJDIR)

clean:
	rm -f $(OBJECTS)

.PHONY: clean all meta vacuum
