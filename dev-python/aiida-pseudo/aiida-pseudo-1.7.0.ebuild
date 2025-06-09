# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=flit
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="AiiDA plugin that simplifies working with pseudopotentials."
HOMEPAGE="https://github.com/aiidateam/aiida-pseudo"
SRC_URI="https://github.com/aiidateam/aiida-pseudo/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

##dev-python/psycopg2-binary
RDEPEND="
	${PYTHON_DEPS}
	dev-python/flit-core
	dev-python/aiida-core
	=dev-python/click-8*
	=dev-python/pint-0*
	=dev-python/requests-2*
	"

