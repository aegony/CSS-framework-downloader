#!/bin/bash
# frontend CSS framework downloader

clear
title1="---------------------------------------"
title2="-= Frontend CSS Framework Downlaoder =-"
title3="---------------------------------------"
echo

echo "$title1"
echo "$title2"
echo "$title3"

prompt=":: Please choose which CSS framework you wish to download >> "

PS3="$prompt"

cdn=":: CDN Sources ::"
downpack="!!! Downloading complete !!!"

options=("Bootstrap 4" "Semantic UI" "Foundation" "Materialize CSS" "Pure CSS" "Skeleton" "UI Kit" "Milligram" "Susy" "Bulma" "MiniCSS" "Kube" "Picnic" "Spectre" "Quit")
echo
select opt in "${options[@]}"
do
	case $opt in
		"Bootstrap 4")
			echo
			echo "Bootstrap 4.0.0 is downloading ..."
			echo
			echo "$cdn"
			echo "<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">"
			echo "<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"</script>"
			echo
			echo "Complete Javascript Bundle"
			echo "<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>"
			echo
			read -p "Continue downloading in 10 seconds or press ^C for exit ..." -t 10
			echo
			wget -c https://github.com/twbs/bootstrap/archive/v4.0.0.zip
			mv v4.0.0.zip bootstrap-v4.0.0.zip
			unzip bootstrap-v4.0.0.zip
			rm -R bootstrap-v4.0.0.zip
			open .
			echo
			echo "$downpack"
			echo
			open https://getbootstrap.com
			;;
		"Semantic UI")
			echo
			echo "Semantic UI is downloading ..."
			echo
			echo "$cdn"
			echo "<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css" />"
			echo "<script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"></script>"
			echo
			read -p "Continue downloading in 10 seconds or press ^C for exit ..." -t 10
			echo
			wget -c https://github.com/Semantic-Org/Semantic-UI-CSS/archive/master.zip
			mv master.zip semantic-ui.zip
			unzip semantic-ui.zip
			rm -R semantic-ui.zip
			open .
			echo
			echo "$downpack"
			echo
			open https://semantic-ui.com
			;;
		"Foundation")
			echo
			echo "Foundation CSS is downloading ..."
			echo
			echo "$cdn"
			echo "<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/foundation-sites@6.5.3/dist/css/foundation.min.css" integrity="sha256-xpOKVlYXzQ3P03j397+jWFZLMBXLES3IiryeClgU5og= sha384-gP4DhqyoT9b1vaikoHi9XQ8If7UNLO73JFOOlQV1RATrA7D0O7TjJZifac6NwPps sha512-AKwIib1E+xDeXe0tCgbc9uSvPwVYl6Awj7xl0FoaPFostZHOuDQ1abnDNCYtxL/HWEnVOMrFyf91TDgLPi9pNg==" crossorigin="anonymous">"
			echo
			echo "<script src="https://cdn.jsdelivr.net/npm/foundation-sites@6.5.3/dist/js/foundation.min.js" integrity="sha256-/PFxCnsMh+nTuM0k3VJCRch1gwnCfKjaP8rJNq5SoBg= sha384-9ksAFjQjZnpqt6VtpjMjlp2S0qrGbcwF/rvrLUg2vciMhwc1UJJeAAOLuJ96w+Nj sha512-UMSn6RHqqJeJcIfV1eS2tPKCjzaHkU/KqgAnQ7Nzn0mLicFxaVhm9vq7zG5+0LALt15j1ljlg8Fp9PT1VGNmDw==" crossorigin="anonymous"></script>"
			echo
			read -p "Continue downloading in 10 seconds or press ^C for exit ..." -t 10
			echo
			wget -c https://foundation.zurb.com/sites/download.html/complete
			mv complete foundation-6.5.1-complete.zip
			unzip foundation-6.5.1-complete.zip
			rm -R foundation-6.5.1-complete.zip
			open .
			echo
			echo "$downpack"
			echo
			open https://foundation.zurb.com
			;;
		"Materialize CSS")
			echo
			echo "MetarializeCSS is downloading ..."
			echo
			echo "$cdn"
			echo "<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">"
			echo "<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>"
			echo
			read -p "Continue downloading in 10 seconds or press ^C for exit ..." -t 10
			echo
			wget https://github.com/Dogfalo/materialize/releases/download/1.0.0/materialize-v1.0.0.zip
			unzip materialize-v1.0.0.zip
			rm -R materialize-v1.0.0.zip
			open .
			echo
			echo "$downpack"
			echo
			open https://materializecss.com
			;;
		"Pure CSS")
			echo
			echo "Pure CSS is downloading ..."
			echo
			echo "$cdn"
			echo "<link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css" integrity="sha384-nn4HPE8lTHyVtfCBi5yW9d20FjT8BJwUXyWZT9InLYax14RDjBj46LmSztkmNP9w" crossorigin="anonymous">"
			echo
			read -p "Continue downloading in 10 seconds or press ^C for exit ..." -t 10
			echo
			wget -c https://github.com/pure-css/pure-release/archive/v1.0.0.zip
			mv v1.0.0.zip pure-css-start.zip
			unzip pure-css-start.zip
			rm -R pure-css-start.zip
			open .
			echo
			echo "$downpack"
			echo
			open https://purecss.io
			;;
		"Skeleton")
			echo
			echo "Skeleton is downloading ..."
			echo
			echo "$cdn"
			echo "<script src="https://cdnjs.cloudflare.com/ajax/libs/skeleton/2.0.4/skeleton.min.css"></script>"
			echo
			read -p "Continue downloading in 10 seconds or press ^C for exit ..." -t 10
			echo
			wget -c https://github.com/dhg/Skeleton/releases/download/2.0.4/Skeleton-2.0.4.zip
			unzip Skeleton-2.0.4.zip
			rm -R Skeleton-2.0.4.zip
			open .
			echo
			echo "$downpack"
			echo
			open http://getskeleton.com
			;;
		"UI Kit")
			echo
			echo "UI Kit is downloading ..."
			echo
			echo "$cdn"
			echo "<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/css/uikit.min.css">"
			echo "<script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit.min.js"></script>"
			echo "<script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit-icons.min.js"></script>"
			echo
			read -p "Continue downloading in 10 seconds or press ^C for exit ..." -t 10
			echo
			git clone git://github.com/uikit/uikit.git
			open .
			echo
			echo "$downpack"
			echo
			open https://getuikit.com
			;;
		"Milligram")
			echo
			echo "Milligram is downloading ..."
			echo
			echo "$cdn"
			echo "<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/milligram/1.3.0/milligram.min.css" />"
			echo
			read -p "Continue downloading in 10 seconds or press ^C for exit ..." -t 10 
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
			;;
		"Susy")
			echo
			echo "Susy is downloading ..."
			echo
			echo "$cdn"
			echo "there is no cdn cause of using SCSS grid-template in susy"
			echo
			read -p "Continue downloading in 10 seconds or press ^C for exit ..." -t 10
			echo
			git clone git@github.com:oddbird/susy.git
			open .
			echo
			echo "$downpack"
			echo
			open https://oddbird.net/susy/
			;;
		"Bulma")
			echo
			echo "Bulme v0.7.4 is downaloading ..."
			echo
			echo "$cdn"
			echo "<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css" />"
			echo
			read -p "Continue downloading in 10 seconds or press ^C for exit ..." -t 10
			echo
			wget -c https://github.com/jgthms/bulma/releases/download/0.7.4/bulma-0.7.4.zip
			unzip bulma-0.7.4.zip
			rm -R bulma-0.7.4.zip
			open .
			echo
			echo "$downpack"
			echo
			open https://bulma.io
			;;
		"MiniCSS")
			echo
			echo "MiniCSS is downloading ..."
			echo
			echo "$cdn"
			echo "<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mini.css/3.0.1/mini-default.min.css" />"
			echo "<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mini.css/3.0.1/mini-nord.min.css" />"
			echo "<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mini.css/3.0.1/mini-dark.min.css" />"
			echo
			read -p "Continue downloading in 10 seconds or press ^C for exit ..." -t 10
			echo
			git clone git@github.com:Chalarangelo/mini.css.git
			open .
			echo
			echo "$downpack"
			echo
			open https://minicss.org
			;;
		"Kube")
			echo
			echo "Kube is downloading ..."
			echo
			echo "$cdn"
			echo "<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/kube/6.5.2/css/kube.min.css" />"
			echo "<script src="https://cdnjs.cloudflare.com/ajax/libs/kube/6.5.2/js/kube.min.js"></script>"
			echo
			read -p "Continue downloading in 10 seconds or press ^C for exit ..." -t 10
			echo
			git clone git@github.com:imperavi/kubeframework.git
			open .
			echo
			echo "$downpack"
			echo
			open https://imperavi.com/kube/
			;;
		"Picnic")
			echo
			echo "Picnic is downloading ..."
			echo
			echo "$cdn"
			echo "<link rel="stylesheet" href="https://unpkg.com/picnic@6.5.0/picnic.min.css" />"
			echo
			read -p "Continue downloading in 10 seconds or press ^C for exit ..." -t 10
			echo
			gig clone git@github.com:franciscop/picnic.git
			open .
			echo "$downpack"
			echo
			open https://picnicss.com
			;;
		"Spectre")
			echo
			echo "Spectre is downloading ..."
			echo
			echo "$cdn"
			echo "<link rel="stylesheet" href="https://unpkg.com/spectre.css/dist/spectre.min.css">"
			echo
			read -p "Continue downloading in 10 seconds or press ^C for exit ..." -t 10
			echo
			git clone git@github.com:picturepan2/spectre.git
			open .
			echo "$downpack"
			echo
			open https://picturepan2.github.io/spectre/
			;;
		"Quit")
			break
			;;
		*) echo "invalid option $REPLY";;
	esac
done