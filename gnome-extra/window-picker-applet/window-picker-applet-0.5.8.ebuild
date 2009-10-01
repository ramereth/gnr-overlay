# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit gnome2

DESCRIPTION="Window picker applet for GNOME"
HOMEPAGE="http://launchpad.net/window-picker-applet"
SRC_URI="http://launchpad.net/window-picker-applet/0.5/ubuntu-9.10-beta-freeze/+download/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="gnome-base/gconf
	>=x11-libs/gtk+-2.6.0
	dev-util/glade
	gnome-base/libgnomeui
	gnome-base/gnome-panel
	>=x11-libs/libwnck-2.24"
RDEPEND="${DEPEND}"

DOCS="AUTHORS ChangeLog INSTALL README TODO NEWS"
