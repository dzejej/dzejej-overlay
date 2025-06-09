# Copyrigh t1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="UPF v1 and UPF v2 (Unified Pseudopotential Format) to json format "
HOMEPAGE="https://github.com/simonpintarelli/upf_to_json"
SRC_URI="https://github.com/simonpintarelli/upf_to_json/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/click
	"

