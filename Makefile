all: test

test: dashcheck.d example.d
	-./example.d

install:
	mkdir -p ~/.d/
	cp dashcheck.d ~/.d/

uninstall:
	-rm ~/.d/dashcheck.d
