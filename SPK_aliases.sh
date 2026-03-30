spk_sysrecovery() {
    echo "==!> WARNING: This will update system and reboot."
    read -p "Continue? (y/N): " confirm
    [[ "$confirm" != "y" ]] && return

    sudo pacman -Syu
    sudo pacman -Sc

    echo "Rebooting..."
    reboot
}

spk_initialize() {
    sudo mkdir -p /lspbs/libspk-base/

    echo "==::> Moving package files..."

    echo "==!> Do you really want to move to a secure directory?"
    read -p "Continue? (y/N): " confirm
    [[ "$confirm" != "y" ]] && return

    if [[ -f ~/SPK/PKGBUILD && -f ~/SPK/libspk_aliases.sh ]]; then
        sudo mv /usr/share/spk/SPK_aliases.sh /lspbs/libspk-base
        echo "==+> Files moved successfully"
    else
        echo "==-> Required files not found"
    fi
}

spk_update() {
    sudo pacman -S libspk
}

spk_libsearch() {
    if ls /lspbs/libspk-base 2>/dev/null; then
        echo "==+> Files listed"
    else
        echo "==-> No files found"
    fi
}

spk_connect() {
    echo "==::> Searching the S.C.N"

    if [ -d "/S.C.N/connect_network" ]; then
        ls /S.C.N/connect_network
        echo "==+> Connected successfully"
    else
        echo "==-> Error, you don't have SPKs"
    fi
}
