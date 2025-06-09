# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..13} )

inherit distutils-r1

DESCRIPTION="Symmetrization of phonon force constants"
HOMEPAGE="https://github.com/symfc/symfc"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
###SRC_URI="https://github.com/phonopy/phonopy/archive/refs/tags/v${PV}.tar.gz -> phonopy-${PV}.tar.gz"
SRC_URI="https://github.com/symfc/symfc/archive/refs/tags/v${PV}.tar.gz -> symfc-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/scipy[${PYTHON_USEDEP}]
	"

