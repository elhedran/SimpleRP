SOURCES = \
	planks_oak.svg \
	planks_birch.svg \
	planks_jungle.svg \
	planks_spruce.svg \

OBJECTS=$(SOURCES:.svg=.png)


all: $(OBJECTS)

$(OBJECTS) : $(SOURCES)

%.png : %.svg
	inkscape -z -e $@ -C -w 128 -h 128 $<

.PHONE: clean
clean:
	-rm $(OBJECTS)
