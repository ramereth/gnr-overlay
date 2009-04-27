# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit python

DESCRIPTION="A printer administration tool"
HOMEPAGE="http://cyberelk.net/tim/software/system-config-printer/"
SRC_URI="http://cyberelk.net/tim/data/system-config-printer/1.1/${P}.tar.bz2"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~ppc ~x86 ~amd64"
IUSE=""
# pygobject comes from gnome-experimental overlay
RDEPEND="net-print/cups
	dev-lang/python
	=dev-python/pygtk-2*
	dev-python/pycups
	sys-apps/usermode
	dev-python/rhpl
	net-print/foomatic-filters
	net-print/foomatic-db
	dev-python/pyxml"
DEPEND="${RDEPEND}
	sys-devel/gettext
	dev-util/intltool"

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"

	make_desktop_entry /usr/bin/${PN}
}

pkg_postrm() {
	python_mod_cleanup /usr/share/${PN}
}
