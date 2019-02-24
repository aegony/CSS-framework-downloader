#!/bin/bash
# Skeleton CSS

function download() {
	wget -c https://github.com/dhg/Skeleton/releases/download/2.0.4/Skeleton-2.0.4.zip
	unzip Skeleton-2.0.4.zip
	rm -R Skeleton-2.0.4.zip
	cd Skeleton-2.0.4
	open .
}

css_link="<script src="https://cdnjs.cloudflare.com/ajax/libs/skeleton/2.0.4/skeleton.min.css"></script>"

echo
echo "$question"
read answer
if [ "$answer" = "yes" ]; then
	if [ -d "Skeleton-2.0.4" ]; then
		echo "Skeleton 2.0.4 directory already exist."
		# echo "$exit_key"
		break
	fi
	if [ ! -d "Skeleton-2.0.4" ]; then
		echo "Skeleton 2.0.4 is downloading ..."
		echo
		download
		echo
		echo "$down_complete"
		echo
		open http://getskeleton.com
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