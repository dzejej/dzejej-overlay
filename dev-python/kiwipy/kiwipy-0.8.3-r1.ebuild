# Copyrigh t1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=flit
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="kiwiPy is a library that makes remote messaging using RabbitMQ (and possibly other message brokers) EASY."
HOMEPAGE="https://github.com/aiidateam/kiwipy"
SRC_URI="https://github.com/aiidateam/kiwipy/archive/refs/tags/v0.8.3.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE="+rmq"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/deprecation
	dev-python/pyyaml
	dev-python/shortuuid
	"

DEPEND="
	${RDEPEND}
	rmq? (
		dev-python/aio-pika
		dev-python/pamqp
		=dev-python/pytray-0.3.4
	)
	"

