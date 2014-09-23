#!/bin/bash
planets='Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune'

for databaseName in $planets
	do
	echo "$databaseName"
	curl http://en.wikipedia.org/wiki/"$databaseName" > $databaseName.html
	if [ -s $databaseName.html ]
		then
			echo "$databaseName worked"
		else
			echo "$databaseName did not work"
	fi
	git add $databaseName.html
done

git commit -m "added planet wiki"
git push https://github.com/cvisger/plants.git
