# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=flit
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="The official AiiDA plugin for Quantum ESPRESSO"
HOMEPAGE="https://github.com/aiidateam/aiida-quantumespresso"
SRC_URI="https://github.com/aiidateam/aiida-quantumespresso/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

BDEPEND="
	dev-python/flit-core[${PYTHON_USEDEP}]
	"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/flit-core
	=dev-python/aiida-core-2*
	=dev-python/aiida-pseudo-1*
	=dev-python/qe-tools-2*
	dev-python/importlib-resources
	=dev-python/pydantic-2*
	dev-python/xmlschema
	dev-python/jsonschema
	"

