# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..14} )
inherit distutils-r1

DESCRIPTION="A Python toolkit for plotting and analysis of ab initio solid-state calculation data"
HOMEPAGE="https://github.com/SMTG-Bham/sumo"
SRC_URI="https://github.com/SMTG-Bham/sumo/archive/refs/tags/v${PV}.tar.gz  -> ${P}.tar.gz"

# Specify the subdirectory containing the actual source code
# S="${WORKDIR}/${PN}-${PV}a5"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~x86"
RDEPEND="
	${PYTHON_DEPS}
	>=dev-python/pymatgen-2020.10.20
	>=dev-python/phonopy-2.1.3
	dev-python/seekpath
	dev-python/h5py
	dev-python/colormath
	dev-pythin/importlib-resources
"
