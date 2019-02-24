#!/bin/bash
# Mini CSS

function download() {
	git clone git@github.com:Chalarangelo/mini.css.git
	cd mini.css
	open .
}

css_link="<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mini.css/3.0.1/mini-default.min.css" />"
css_link2="<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mini.css/3.0.1/mini-nord.min.css" />"
css_link3="<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mini.css/3.0.1/mini-dark.min.css" />"

echo
echo "$question"
read answer
if [ "$answer" = "yes" ]; then
	if [ -d "mini.css" ]; then
		echo "Mini CSS directory already exist."
		# echo "$exit_key"
		break
	fi
	if [ ! -d "mini.css" ]; then
		echo "Mini CSS is downloading ..."
		echo
		download
		echo
		echo "$down_complete"
		echo
		open https://minicss.org
		break
	fi
	elif [ "$answer" = "no" ]; then
		echo "$cdn_source"
		echo "$css_link"
		echo "$css_link2"
		echo "$css_link3"
		echo
		echo "$use_source"
		break
	else
	echo "$wrong_answer"
	break
fi