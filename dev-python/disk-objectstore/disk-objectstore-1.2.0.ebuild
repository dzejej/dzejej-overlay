# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=flit
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

My_PN="disk_objectstore"
DESCRIPTION="An implementation of an efficient object store that writes directly on disk and does not require a server running."
HOMEPAGE="https://github.com/aiidateam/disk-objectstore"
SRC_URI="https://github.com/aiidateam/disk-objectstore/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/click
	>=dev-python/sqlalchemy-1.4.22
	"

# S="${WORKDIR}/${My_PN}-${PV}"
