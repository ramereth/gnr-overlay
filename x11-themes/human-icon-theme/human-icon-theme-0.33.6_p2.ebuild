# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit gnome2 eutils

MY_PV="${PV/_p/ubuntu}"
MY_P="${PN}_${MY_PV}"
S="${PN}-${MY_PV}"

DESCRIPTION="Human theme"
HOMEPAGE="https://launchpad.net/ubuntu/+source/human-icon-theme"
SRC_URI="http://launchpad.net/ubuntu/jaunty/+source/human-icon-theme/${MY_PV}/+files/${MY_P}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=""

DOCS="AUTHORS NEWS README INSTALL ChangeLog"

src_prepare() {
	epatch "${FILESDIR}"/"${PN}"-0.33.6-makefile-fix.patch
}

src_configure() {
	einfo "no configure"
}

src_compile() {
	einfo "no compile"
}

src_install() {
	cd "${S}"
	DESTDIR="${D}" emake install
}
