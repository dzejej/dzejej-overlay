# Copyrigh t1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=flit
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="AiiDA plugin that uses finite displacements and fields to compute phonon properties, dielectric, Born effective charges, Raman and non-linear optical susceptibility tensors"
HOMEPAGE="https://github.com/bastonero/aiida-vibroscopy"
# ##SRC_URI="https://github.com/aiidateam/aiida-hubbard/releases/tag/v${PV4}.tar.gz -> ${P}.tar.gz"
SRC_URI="https://github.com/bastonero/aiida-vibroscopy/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

##dev-python/psycopg2-binary
RDEPEND="
	${PYTHON_DEPS}
	dev-python/flit-core
	dev-python/aiida-core
	>=dev-python/aiida-quantumespresso-4.3.0
	>=dev-python/aiida-phonopy-1.1.3
	>=dev-python/phonopy-2.19.0
	<sci-libs/spglib-2.7[python]
	<=dev-python/phonopy-2.25.0
	"
