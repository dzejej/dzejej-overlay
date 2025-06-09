# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=flit
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="Circus is a program that runs and watches processes and sockets. Circus can be used as a library or through the command line."
HOMEPAGE="https://github.com/circus-tent/circus"
SRC_URI="https://github.com/circus-tent/circus/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/psutil
	>dev-python/tornado-5.0.2
	>dev-python/pyzmq-17.0
	"

