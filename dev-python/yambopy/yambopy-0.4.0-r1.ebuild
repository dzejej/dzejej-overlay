# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..13} )

inherit distutils-r1

MY_P=${P}
DESCRIPTION="Provids additional functionalities for both Quantum Espresso (QE) and Yambo"
HOMEPAGE="
	https://github.com/yambo-code/yambopy
	https://pypi.org/project/ansi/
"
SRC_URI="
	https://github.com/yambo-code/yambopy/archive/refs/tags/v0.4.0.tar.gz
		-> ${MY_P}.tar.gz
"
S=${WORKDIR}/${MY_P}

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~arm64 ~riscv ~x86"


RDEPEND="${PYTHON_DEPS}
	dev-python/numpy
	dev-python/scipy
	dev-python/matplotlib
	dev-python/netcdf4
	dev-python/lxml
	dev-python/pyyaml
	dev-python/monty
	dev-python/scikit-learn
"



distutils_enable_tests pytest
