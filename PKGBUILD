pkgname=libspk
pkgver=0.0.3
pkgrel=3
pkgdesc="Custom commands (functions) and connector of SPK packages for Arch Linux"
arch=('x86_64')
url="https://github.com/Jeicobroot-jrt/libspk"
license=('MIT')
install=SPK.install
source=("SPK_aliases.sh")
sha256sums=('696f78f8399a1e5bf67bb53ed9c4cbf128c2989371de34d5577b412f642ee80c')

package() {
    install -Dm644 "$srcdir/SPK_aliases.sh" \
    "$pkgdir/usr/share/spk/SPK_aliases.sh"

	install -Dm755 "$srcdir/SPK_aliases.sh" \
	    "$pkgdir/usr/bin/spk"
}
