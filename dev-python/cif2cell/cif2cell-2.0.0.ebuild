# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..12} )
inherit distutils-r1

DESCRIPTION="A tool to geneterate the geomeric setup for various electrinic structures codes from CIF (Crystallografic Information file)" 
HOMEPAGE="https://github.com/torbjornbjorkman/cif2cell"
SRC_URI="https://github.com/torbjornbjorkman/cif2cell/archive/refs/tags/2.0.0a5.tar.gz -> ${P}.tar.gz"

# Specify the subdirectory containing the actual source code
S="${WORKDIR}/${PN}-${PV}a5"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
