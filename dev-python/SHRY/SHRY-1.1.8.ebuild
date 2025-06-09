# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="SHRY (Suite for High-throughput generation of models with atomic substitutions implemented by python) is a tool for generating unique ordered structures corresponding to a given disordered structure."
HOMEPAGE="https://github.com/shry-project/SHRY"
SRC_URI="https://github.com/shry-project/${PN}/archive/refs/tags/v${PV}-alpha.tar.gz -> ${P}.tar.gz"
# Specify the subdirectory containing the actual source code
S="${WORKDIR}/${P}-alpha"


LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/numpy
	dev-python/scipy
	dev-python/sympy
	<=dev-python/pymatgen-2023.10.4
	dev-python/xlrd
	dev-python/tqdm
	"

python_prepare_all() {
   export SETUPTOOLS_SCM_PRETEND_VERSION=${PV}
   distutils-r1_python_prepare_all
}