EAPI=7
inherit cmake

DESCRIPTION="C library for finding and handling crystal symmetries."
HOMEPAGE="https://atztogo.github.io/spglib/"
SRC_URI="https://github.com/spglib/spglib/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE="+openmp"

RESTRICT="mirror"

DEPEND="
    sys-devel/gcc[openmp?]
    sys-devel/gcc[fortran]"
RDEPEND=""
BDEPEND=""

src_configure() {
	local mycmakeargs=(
		-DUSE_OMP=$(usex openmp ON OFF)
		-DSPGLIB_WITH_Fortran=ON
	)
	cmake_src_configure
}
