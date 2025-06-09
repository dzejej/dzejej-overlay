# Copyrigh t1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="Sometimes you would just like to show the user some progress, but a progress bar is not suitable because you don’t know how much longer it would take."
HOMEPAGE="https://github.com/click-contrib/click-spinner"
SRC_URI="https://github.com/click-contrib/click-spinner/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/click
	dev-python/six
"
BDEPEND="
        dev-python/versioneer[${PYTHON_USEDEP}]
"

src_prepare() {
	# remove outdated bundled versioneer
	rm versioneer.py || die
	distutils-r1_src_prepare
}
