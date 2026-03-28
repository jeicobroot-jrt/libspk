pkgname=libspk
pkgver=0.1.1
pkgrel=10
pkgdesc="Custom commands (functions) and connector of SPK packages for Arch Linux"
arch=('x86_64')
url="https://github.com/Jeicobroot-jrt/libspk.git"
license=('MIT')
install=SPK.install
source=("SPK_aliases.sh")
sha256sums=('297cc22d2a2c8698828c2805953d5b068a3643b2a4969438d197e7764fb3815e')

package() {
    install -Dm644 "$srcdir/SPK_aliases.sh" \
        "$pkgdir/usr/share/spk/SPK_aliases.sh"
}
#
#
