# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
DISTUTILS_USE_PEP517=scikit-build-core
# DISTUTILS_USE_PEP517=setuptools-scm
PYTHON_COMPAT=( python3_{11..13} )

inherit pypi distutils-r1

DESCRIPTION="Phonon calculations at harmonic and quasi-harmonic levels"
HOMEPAGE="https://phonopy.github.io/phonopy/"
SRC_URI="https://github.com/phonopy/phonopy/archive/refs/tags/v${PV}.tar.gz -> phonopy-${PV}.tar.gz"

DEPEND="
	${PYTHON_DEPS}
	dev-python/numpy[${PYTHON_USEDEP}]
	dev-python/matplotlib[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/h5py[${PYTHON_USEDEP}]
	>sci-libs/spglib-2.3.0[python]
	dev-python/seekpath[${PYTHON_USEDEP}]
	dev-python/scipy[${PYTHON_USEDEP}]
	dev-python/nanobind[${PYTHON_USEDEP}]
	dev-python/symfc[${PYTHON_USEDEP}]
	>sci-libs/spglib-2.3.0"

BDEPEND="
	dev-python/setuptools-scm[${PYTHON_USEDEP}]
"

RDEPEND="${DEPEND}"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="amd64"
RESTRICT="test mirror"

python_prepare_all() {
   export SETUPTOOLS_SCM_PRETEND_VERSION=${PV}
   distutils-r1_python_prepare_all
}
