pkgname=spk
pkgver=0.0.2
pkgrel=2
pkgdesc="Custom commands (functions) for Arch Linux"
arch=('x86_64')
url="https://github.com/Jeicobroot-jrt/SPK"
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
