# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

EBZR_REPO_URI="lp:desktop-switcher"
inherit gnome2 bzr

DESCRIPTION="Switch between desktop modes for netbooks"
HOMEPAGE="http://launchpad.net/desktop-switcher"
SRC_URI=""

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=">=dev-libs/glib-2.15.5
	>=x11-libs/gtk+-2.10.0
	gnome-base/gconf
	dev-perl/XML-Parser
	dev-util/intltool"
RDEPEND=">=dev-libs/glib-2.15.5
	>=x11-libs/gtk+-2.10.0
	gnome-base/gconf
	dev-perl/XML-Parser"

DOCS="AUTHORS README INSTALL TODO NEWS"

src_unpack() {
	bzr_src_unpack
}

src_prepare() {
	NOCONFIGURE=1 ./autogen.sh
}
