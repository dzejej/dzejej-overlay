# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{9..11} )

inherit distutils-r1

DESCRIPTION="This software contains a plugin that enables the usage of the all-electron DFT FLEUR code with the AiiDA framework."
HOMEPAGE="https://github.com/JuDFTteam/aiida-fleur"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/lxml
	dev-python/aiida-core
	dev-python/ase
	dev-python/masci-tools
	dev-python/pymatgen-io-fleur
	dev-python/pyhull
	dev-python/sympy
	dev-python/future
	dev-python/more-itertools
	dev-python/sqlalchemy
	dev-python/markupsafe
	"

