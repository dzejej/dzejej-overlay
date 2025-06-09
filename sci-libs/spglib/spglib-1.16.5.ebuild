# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit cmake

DESCRIPTION="Spglib is a C library for finding and handling crystal symmetries"
HOMEPAGE="https://atztogo.github.io/spglib/"
SRC_URI="https://github.com/atztogo/spglib/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND=""
BDEPEND=""

src_prepare() {
	cmake_src_prepare
}

src_configure() {
	local mycmakeargs+=(
		-DBUILD_SHARED_LIBS=ON
		)
	cmake_src_configure
}

src_install() {
	find "${D}" -name '*.la' -type f -delete || die
	cmake_src_install
}
