# Copyrigh t1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=flit
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="A python workflows library that supports writing Processes with a well defined set of inputs and outputs that can be strung together."
HOMEPAGE="https://github.com/aiidateam/plumpy"
SRC_URI="https://github.com/aiidateam/plumpy/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/kiwipy[rmq]
	dev-python/nest-asyncio
	dev-python/pyyaml
	"

