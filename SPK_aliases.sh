spk() {
    echo ":: spackit lib functioning"
}

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
    echo "==+> Creating base directory in /etc/"
    sudo mkdir -p /etc/libspk-base/

    echo "==+> Moving package files..."

    if [[ -f ~/lib-SPK/PKGBUILD && -f ~/lib-SPK/libspk_aliases.sh ]]; then
        sudo mv ~/lib-SPK/PKGBUILD /etc/libspk-base/
        sudo mv ~/lib-SPK/libspk_aliases.sh /etc/libspk-base/
        echo "==!> Files moved successfully"
    else
        echo "==!> ERROR: Files not found in ~/lib-SPK/"
    fi
}

spk_update() {
    sudo pacman -S libspk || echo "==!> No internet or package not found"
}

spk_libsearch() {
    ls /etc/libspk-base 2>/dev/null || echo "==!> No files found"
}

spk_suprime() {
    echo "==> Do you want to hard refresh spackit?"
    echo "Run: spk_sysrecovery"
}

#
