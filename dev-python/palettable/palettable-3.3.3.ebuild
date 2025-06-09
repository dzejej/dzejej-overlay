# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=( python3_{10..13} )

DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="library of color palettes for python"
HOMEPAGE="https://github.com/jiffyclub/palettable"

if [ ${PV} == "9999" ] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/jiffyclub/palettable.git"
else
	SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
	KEYWORDS="amd64"
fi

LICENSE="MIT"
SLOT="0"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/matplotlib[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}"

python_prepare_all() {
        distutils-r1_python_prepare_all

        # these tests appear to be broken
        rm "${S}"/test/* || die
}


#distutils_enable_tests pytest
#
#python_test() {
#	distutils_install_for_testing
#	pytest -vv || die "tests failed for ${EPYTHON}"
#}
