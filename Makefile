all: test

test: dashcheck.d example.d
	-rdmd example.d

editorconfig:
	@git ls-files -z | grep -av patch | xargs -0 -r -n 100 $(shell npm bin)/eclint check

lint: editorconfig

install:
	@mkdir -p ~/.d
	@cp dashcheck.d ~/.d/

uninstall:
	-rm ~/.d/dashcheck.d
