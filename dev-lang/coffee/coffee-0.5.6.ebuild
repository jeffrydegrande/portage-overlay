# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

DESCRIPTION="Javascript's less ostentatious kid brother"
HOMEPAGE="http://jashkenas.github.com/coffee-script"
SRC_URI="http://github.com/jashkenas/coffee-script/tarball/${PV}"

LICENSE=""
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND=">=dev-lang/nodejs-0.1.33"
RDEPEND="${DEPEND}"

S="${WORKDIR}/jashkenas-coffee-script-590c069/"

src_unpack() {
	mv ${DISTDIR}/${PV} ${DISTDIR}/coffee-${PV}.tar.gz	
	unpack coffee-${PV}.tar.gz
}

src_compile() {
	cd "${S}"
	bin/cake build || die "Could not compile coffee-script"
}

src_install() {
	cd "${S}"
	mkdir -p ${D}usr/bin
	bin/cake install --prefix ${D}/usr || die "Could not install"
}
