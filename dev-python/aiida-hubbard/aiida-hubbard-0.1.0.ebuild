# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=flit
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="AiiDA plugin for the first-principles calculation of Hubbard parameters."
HOMEPAGE="https://github.com/aiidateam/aiida-hubbard"
# ##SRC_URI="https://github.com/aiidateam/aiida-hubbard/releases/tag/v${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI="https://github.com/aiidateam/aiida-hubbard/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

##dev-python/psycopg2-binary
RDEPEND="
	${PYTHON_DEPS}
	dev-python/flit-core
	<dev-python/aiida-core-2.6
	>=dev-python/aiida-quantumespresso-4.8
	"

