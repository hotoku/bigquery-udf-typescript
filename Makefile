.PHONY: prepare

build:
	npm run build

prepare:
	npm i -D webpack webpack-cli typescript ts-loader @types/node
