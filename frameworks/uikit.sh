#!/bin/bash
# UI Kit CSS

function download() {
	git clone git://github.com/uikit/uikit.git
	cd uikit
	open .
}

css_link="<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/css/uikit.min.css">"
java_link="<script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit.min.js"></script>"
java_link2="<script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit-icons.min.js"></script>"

echo
echo "$question"
read answer
if [ "$answer" = "yes" ]; then
	if [ -d "uikit" ]; then
		echo "UI Kit directory already exist."
		# echo "$exit_key"
		break
	fi
	if [ ! -d "uikit" ]; then
		echo "UI Kit is downloading ..."
		echo
		download
		echo "$down_complete"
		echo
		open https://getuikit.com
		break
	fi
	elif [ "$answer" = "no" ]; then
		echo "$cdnsource"
		echo "$css_link"
		echo "$java_link"
		echo "$java_link2"
		echo
		echo "$use_source"
		break
	else
	echo "$wrong_answer"
	break
fi