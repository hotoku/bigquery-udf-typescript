.PHONY: load prepare build test

load: dist/greet.sql dist
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
