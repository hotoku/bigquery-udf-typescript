# bigquery-udf-typescript

## What is this repositry about ?

This is a sample code implementing a BigQuery UDF in TypeScript. 
It is intended as memorandum for several configuration files (package.json, webpack-config.js, tsconfig.json) and necessary commands (Makefile).

## How to use

Executing `make` will do following:

1. compile .ts files to JavaScript
1. package generated js files
1. make a sql file embedded packaged js code
1. run the sql file
