# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit autotools fortran-2

DESCRIPTION="A general library for evaluating energy and potential for exchange-correlation (XC) functionals from the vdW-DF family"
HOMEPAGE="https://libvdwxc.org/"
SRC_URI="https://gitlab.com/libvdwxc/libvdwxc/-/archive/0.4.0/libvdwxc-0.4.0.tar.gz"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="amd64 ~x86 ~amd64-linux"
IUSE="fortran test"
RESTRICT="!test? ( test )"

pkg_setup() {
	use fortran && fortran-2_pkg_setup
}

src_prepare() {
	default

	eautoreconf
}

src_configure() {
	econf \
		--enable-shared \
		$(use_enable fortran)
}

src_install() {
	default

	dodoc ChangeLog.md

	# no static archives
	find "${ED}" -name '*.la' -type f -delete || die
}
