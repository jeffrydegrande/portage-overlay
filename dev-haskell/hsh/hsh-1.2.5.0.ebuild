# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

CABAL_FEATURES="lib profile haddock"
inherit haskell-cabal versionator

DESCRIPTION="Mix and match shell expressions with Haskell"
HOMEPAGE="http://software.complete.org/hsh"
SRC_URI="http://software.complete.org/hsh/static/download_area/${PV}/hsh_${PV}.tar.gz"

LICENSE="LGPL"
KEYWORDS="~amd64 ~sparc ~x86"
IUSE=""
SLOT="0"

S="${WORKDIR}/hsh"

DEPEND=">=dev-lang/ghc-6.4.2
	    >=dev-haskell/hunit-1.1"

src_unpack() {
	unpack ${A}

	cabal-mksetup
}
