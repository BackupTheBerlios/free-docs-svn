#!/bin/sh
ls -R _Images/*/*.eps | \
while read FILE 
do 
	echo "Converting ${FILE} to pdf."
	epstopdf ${FILE} 
done
