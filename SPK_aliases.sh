spk_sysrecovery() {
    echo "==!> WARNING: This will update system and reboot."
    read -p "Continue? (y/N): " confirm
    [[ $confirm != "y" ]] && return

    sudo pacman -Syu
    sudo pacman -Sc

    echo "Rebooting..."
    reboot
}

spk_initialize() {
    sudo mkdir -p /lspbs/libspk-base/

    echo "==+> Moving package files..."

    if [[ -f ~/SPK/PKGBUILD && -f ~/SPK/libspk_aliases.sh ]]; then
    echo "==!>¿really do you want to move to a secure directory?"
         read -p "Continue? (y/N): " confirm
    [[ $confirm != "y" ]] && return
    	mv ~/SPK/ /lspbs/libspk-base

        echo "==+> Files moved successfully"
    else
        echo "==-> ERROR: Files not found in ~/lib-SPK/"
    fi
}

spk_update() {
    sudo pacman -S libspk
else
     echo "==-> No internet or package not found"
}

spk_libsearch() {
    ls /lspbs/libspk-base 2>/dev/null
else
     echo "==-> No files found"
}

#
#
