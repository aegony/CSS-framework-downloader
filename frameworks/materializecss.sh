#!/bin/bash
# Materialize CSS

function download() {
	wget https://github.com/Dogfalo/materialize/releases/download/1.0.0/materialize-v1.0.0.zip
	unzip materialize-v1.0.0.zip -d materialize-v1.0.0
	rm -R materialize-v1.0.0.zip
	cd materialize-v1.0.0
	open .
}

css_link="<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">"
java_link="<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>"

echo
echo "$question"
read answer
if [ "$answer" = "yes" ]; then
	if [ -d "materialize-v1.0.0" ]; then
		echo "Materialize CSS 1.0.0 directory already exist."
		# echo "$exit_key"
		break
	fi
	if [ ! -d "materialize-v1.0.0" ]; then
		echo "Materialize CSS 1.0.0 is downloading ..."
		echo
		download
		echo "$down_complete"
		echo
		open https://materializecss.com
		break
	fi
	elif [ "$answer" = "no" ]; then
		echo "$cdnsource"
		echo "$css_link"
		echo "$java_link"
		echo
		echo "$use_source"
		break
	else
	echo "$wrong_answer"
	break
fi
