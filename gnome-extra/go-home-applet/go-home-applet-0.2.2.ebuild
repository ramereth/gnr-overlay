# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit gnome2

DESCRIPTION="Go home applet for GNOME"
HOMEPAGE="http://launchpad.net/go-home-applet"
SRC_URI="http://launchpad.net/go-home-applet/trunk/1.2.0beta/+download/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="gnome-base/gconf
	>=x11-libs/gtk+-2.6.0
	dev-util/glade
	gnome-base/libgnomeui
	gnome-base/gnome-panel
	x11-libs/libwnck
	gnome-base/gnome-desktop"
RDEPEND="${DEPEND}"

DOCS="AUTHORS ChangeLog INSTALL README TODO NEWS"
