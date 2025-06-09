# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
DISTUTILS_EXT=1
PYTHON_COMPAT=( python3_{9..12} )

inherit distutils-r1 flag-o-matic pypi

DESCRIPTION="Precise and fast Fermi-Dirac integrals of integer and half integer order."
HOMEPAGE="https://github.com/scott-maddox/fdint"
#SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"
SRC_URI="https://github.com/scott-maddox/fdint/archive/refs/tags/v2.0.2.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE="doc examples test"

RDEPEND="${PYTHON_DEPS}
	dev-python/numpy
	dev-python/cython
	"
#psycopg2-binary
BDEPEND="${RDEPEND}"
DEPEND="dev-python/setuptools"

python_compile() {
	distutils-r1_python_compile
}

python_compile_all() {
	use doc && setup.py build
}

python_test() {
	setup.py test
}

python_install_all() {
	distutils-r1_python_install_all
}
