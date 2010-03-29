# Copyright 2010 Ivan Boldyrev
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Evented I/O framework for V8 javascript."
HOMEPAGE="http://nodejs.org/"
SRC_URI="http://nodejs.org/dist/node-v${PV}.tar.gz"

LICENSE="MIT LGPL"
SLOT="0"
KEYWORDS="-* ~x86 ~amd64"
IUSE=""

DEPEND="net-libs/gnutls"
RDEPEND="${DEPEND}"

S="${WORKDIR}/node-v${PV}"

src_compile() {
	./configure --prefix=/usr || die "configure failed"
	emake || die "emake failed"
}

src_install() {
	./tools/waf-light install --destdir="${D}" || die "install failed"
}
