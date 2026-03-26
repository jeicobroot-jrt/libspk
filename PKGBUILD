pkgname=libspk
pkgver=0.0.1
pkgrel=1
pkgdesc="The customized library of Spackit"
arch=('x86_64')
url="https://github.com/tu-usuario/libSPK" 
license=('MIT')
depends=('glibc')
source=("libspk_aliases.sh"
		"libspk.c"
		"https://raw.githubusercontent.com/tu-usuario/tu-repo/main/libspk.c")
		        
sha256sums=('2308c7fd4de330a6057d95f5f18b8e39c1534d9ce3be0b0af95794fee2f2c321'
            'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
            'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855')

build() {
	cd "$srcdir"
	gcc -shared -FPIC -o libspk.so libspk.c
}

package() {
  # Instalamos la librería y el archivo de alias
  install -Dm755 "$srcdir/libspk.so" "$pkgdir/usr/lib/libspk.so"
  install -Dm644 "$srcdir/libspk_aliases.sh" "$pkgdir/etc/profile.d/libspk_aliases.sh"
}
