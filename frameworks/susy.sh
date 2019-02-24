#!/bin/bash
# Susy

function download() {
	git clone git@github.com:oddbird/susy.git
	cd susy
	open .
}

echo
echo "$question"
read answer
if [ "$answer" = "yes" ]; then
	if [ -d "susy" ]; then
		echo "Susy directory already exist."
		# echo "$exit_key"
		break
	fi
	if [ ! -d "susy" ]; then
		echo "Susy is downloading ..."
		echo
		download
		echo "$down_complete"
		echo
		open https://oddbird.net/susy
		break
	fi
	elif [ "$answer" = "no" ]; then
		echo "$cdn_source"
		echo "dunno why there is no CDN source"
		break
	else
		echo "$wrong_answer"
		break
	fi