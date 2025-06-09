# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=flit
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="Advanced AiiDA workflows for automated Wannierisation."
HOMEPAGE="https://github.com/aiidateam/aiida-wannier90-workflows"
SRC_URI="https://github.com/aiidateam/aiida-wannier90-workflows/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/flit-core
	<dev-python/aiida-core-3
	>=dev-python/aiida-wannier90-2.2
	>=dev-python/aiida-quantumespresso-4.4
	>=dev-python/click-8.0
	>=dev-python/aiida-pseudo-0.6
	dev-python/colorama
	"

