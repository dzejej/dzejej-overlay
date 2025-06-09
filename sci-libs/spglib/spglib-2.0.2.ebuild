# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..11} )
inherit distutils-r1

DESCRIPTION="Spglib is a C library for finding and handling crystal symmetries"
HOMEPAGE="https://atztogo.github.io/spglib/"
#SRC_URI="https://github.com/atztogo/spglib/archive/v${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

RDEPEND="dev-python/numpy"
DEPEND=""
BDEPEND=""

python_compile() {
	distutils-r1_python_compile
	find "${BUILD_DIR}" -name '*.pth' -delete || die
}
