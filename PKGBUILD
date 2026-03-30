pkgname=libspk
pkgver=0.1.2
pkgrel=10
pkgdesc="Custom commands (functions) and connector of SPK packages for Arch Linux"
arch=('x86_64')
url="https://github.com/Jeicobroot-jrt/libspk.git"
license=('MIT')
install=SPK.install
source=("SPK_aliases.sh")
sha256sums=('172ae6eb71972e461bfcda1714c037015daa5bfee789a85d3c47311ba8ebcebf')

package() {
    install -Dm644 "$srcdir/SPK_aliases.sh" \
        "$pkgdir/usr/share/spk/SPK_aliases.sh"
}
#
#
