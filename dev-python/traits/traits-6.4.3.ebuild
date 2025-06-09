# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="Enthought Tool Suite: Explicitly typed attributes for Python"
HOMEPAGE="https://github.com/enthought/traits"
SRC_URI="https://github.com/enthought/traits/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"


LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/numpy
	dev-python/six
	"

