# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="A DFT Python code based on the projector-augmented wave (PAW) method and the atomic simulation environment (ASE)"
HOMEPAGE="https://wiki.fysik.dtu.dk/gpaw
	https://gitlab.com/gpaw/gpaw"
SRC_URI="https://gitlab.com/gpaw/gpaw/-/archive/23.9.1/gpaw-23.9.1.tar.gz"


LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/numpy
	dev-python/scipy
	dev-python/ase
	sci-libs/libxc
	sci-libs/fftw
	sci-libs/openblas
	sci-libs/scalapack
	"
