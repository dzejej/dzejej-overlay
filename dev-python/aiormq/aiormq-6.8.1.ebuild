# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="aiormq is a pure python AMQP client library."
HOMEPAGE="https://github.com/mosquito/aiormq"
SRC_URI="https://github.com/mosquito/aiormq/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"


LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/yarl
	dev-python/pamqp
	"

