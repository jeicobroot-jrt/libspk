pkgname=libspk
pkgver=0.0.7
pkgrel=10
pkgdesc="Custom commands (functions) and connector of SPK packages for Arch Linux"
arch=('x86_64')
url="https://github.com/Jeicobroot-jrt/libspk.git"
license=('MIT')
install=SPK.install
source=("SPK_aliases.sh")
sha256sums=('1f75aee089919bc8b2af091fb7f3704e253c7754b97c0d1e50ffb41d07a6309b')

package() {
    install -Dm644 "$srcdir/SPK_aliases.sh" \
        "$pkgdir/usr/share/spk/SPK_aliases.sh"
}
