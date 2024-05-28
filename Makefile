# Generate markdown document
RES_FILES = $(wildcard src/*.res) $(wildcard src/**/*.res)
MD_FILES := $(patsubst src/%,docs/generated/%,$(RES_FILES:.res=.md))

.PHONY: outdir all clean

outdir: 
	mkdir -p docs/generated

doc: outdir $(MD_FILES) docs/index.md

docs/generated/%.md: src/%.res
	npx rescript-tools doc $< > temp.json; npx rescript-doc temp.json > $@; rm temp.json

docs/index.md: outdir $(MD_FILES)
	cat $(MD_FILES) > $@

clean: 
	rm -rf ./docs/generated