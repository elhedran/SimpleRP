all: r128 r64 r32 r16

r16:
	mkdir -p build/16
	(cd build/16 && make -C ../../src DPI=11.25) 

r32:
	mkdir -p build/32
	(cd build/32 && make -C ../../src DPI=22.5) 

r64:
	mkdir -p build/64
	(cd build/64 && make -C ../../src DPI=45) 

r128:
	mkdir -p build/128
	(cd build/128 && make -C ../../src DPI=90) 

.PHONY: r128 r64 r32 r16 

clean:
	rm -r build
