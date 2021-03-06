# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/missingh/missingh-0.18.6.ebuild,v 1.5 2009/02/14 10:46:09 kolmodin Exp $

CABAL_FEATURES="lib profile haddock"
inherit haskell-cabal versionator

DESCRIPTION="Collection of Haskell-related utilities"
HOMEPAGE="http://software.complete.org/missingh"
SRC_URI="http://software.complete.org/missingh/static/download_area/${PV}/missingh_${PV}.tar.gz"

LICENSE="GPL-2" # mixed licence, all GPL compatible
KEYWORDS="~amd64 ~sparc ~x86"
IUSE=""
SLOT="0"

S="${WORKDIR}/missingh"

DEPEND=">=dev-lang/ghc-6.4.2
	>=dev-haskell/hunit-1.1
	>=dev-haskell/filepath-1.0
	>=dev-haskell/hslogger-1.0.1
	>=dev-haskell/mtl-1.0
	>=dev-haskell/network-1.0
	>=dev-haskell/quickcheck-1.0
	dev-haskell/regex-compat"

src_unpack() {
	unpack ${A}

	cabal-mksetup
}
