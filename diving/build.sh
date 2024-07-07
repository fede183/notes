#!/bin/sh

files=$(ls | grep ".ms" | sed "s/\..\+$//g")

for file in $files; do
	groff -ms $file.ms -T pdf > $file.pdf
done
