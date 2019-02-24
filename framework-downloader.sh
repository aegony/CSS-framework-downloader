#!/bin/bash
# CSS framework downloader

clear
title1="---------------------------------------"
title2="-= Frontend CSS Framework Downlaoder =-"
title3="---------------------------------------"
echo

echo "$title1"
echo "$title2"
echo "$title3"

while true
do

prompt=":: Please choose which CSS framework you wish to download >> "

PS3="$prompt"

# variables
question="Would you like to download? yes/no"
cdn_source=":: CDN Sources ::"
use_source="Please use one of CDN sources above."
down_complete="!!! Downloading complete !!!"
wrong_answer="Sorry i don't understand. Please type yes or no."
exit_key="Press ENTER for exit"

# select options menu
options=("Bootstrap 4" "Semantic UI" "Foundation" "Materialize CSS" "Pure CSS" "Skeleton" "UI Kit" "Milligram" "Susy" "Bulma" "MiniCSS" "Kube" "Picnic" "Spectre" "Quit")
echo
select opt in "${options[@]}"
do
	case $opt in
		"Bootstrap 4")
			[[ -s "./frameworks/bootstrap.sh" ]] && source "./frameworks/bootstrap.sh"
			exec "./frameworks/bootstrap.sh"
			break
			;;
		"Semantic UI")
			[[ -s "./frameworks/semantic-ui.sh" ]] && source "./frameworks/semantic-ui.sh"
			exec "./frameworks/semantic-ui.sh"
			break
			;;
		"Foundation")
			[[ -s "./frameworks/foundation.sh" ]] && source "./frameworks/foundation.sh"
			exec "./frameworks/foundation.sh"
			break
			;;
		"Materialize CSS")
			[[ -s "./frameworks/materializecss.sh" ]] && source "./frameworks/materializecss.sh"
			exec "./frameworks/materializecss.sh"
			;;
		"Pure CSS")
			[[ -s "./frameworks/purecss.sh" ]] && source "./frameworks/purecss.sh"
			exec "./frameworks/purecss.sh"
			;;
		"Skeleton")
			[[ -s "./frameworks/skeleton.sh" ]] && source "./frameworks/skeleton.sh"
			exec "./frameworks/skeleton.sh"
			;;
		"UI Kit")
			[[ -s "./frameworks/uikit.sh" ]] && source "./frameworks/uikit.sh"
			exec "./frameworks/uikit.sh"
			;;
		"Milligram")
			[[ -s "./frameworks/milligram.sh" ]] && source "./frameworks/milligram.sh"
			exec "./frameworks/milligram.sh"
			;;
		"Susy")
			[[ -s "./frameworks/susy.sh" ]] && source "./frameworks/susy.sh"
			exec "./frameworks/susy.sh"
			;;
		"Bulma")
			[[ -s "./frameworks/bulma.sh" ]] && source "./frameworks/bulma.sh"
			exec "./frameworks/bulma.sh"
			;;
		"MiniCSS")
			[[ -s "./frameworks/minicss.sh" ]] && source "./frameworks/minicss.sh"
			exec "./frameworks/minicss.sh"
			;;
		"Kube")
			[[ -s "./frameworks/kube.sh" ]] && source "./frameworks/kube.sh"
			exec "./frameworks/kube.sh"
			;;
		"Picnic")
			[[ -s "./frameworks/picnic.sh" ]] && source "./frameworks/picnic.sh"
			exec "./frameworks/picnic.sh"
			;;
		"Spectre")
			[[ -s "./frameworks/spectre.sh" ]] && source "./frameworks/spectre.sh"
			exec "./frameworks/spectre.sh"
			;;
		"Quit")
			exit
			;;
		*) echo "invalid option $REPLY";;
	esac
done
done