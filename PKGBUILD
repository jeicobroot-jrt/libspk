pkgname=libspk
pkgver=0.1.2
pkgrel=10
pkgdesc="Custom commands (functions) and connector of SPK packages for Arch Linux"
arch=('x86_64')
url="https://github.com/Jeicobroot-jrt/libspk.git"
license=('MIT')
install=SPK.install
source=("SPK_aliases.sh")
sha256sums=('a731c497c511f92ea6e27cbac50b844221bfe8523c17a6638dcb99e2415df28b')

package() {
    install -Dm644 "$srcdir/SPK_aliases.sh" \
        "$pkgdir/usr/share/spk/SPK_aliases.sh"
}
#
#
