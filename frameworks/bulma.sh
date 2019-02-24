#!/bin/bash
# Bulma CSS

function download() {
	wget -c https://github.com/jgthms/bulma/releases/download/0.7.4/bulma-0.7.4.zip
	unzip bulma-0.7.4.zip
	rm -R bulma-0.7.4.zip
	cd bulma-0.7.4
	open .
}

css_source="<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css" />"

echo
echo "$question"
read answer
if [ "$answer" = "yes" ]; then
	if [ -d "bulma-0.7.4" ]; then
		echo "Bulma 0.7.4 directory already exist."
		# echo "$exit_key"
		break
	fi
	if [ ! -d "bulma-0.7.4" ]; then
		echo "Bulma 0.7.4 is downloading ..."
		echo
		download
		echo
		echo "$down_complete"
		open https://bulma.io
		break
	fi
	elif [ "$answer" = "no" ]; then
		echo "$cdn_source"
		echo "$css_source"
		echo
		echo "$use_source"
		break
	else
		echo "$wrong_answer"
		break
	fi