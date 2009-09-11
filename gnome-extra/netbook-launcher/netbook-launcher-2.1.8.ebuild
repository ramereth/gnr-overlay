# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
inherit gnome2 eutils

DESCRIPTION="A clutter-based desktop launcher, typically used on netbooks"
HOMEPAGE="http://launchpad.net/netbook-remix-launcher"
SRC_URI="http://launchpad.net/netbook-remix-launcher/2.0/ubuntu-9.10-ui-freeze/+download/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="nls doc"

RDEPEND=">=dev-libs/glib-2.20
	>=x11-libs/pango-1.18.0
	>=gnome-base/librsvg-2.18.0
	>=x11-libs/gtk+-2.10.0
	>=gnome-base/libgnomeui-2.0
	>=dev-libs/libunique-1.0
	gnome-base/gnome-desktop
	gnome-base/gconf
	>=x11-libs/cairo-1.2.4
	>=sys-apps/dbus-1.0
	>=dev-libs/dbus-glib-0.7
	>=media-libs/clutter-1.0.0[opengl]
	>=media-libs/clutter-gtk-0.10
	>=media-libs/clutk-0.2
	gnome-base/gnome-menus
	x11-libs/liblauncher
	x11-libs/startup-notification"
DEPEND="${RDEPEND}
	doc? ( >=dev-util/gtk-doc-1.8 )"

DOCS="AUTHORS ChangeLog INSTALL NEWS README TODO"

src_configure(){
	econf \
		$(use_enable nls) \
		$(use_enable doc gtk-doc)
}
