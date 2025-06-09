# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit autotools fortran-2 toolchain-funcs

DESCRIPTION="A general library for evaluating energy and potential for exchange-correlation (XC) functionals from the vdW-DF family"
HOMEPAGE="https://libvdwxc.org/"
SRC_URI="https://gitlab.com/libvdwxc/libvdwxc/-/archive/0.4.0/libvdwxc-0.4.0.tar.gz"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="amd64 ~x86 ~amd64-linux"
IUSE="fortran test +mpi"
RESTRICT="!test? ( test )"
RDEPEND="
	>=virtual/mpi-2.0-r4 
	sci-libs/fftw[mpi]
"

pkg_setup() {
        use fortran && fortran-2_pkg_setup
}


src_prepare() {
#	export LIBS="-lfftw3 -lfftw3_mpi"
	default
	eautoreconf
}

src_configure() {
	econf \
		--enable-shared \
		--with-mpi \
		--with-fftw3 \
		--with-fft-lib="-lfftw3 -lfftw3_mpi" \
		  $(use_enable fortran) \
		   $(use_enable mpi) 
		  # MPICC="$(tc-getCC)" \
		  # MPIFC="$(tc-getFC)"
}
