#!/bin/bash
# Spectre

function download() {
	git clone git@github.com:picturepan2/spectre.git
	cd spectre
	open .
}

css_link="<link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre.min.css">"

echo
echo "$question"
read answer
if [ "$answer" = "yes" ]; then
	if [ -d "spectre" ]; then
		echo "Spectre directory already exist."
		# echo "$exit_key"
		break
	fi
	if [ ! -d "spectre" ]; then
		echo "Spectre is downloading ..."
		echo
		download
		echo
		echo "$down_complete"
		echo
		open https://picturepan2.github.io/spectre/
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