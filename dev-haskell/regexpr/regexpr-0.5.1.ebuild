# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

CABAL_FEATURES="lib profile haddock"
inherit haskell-cabal

MY_PN="regexpr"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A library to use bit.ly and j.mp URL shortening service from Haskell"
HOMEPAGE="http://projects.haskell.org/${MY_PN}/"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.6.1
		dev-haskell/hunit
		dev-haskell/mtl
		>=dev-haskell/mtlparse-0.0.1
		"

DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

S="${WORKDIR}/${MY_P}"
