#!/bin/bash
# Kube

function download() {
	git clone git@github.com:imperavi/kubeframework.git
	cd kubeframework
	open .
}

css_link="<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/kube/6.5.2/css/kube.min.css" />"
java_link="<script src="https://cdnjs.cloudflare.com/ajax/libs/kube/6.5.2/js/kube.min.js"></script>"

echo
echo "$question"
read answer
if [ "$answer" = "yes" ]; then
	if [ -d "kubeframework" ]; then
		echo "Kube framework directory already exist."
		# echo "$exit_key"
		break
	fi
	if [ ! -d "kubeframework" ]; then
		echo "Kube framework is downloading ..."
		echo
		download
		echo
		echo "$down_complete"
		echo
		open https://imperavi.com/kube/
		break
	fi
	elif [ "$answer" = "no" ]; then
		echo "$cdn_source"
		echo "$css_link"
		echo "$java_link"
		echo
		echo "$use_source"
		break
	else
		echo "$wrong_answer"
		break
	fi