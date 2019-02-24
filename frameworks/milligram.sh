#!/bin/bash
# Milligram

function download() {
	wget https://github.com/milligram/milligram/archive/v1.3.0.zip
	mv v1.3.0.zip milligram-v1.3.0.zip
	unzip milligram-v1.3.0.zip
	rm -R milligram-v1.3.0.zip
	cd milligram-1.3.0
	open .
}

css_link="<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/milligram/1.3.0/milligram.min.css" />"

echo
echo "$question"
read answer
if [ "$answer" = "yes" ]; then
	if [ -d "milligram-1.3.0" ]; then
		echo "Milligram directory already exist."
		# echo "$exit_key"
		break
	fi
	if [ ! -d "milligram-1.3.0" ]; then
		echo "Milligram is downloading ..."
		echo
		download
		echo
		echo "$down_complete"
		echo
		open https://milligram.io
		break
	fi
	elif [ "$answer" = "no" ]; then
		echo "$cdn_source"
		echo "$css_link"
		echo
		echo "$use_source"
		break
	else
	echo "$wrong_answer"
	break
fi