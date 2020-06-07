.PHONY: prepare build

run: dist/greet.sql dist
	cat $< | bq query

dist/%.sql: sql/%.jinja.sql build
	cp $< dist
	jinja2 $(subst sql/,dist/,$<) > $@

build:
	npm run build

prepare:
	npm i
