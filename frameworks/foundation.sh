#!/bin/bash
# Foundation Zurb CSS

function download() {
	wget -c https://foundation.zurb.com/sites/download.html/complete
	mv complete foundation-6.5.1-complete.zip
	unzip foundation-6.5.1-complete.zip -d foundation-6.5.1
	rm -R foundation-6.5.1-complete.zip
	open .
}

css_link="<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.5.3/css/foundation.min.css" />"
java_link="<script src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.5.3/js/foundation.min.js"></script>"
more_source="https://cdnjs.com/libraries/foundation/6.5.3"

echo
echo "$question"
read answer
if [ "$answer" = "yes" ]; then
	if [ -d "foundation-6.5.1" ]; then
		echo "Foundation directory already exist."
		# echo "$exit_key"
		break
	fi
	if [ ! -d "foundation-6.5.1" ]; then
		echo "Foundation CSS is downloading ..."
		echo
		download
		echo "$down_complete"
		echo
		open https://foundation.zurb.com
		break
	fi
	elif [ "$answer" = "no" ]; then
		echo "$cdnsource"
		echo "$css_link"
		echo "$java_link"
		echo
		echo "For more CDN links visit:"
		echo "$more_source"
		echo
		echo "$use_source"
		break
	else
		echo "$wrong_answer"
		break
	fi
