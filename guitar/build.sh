#!/bin/sh

files=$(ls | grep ".ms" | sed "s/\..\+$//g")

tbl macros.ms | pic >> macros.roff

for file in $files; do
	tbl $file.ms | pic | groff -ms -Tpdf > $file.pdf
done

rm macros.roff
