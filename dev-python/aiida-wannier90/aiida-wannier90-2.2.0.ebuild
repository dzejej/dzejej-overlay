# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=flit
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="AiiDA plugin for the Wannier90 code. This plugin allows to run Wannier90 calculations."
HOMEPAGE="https://github.com/aiidateam/aiida-wannier90"
SRC_URI="https://github.com/aiidateam/aiida-wannier90/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	${PYTHON_DEPS}
	<dev-python/aiida-core-3
	"

