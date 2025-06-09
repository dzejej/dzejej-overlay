# Copyrigh t1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=flit
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="The official AiiDA plugin for Phonopy."
HOMEPAGE="https://github.com/aiida-phonopy/aiida-phonopy"
# ##SRC_URI="https://github.com/aiidateam/aiida-hubbard/releases/tag/v${PV4}.tar.gz -> ${P}.tar.gz"
SRC_URI="https://github.com/aiida-phonopy/aiida-phonopy/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

##dev-python/psycopg2-binary
RDEPEND="
	${PYTHON_DEPS}
	dev-python/flit-core
	<dev-python/aiida-core-3
	=dev-python/phonopy-2*
	=dev-python/aiida-pythonjob-0.1*
	dev-python/seekpath
	"
