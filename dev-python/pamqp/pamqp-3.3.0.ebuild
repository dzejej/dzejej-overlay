# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="pamqp is a low level AMQP 0-9-1 frame encoding and decoding library for Python 3."
HOMEPAGE="https://github.com/gmr/pamqp"
SRC_URI="https://github.com/gmr/pamqp/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

#to samo co amqp
RDEPEND="
	${PYTHON_DEPS}
	dev-python/amqp
	net-misc/rabbitmq-server
	"

