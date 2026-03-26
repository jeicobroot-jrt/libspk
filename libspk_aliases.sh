sysrecovery() {
	sudo pacman -Syu
	sudo pacman -Sua --devel
	sudo pacman -Sc
	reboot
}

spk-init() {
	echo "==+> creating the directory of the base on /etc/"
	mkdir /etc/libspk-base/
	echo "==!> succesfully created the home of libspk"
	echo "==+> moving the package files on: /etc/libspk-base"
	mv ~/lib-SPK/PKGBUILD /etc/libspk-base/
	mv ~/lib-SPK/libspk_aliases.sh /etc/libspk-base
	echo "==!> succesfully moved the package data"
	clear
}

spk-update() {
	sudo pacman -S libspk
}

spk-ls() {
	ls /etc/libspk-base 2>/dev/null || echo "any of the files are here!"
	echo "exiting,aborted by the system!"
}

