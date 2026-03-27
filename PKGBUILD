pkgname=libspk
pkgver=0.0.2
pkgrel=3
pkgdesc="Custom commands (functions) and connector of SPK packages for Arch Linux"
arch=('x86_64')
url="https://github.com/Jeicobroot-jrt/libspk"
license=('MIT')
install=SPK.install
source=("SPK_aliases.sh")
sha256sums=('70ec268b625654ba3b2efa9068cdca0f11e4748468a6d9282fadfe26aba1f882')

package() {
    install -Dm644 "$srcdir/SPK_aliases.sh" \
    "$pkgdir/usr/share/spk/SPK_aliases.sh"

	install -Dm755 "$srcdir/SPK_aliases.sh" \
	    "$pkgdir/usr/bin/spk"
}
