DPI ?= 90

OBJDIR := $(PWD)

#vanila
SOURCES=$(wildcard assets/minecraft/textures/blocks/*.svg)
SOURCES+=$(wildcard assets/minecraft/textures/colormap/*.svg)
SOURCES+=pack.png

META=$(wildcard assets/minecraft/textures/blocks/*.mcmeta)
META+=pack.mcmeta

#thaumcraft
SOURCES+=$(wildcard assets/thaumcraft/textures/blocks/*.svg)
SOURCES+=$(wildcard assets/thaumcraft/textures/models/*.svg)

OBJECTS=$(addprefix $(OBJDIR)/,$(SOURCES:.svg=.png))
META_DEST=$(addprefix $(OBJDIR)/,$(META))
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

meta: $(META_DEST)

$(META_DEST): $(OBJDIR)/% : %
	mkdir -p $(@D)
	cp $< $@

clean:
	rm -f $(OBJECTS)

.PHONY: clean all meta vacuum
