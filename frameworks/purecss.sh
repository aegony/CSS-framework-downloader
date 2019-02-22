#!/bin/bash
# Pure CSS

function download() {
	wget -c https://github.com/pure-css/pure-release/archive/v1.0.0.zip
	mv v1.0.0.zip pure-css-start.zip
	unzip pure-css-start.zip
	rm -R pure-css-start.zip
	cd pure-release-1.0.0
	open .
}

css_link="<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/pure/1.0.0/pure-min.css" />"
more_link="https://cdnjs.com/libraries/pure"

echo
echo "$question"
read answer
if [ "$answer" = "yes" ]; then
	if [ -d "pure-css-start" ]; then
		echo "Pure CSS directory already exist."
		# echo "$exit_key"
		break
	fi
	if [ ! -d "pure-css-start" ]; then
		echo "Pure CSS is downloading ..."
		echo
		download
		echo
		echo "$down_complete"
		echo
		open https://purecss.io
		break
	fi
	elif [ "$answer" = "no" ]; then
		echo "$cdn_source"
		echo "$css_link"
		echo
		echo "For more CDN links visit:"
		echo "$more_link"
		echo
		echo "$use_source"
		break
	else
		echo "$wrong_answer"
		break
	fi