# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{9..11} )

inherit distutils-r1

DESCRIPTION="ase-espresso provides a Python interface compatible with Atomic Simulation Environment (ASE) for managing calculations with the Quantum Espresso code."
HOMEPAGE="https://www.aiida.net/"
##SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
SRC_URI="https://github.com/lmmentel/ase-espresso/archive/refs/tags/v0.3.4.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/ase
	dev-python/numpy
	dev-python/pexpect
	dev-python/future
	dev-python/path
	dev-python/python-hostlist
	"

