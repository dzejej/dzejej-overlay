# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=scikit-build-core
# DISTUTILS_USE_PEP517=setuptools
# DISTUTILS_USE_PEP517=standaloneg
# DISTUTILS_USE_PEP517=hatchling
# DISTUTILS_USE_PEP517=poetry
# DISTUTILS_USE_SETUPTOOLS=rdepend
# DISTUTILS_IN_SOURCE_BUILD=1



inherit distutils-r1 pypi

DESCRIPTION="Phon3py calcs phonon-phonon interaction and realted properties using super cell"
HOMEPAGE="https://phonopy.github.io/phono3py/index.html"
#  SRC_URI="https://github.com/phonopy/phono3py/archive/refs/tags/v${PV}.tar.gz -> phono3py-${PV}.tar.gz"

DEPEND="
	${PYTHON_DEPS}
	dev-python/numpy[${PYTHON_USEDEP}]
	dev-python/matplotlib[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/h5py[${PYTHON_USEDEP}]
	sci-libs/spglib[python]
	dev-python/seekpath[${PYTHON_USEDEP}]
	dev-python/scipy[${PYTHON_USEDEP}]"
BDEPEND="${DEPEND}"
RDEPEND="${DEPEND}"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="amd64"
RESTRICT="test mirror"
