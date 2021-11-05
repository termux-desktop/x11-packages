#!/usr/bin/bash

info() {
	echo -e "\033[1;36m\n==> $1\033[0m"
}

commet() {
	echo -e "\033[0;32m-> $1\033[0m"
}

# Update repo
info "Update repo."
git config pull.rebase false
git fetch --all
git pull upstream master
commet "Continue?"
git status
select yn in "Yes" "No"; do
	case $yn in
		Yes ) break;;
		No ) exit 1;;
	esac
done

# Set repo for auto push
read -p "Username: " username
read -sp "Key: " key
echo
git remote set-url origin "https://${username}:${key}@github.com/pkgs-termux/x11-packages.git"
git reset

# Edit file
for i in $(grep -l ">>>>>>>" packages/*/*); do
	rm $i
	wget -O $i https://raw.githubusercontent.com/termux/x11-packages/master/$i
done

# Sort file
info "Sort and push packages."
for i in $(git status packages/ | grep "packages/" | sed "s|modified:||g; s|new file:||g; s|deleted:||g; s|both||g; s|added:||g"); do
	file_sp=(${i//// })
	name=${file_sp[1]}
	commet "Package ${name}: ${i}."
	if [[ -n $list_name ]] && [[ ! $(echo $list_name | grep $name) ]]; then
		commet "Push package ${old_name}."
		git commit -m "Update package ${old_name}"
		git push origin master
	else
		git reset packages/${old_name}
	fi
	git add packages/${name}
	list_name+="$name "
	old_name="$name"
done
commet "Push package ${old_name}."
git commit -m "Update package ${old_name}"
git push origin master

git remote set-url origin "https://github.com/pkgs-termux/x11-packages"

info "Done."
