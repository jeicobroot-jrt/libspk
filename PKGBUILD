pkgname=libspk
pkgver=0.0.8
pkgrel=10
pkgdesc="Custom commands (functions) and connector of SPK packages for Arch Linux"
arch=('x86_64')
url="https://github.com/Jeicobroot-jrt/libspk.git"
license=('MIT')
install=SPK.install
source=("SPK_aliases.sh")
sha256sums=('fec9c1e1271d43ee1caee6a2e017f4562ab56d71e96206d4f49efd540a54c8e3')

package() {
    install -Dm644 "$srcdir/SPK_aliases.sh" \
        "$pkgdir/usr/share/spk/SPK_aliases.sh"
}
#
