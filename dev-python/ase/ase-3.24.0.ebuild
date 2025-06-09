# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9..13} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Set of Python modules for atomistic simulations"
HOMEPAGE="http://wiki.fysik.dtu.dk/ase
	https://gitlab.com/ase/ase"
#SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"
#SRC_URI="$(pypi_sdist_url "${PN^}" "${PV}")"
SRC_URI="https://gitlab.com/ase/ase/-/archive/${PV}/${P}.tar.gz"
# S="${WORKDIR}/${P}b1"


LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE="doc examples test"
PYTHON_REQ_USE="tk"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/numpy-1.19.5
	>=dev-python/scipy-1.6.0
	>=dev-python/matplotlib-3.3.4
	"
#psycopg2-binary
#DEPEND="dev-python/setuptools"

python_prepare_all() {
        distutils-r1_python_prepare_all

        # these tests appear to be broken
        #rm "${S}"/pyproject.toml || die
}
