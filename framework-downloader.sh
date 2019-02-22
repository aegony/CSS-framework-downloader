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
			echo
			echo "$cdn"
			echo "<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/milligram/1.3.0/milligram.min.css" />"
			echo
			echo "$question"
			read answer
			if [ "$answer" = "yes" ];
			then
				echo
				echo "Milligram is downloading ..."
				echo
				wget https://github.com/milligram/milligram/archive/v1.3.0.zip
				mv v1.3.0.zip milligram-v1.3.0.zip
				unzip milligram-v1.3.0.zip
				rm -R milligram-v1.3.0.zip
				open .
				echo
				echo "$downpack"
				echo 
				open https://milligram.io
			elif [ "$answer" = "no" ]; then
				echo
				echo "$cdnsource"
				echo
			else
				echo "$dont"
				exit 1
			fi
			;;
		"Susy")
			echo
			echo "$cdn"
			echo "dunno why there is no CDN"
			echo
			echo "$question"
			read answer
			if [ "$answer" = "yes" ];
			then
				echo
				echo "Susy is downloading ..."
				echo
				git clone git@github.com:oddbird/susy.git
				open .
				echo
				echo "$downpack"
				echo
				open https://oddbird.net/susy/
			elif [ "$answer" = "no" ]; then
				echo
				echo "$cdnsource"
				echo
			else
				echo "$dont"
				exit 1
			fi
			;;
		"Bulma")
			echo
			echo "$cdn"
			echo "<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css" />"
			echo
			echo "$question"
			read answer
			if [ "$answer" = "yes" ];
			then
				echo
				echo "Bulme v0.7.4 is downaloading ..."
				echo
				wget -c https://github.com/jgthms/bulma/releases/download/0.7.4/bulma-0.7.4.zip
				unzip bulma-0.7.4.zip
				rm -R bulma-0.7.4.zip
				open .
				echo
				echo "$downpack"
				echo
				open https://bulma.io
			elif [ "$answer" = "no" ]; then
				echo
				echo "$cdnsource"
				echo
			else
				echo "$dont"
				exit 1
			fi
			;;
		"MiniCSS")
			echo
			echo "$cdn"
			echo "<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mini.css/3.0.1/mini-default.min.css" />"
			echo "<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mini.css/3.0.1/mini-nord.min.css" />"
			echo "<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mini.css/3.0.1/mini-dark.min.css" />"
			echo
			echo "$question"
			read answer
			if [ "$answer" = "yes" ];
			then
				echo
				echo "MiniCSS is downloading ..."
				echo
				git clone git@github.com:Chalarangelo/mini.css.git
				open .
				echo
				echo "$downpack"
				echo
				open https://minicss.org
			elif [ "$answer" = "no" ]; then
				echo
				echo "$cdnsource"
				echo
			else
				echo "$dont"
				exit 1
			fi
			;;
		"Kube")
			echo
			echo "$cdn"
			echo "<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/kube/6.5.2/css/kube.min.css" />"
			echo
			echo "<script src="https://cdnjs.cloudflare.com/ajax/libs/kube/6.5.2/js/kube.min.js"></script>"
			echo
			echo "$question"
			read answer
			if [ "$answer" = "yes" ];
			then
				echo
				echo "Kube is downloading ..."
				echo
				git clone git@github.com:imperavi/kubeframework.git
				open .
				echo
				echo "$downpack"
				echo
				open https://imperavi.com/kube/
			elif [ "$answer" = "no" ]; then
				echo
				echo "$cdnsource"
				echo
			else
				echo "$dont"
				exit 1
			fi
			;;
		"Picnic")
			echo
			echo "$cdn"
			echo "<link rel="stylesheet" href="https://unpkg.com/picnic@6.5.0/picnic.min.css" />"
			echo
			echo "$question"
			read answer
			if [ "$answer" = "yes" ];
			then
				echo
				echo "Picnic is downloading ..."
				echo
				git clone git@github.com:franciscop/picnic.git
				open .
				echo "$downpack"
				echo
				open https://picnicss.com
			elif [ "$answer" = "no" ]; then
				echo
				echo "$cdnsource"
				echo
			else
				echo "$dont"
				exit 1
			fi
			;;
		"Spectre")
			echo
			echo "$cdn"
			echo "<link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre.min.css">"
			echo
			echo "$question"
			read answer
			if [ "$answer" = "yes" ];
			then
				echo
				echo "Spectre is downloading ..."
				echo
				git clone git@github.com:picturepan2/spectre.git
				open .
				echo "$downpack"
				echo
				open https://picturepan2.github.io/spectre/
			elif [ "$answer" = "no" ]; then
				echo
				echo "$cdnsource"
				echo
			else
				echo "$dont"
				exit 1
			fi
			;;
		"Quit")
			exit
			;;
		*) echo "invalid option $REPLY";;
	esac
done
done