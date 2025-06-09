# Copyrigh t1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="A python tools library for baking pies"
HOMEPAGE="https://github.com/muhrin/pytray"
SRC_URI="https://github.com/muhrin/pytray/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""

RDEPEND="
	${PYTHON_DEPS}
	dev-python/deprecation
	"

