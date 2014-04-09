DPI ?= 90

OBJDIR := $(PWD)
SOURCES=$(wildcard assets/minecraft/textures/blocks/*.svg)
OBJECTS=$(addprefix $(OBJDIR)/,$(SOURCES:.svg=.png))

all: $(OBJECTS)
	echo "get $(OBJECTS)	"

$(OBJECTS): $(OBJDIR)/%.png : %.svg
	echo "from $< .. $@"
	mkdir -p $(@D)
	inkscape -z -e $@ -C -d $(DPI) $<

.PHONY: clean
clean:
	rm -f $(OBJECTS)
