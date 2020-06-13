.PHONY: load prepare build test clean

load: dist/greet.sql
	cat $< | bq query

dist/%.sql: sql/%.jinja.sql build
	cp $< dist
	jinja2 $(subst sql/,dist/,$<) > $@

build:
	npm run build

test:
	npm run test

prepare:
	npm i

clean:
	rm -rf dist
