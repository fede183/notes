#!/bin/sh

files=$(ls | grep ".ms" | sed "s/\..\+$//g")
echo "The files to parse: $files"

for file in $files; do
	groff -ms $file.ms -T pdf > $file.pdf
done
