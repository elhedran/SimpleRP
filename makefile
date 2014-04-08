all:
	mkdir -p build
	(cd build && make -C ../src) 

clean:
	rm -r build
