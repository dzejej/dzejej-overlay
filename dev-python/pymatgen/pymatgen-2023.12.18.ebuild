# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1 

DESCRIPTION="Pymatgen (Python Materials Genomics) is a robust, open-source Python library for materials analysis." 
HOMEPAGE="https://pymatgen.org/"
# SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
SRC_URI="https://github.com/materialsproject/pymatgen/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="vis +ase"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/numpy
	dev-python/sympy
	dev-python/requests
	dev-python/monty
	dev-python/ruamel-yaml
	dev-python/scipy
	dev-python/tabulate
	dev-python/matplotlib
	dev-python/palettable
	sci-libs/spglib
	dev-python/spglib
	dev-python/pandas
	dev-python/networkx
	dev-python/plotly
	dev-python/beautifulsoup4
	dev-python/uncertainties
	dev-python/cython
	dev-python/pybtex
	dev-python/tqdm
	dev-python/joblib
	vis? ( sci-libs/vtk )
	ase? ( dev-python/ase )
	"


