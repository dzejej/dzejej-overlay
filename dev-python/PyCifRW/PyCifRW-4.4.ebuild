# Copyrigh t1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="PyCIFRW provides support for reading and writing CIF (Crystallographic Information Format) files using Python"
HOMEPAGE="https://bitbucket.org/jamesrhester/pycifrw/src/development/"
##SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.linux-x86_64.tar.gz"
##https://files.pythonhosted.org/packages/50/85/f83914cf4cb86ecd479f8751cbd463ac218dfc6489c84dc45495dcbbf689/PyCifRW-4.4.4.linux-x86_64.tar.gz
SRC_URI="https://bitbucket.org/jamesrhester/pycifrw/downloads/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	${PYTHON_DEPS}
	"

