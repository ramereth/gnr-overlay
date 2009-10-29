# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit gnome2

DESCRIPTION="A window manager designed to run one application at a time full screen"
HOMEPAGE="http://launchpad.net/maximus"
SRC_URI="http://launchpad.net/maximus/0.4/ubuntu-9.10/+download/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-libs/glib-2.15.5
	>=x11-libs/gtk+-2.10.0
	>=gnome-base/gconf-2.16.0
	x11-libs/libwnck
	gnome-base/libgnomeui
	x11-libs/libXtst
	x11-libs/libfakekey"
RDEPEND="${DEPEND}"

