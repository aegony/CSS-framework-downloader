#!/bin/bash
# Bootstrap

function download() {
	wget -c https://github.com/twbs/bootstrap/archive/v4.0.0.zip
	mv v4.0.0.zip bootstrap-v4.0.0.zip
	unzip bootstrap-v4.0.0.zip
	rm -R bootstrap-v4.0.0.zip
	cd bootstrap-4.0.0
	open .
}

css_link="<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">"
java_link="<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"</script>"
bundle_link="<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>"

echo
echo "$question"
read answer
if [ "$answer" = "yes" ];	then
	if [ -d "bootstrap-4.0.0" ]; then
		echo "Bootstrap directory already exist."
		# echo "$exit_key"
		break
	fi
	if [ ! -d "bootstrap-4.0.0" ]; then
		echo "Bootstrap 4.0.0 is downloading ..."
		echo
		download
		echo
		echo "$down_complete"
		echo
		open https://getbootstrap.com
		break
	fi
	elif [ "$answer" = "no" ]; then
		echo "$cdn_source"
		echo "$css_link"
		echo "$java_link"
		echo
		echo "Complete Javascript Bundle"
		echo "$bundle_link"
		echo
		echo "$use_source"
		break
	else
		echo "$wrong_answer"
	fi
