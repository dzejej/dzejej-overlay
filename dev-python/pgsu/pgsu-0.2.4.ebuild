# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="Connect to an existing PostgreSQL cluster as a PostgreSQL SUPERUSER and execute SQL commands."
HOMEPAGE="https://github.com/aiidateam/pgsu"
SRC_URI="https://github.com/aiidateam/pgsu/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

##dev-python/psycopg2-binary
RDEPEND="
	${PYTHON_DEPS}
	dev-python/flit-core
	dev-python/click
	dev-python/psycopg
	"

