# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11,12,13} )

inherit distutils-r1

DESCRIPTION="Phonon calculations at harmonic and quasi-harmonic levels"
HOMEPAGE="https://phonopy.github.io/phonopy/"
SRC_URI="https://github.com/phonopy/phonopy/archive/refs/tags/v${PV}.tar.gz -> phonopy-${PV}.tar.gz"

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
