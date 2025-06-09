# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
DISTUTILS_EXT=1
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="A DFT Python code based on the projector-augmented wave (PAW) method and the atomic simulation environment (ASE)"
HOMEPAGE="https://wiki.fysik.dtu.dk/gpaw
	https://gitlab.com/gpaw/gpaw"
SRC_URI="https://gitlab.com/gpaw/gpaw/-/archive/${PV}/${P}.tar.gz"


LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/numpy
	dev-python/scipy
	dev-python/ase
	sci-libs/libxc
	sci-libs/libvdwxc
	sci-libs/fftw
	sci-libs/openblas
	sci-libs/scalapack
	"

src_configure() {
	cat >>siteconfig.py <<-EOF
	extra_compile_args += ['-fopenmp']
	extra_link_args += ['-fopenmp']
	scalapack = True
	libraries += ['scalapack']
	fftw = True
	libraries += ['fftw3']
	libvdwxc = True
	libraries += ['vdwxc']
	libraries += ['vdwxcfort']
	EOF
}

