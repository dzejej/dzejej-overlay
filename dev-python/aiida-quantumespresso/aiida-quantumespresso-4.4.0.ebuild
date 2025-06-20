# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..11} )

inherit distutils-r1

DESCRIPTION="The official AiiDA plugin for Quantum ESPRESSO"
HOMEPAGE="https://github.com/aiidateam/aiida-quantumespresso"
SRC_URI="https://github.com/aiidateam/aiida-quantumespresso/archive/refs/tags/v4.4.0.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/aiida-core
	dev-python/qe-tools
	"

