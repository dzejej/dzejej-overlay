# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="shortuuid is a simple python library that generates concise, unambiguous, URL-safe UUIDs."
HOMEPAGE="https://github.com/skorokithakis/shortuuid/"
SRC_URI="https://github.com/skorokithakis/shortuuid/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/poetry-core
	"

