# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit gnome2

DESCRIPTION="Daemon that displays passive pop-up notifications"
HOMEPAGE="https://launchpad.net/notify-osd"
SRC_URI="http://launchpad.net/notify-osd/trunk/0.9.11/+download/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=">=dev-libs/glib-2.4
	>=x11-libs/gtk+-2.4
	>=sys-apps/dbus-0.26
	>=dev-libs/dbus-glib-0.60
	x11-libs/libwnck
	x11-libs/libnotify
	gnome-base/gconf
	dev-util/intltool"
RDEPEND="${DEPEND}"

DOCS="AUTHORS COPYING ChangeLog INSTALL NEWS README TODO"
