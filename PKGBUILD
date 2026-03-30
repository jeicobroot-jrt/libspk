#!/bin/bash
pkgname=libspk
pkgver=0.1.4
pkgrel=11
pkgdesc="Custom commands (functions) and connector of SPK packages for Arch Linux"
arch=('x86_64')
url="https://github.com/Jeicobroot-jrt/libspk.git"
license=('MIT')
install=SPK.install
source=("SPK_aliases.sh")
sha256sums=('32db0a4dfee3ecd2a1baffd0ee8283a9bc48698edcf8a0569a40a203311408bb')

package() {

install -Dm644 "$srcdir/SPK_aliases.sh" \
    "$pkgdir/usr/share/spk/SPK_aliases.sh"

install -Dm644 "$srcdir/SPK_aliases.sh" \
    "$pkgdir/etc/profile.d/SPK_aliases.sh"
}
#
#
