# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

EBZR_REPO_URI="lp:window-picker-applet"
inherit autotools gnome2 bzr

DESCRIPTION="Window picker applet for GNOME"
HOMEPAGE="http://launchpad.net/window-picker-applet"
SRC_URI=""

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="gnome-base/gconf
	>=x11-libs/gtk+-2.6.0
	dev-util/glade
	gnome-base/libgnomeui
	gnome-base/gnome-panel
	>=x11-libs/libwnck-2.24"
RDEPEND="${DEPEND}"

DOCS="AUTHORS ChangeLog INSTALL README TODO NEWS"

src_unpack() {
	bzr_src_unpack
}

src_prepare() {
	eautoreconf || die "eautoreconf failed"
}
