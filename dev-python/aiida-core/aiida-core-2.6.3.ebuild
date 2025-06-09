# Copyrigh t1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=flit
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1 pypi

DESCRIPTION="AiiDA is a workflow manager for computational science with a strong focus on provenance, performance and extensibility." 
HOMEPAGE="https://www.aiida.net/"
#SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
SRC_URI="https://github.com/aiidateam/aiida-core/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE="+atomic-tools"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/flit-core
	=dev-python/alembic-1*
	=dev-python/archive-path-0.4*
	dev-python/aio-pika
	dev-python/circus
	=dev-python/click-spinner-0.1*
	dev-python/click
	=dev-python/disk-objectstore-1*
	dev-python/docstring-parser
	=dev-python/graphviz-0*
	>=dev-python/ipython-7
	dev-python/jedi
	=dev-python/jinja2-3*
	dev-python/jsonschema
	dev-python/kiwipy[rmq]
	dev-python/importlib-metadata
	dev-python/numpy
	dev-python/paramiko
	dev-python/plumpy
	=dev-python/pgsu-0.2*
	dev-python/psutil
	dev-python/psycopg
	dev-python/pytz
	dev-python/pyyaml
	dev-python/requests
	=dev-python/sqlalchemy-2*
	dev-python/tabulate
	dev-python/tqdm
	dev-python/upf_to_json
	dev-python/werkzeug
	dev-python/wrapt
	atomic-tools? (
		dev-python/PyCifRW
		dev-python/ase
		sci-libs/spglib
		dev-python/seekpath
		dev-python/pymatgen
		dev-python/pymysql
	)
	"
#	<dev-python/werkzeug-2.2

S="${WORKDIR}/${PN}-${PV}"
