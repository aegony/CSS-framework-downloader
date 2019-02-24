#!/bin/bash
# Picnic CSS

function download() {
	git clone git@github.com:franciscop/picnic.git
	cd picnic
	open .
}

css_link="<link rel="stylesheet" href="https://unpkg.com/picnic@6.5.0/picnic.min.css" />"

echo
echo "$question"
read answer
if [ "$answer" = "yes" ]; then
	if [ -d "picnic" ]; then
		echo "Picnic directory already exist."
		# echo "$exit_key"
		break
	fi
	if [ ! -d "picnic" ]; then
		echo "Picnic is downloading ..."
		echo
		download
		echo
		echo "$down_complete"
		echo
		open https://picnicss.com
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