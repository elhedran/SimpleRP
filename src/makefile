OBJDIR := $(PWD)
SOURCES=$(wildcard assets/minecraft/textures/blocks/*.svg)
OBJECTS=$(addprefix $(OBJDIR)/,$(SOURCES:.svg=.png))

all: $(OBJECTS)
	echo "get $(OBJECTS)	"

$(OBJECTS): $(OBJDIR)/%.png : %.svg
	echo "from $< .. $@"
	mkdir -p $(@D)
	inkscape -z -e $@ -C -w 128 -h 128 $<

.PHONY: clean
clean:
	rm -f $(OBJECTS)
