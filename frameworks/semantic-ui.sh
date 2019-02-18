#!/bin/bash
# Semantic UI

function download() {
	wget -c https://github.com/Semantic-Org/Semantic-UI-CSS/archive/master.zip
	mv master.zip semantic-ui.zip
	unzip semantic-ui.zip
	rm -R semantic-ui.zip
	open .
}

css_link="<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css" />"
java_link="<script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"></script>"

echo
echo "$question"
read answer
if [ "$answer" = "yes" ]; then
	if [ -d "Semantic-UI-CSS-master" ]; then
		echo "Semantic UI directory already exist."
		# echo "$exit_key"
		break
	fi
	if [ ! -d "Semantic-UI-CSS-master" ]; then
		echo "Semantic UI is downloading ..."
		echo
		download
		echo
		echo "$down_complete"
		echo
		open https://semantic-ui.com
		break
	fi
	elif [ "$answer" = "no" ]; then
		echo "$cdn_source"
		echo "$css_link"
		echo
		echo "$java_link"
		echo
		echo "$use_source"
		break
	else
		echo "$wrong_answer"
	fi
