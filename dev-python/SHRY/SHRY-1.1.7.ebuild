# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="SHRY (Suite for High-throughput generation of models with atomic substitutions implemented by python) is a tool for generating unique ordered structures corresponding to a given disordered structure."
HOMEPAGE="https://github.com/giprayogo/SHRY"
SRC_URI="https://github.com/giprayogo/SHRY/archive/refs/tags/v1.1.7.tar.gz  -> ${P}.tar.gz"
# Specify the subdirectory containing the actual source code
# S="${WORKDIR}/${P}"


LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/numpy
	dev-python/scipy
	dev-python/sympy
	dev-python/pymatgen
	dev-python/xlrd
	dev-python/tqdm
	"
