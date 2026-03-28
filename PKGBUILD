pkgname=libspk
pkgver=0.0.6
pkgrel=10
pkgdesc="Custom commands (functions) and connector of SPK packages for Arch Linux"
arch=('x86_64')
url="https://github.com/Jeicobroot-jrt/libspk"
license=('MIT')
install=SPK.install
source=("SPK_aliases.sh")
sha256sums=('e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855')

package() {
    install -Dm644 "$srcdir/SPK_aliases.sh" \
    "$pkgdir/usr/share/spk/SPK_aliases.sh"

	install -Dm755 "$srcdir/SPK_aliases.sh" \
	    "$pkgdir/usr/bin/spk"
}
