# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..13} )

inherit distutils-r1 

DESCRIPTION="Obtain and visualize k-vector coefficients and obtain band paths"
HOMEPAGE="https://seekpath.readthedocs.io/en/latest/"
SRC_URI="https://github.com/giovannipizzi/seekpath/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

DEPEND="${PYTHON_DEPS}
	sci-libs/spglib[python]
	dev-python/numpy[${PYTHON_USEDEP}]
	dev-python/scipy[${PYTHON_USEDEP}]
"
BDEPEND="${DEPEND}"
RDEPEND="${DEPEND}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
RESTRICT="test mirror"

##multiple setuptools warnings!
