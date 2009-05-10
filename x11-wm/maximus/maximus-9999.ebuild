# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

EBZR_REPO_URI="lp:maximus"
inherit autotools gnome2 bzr

DESCRIPTION="A window manager designed to run one application at a time full screen"
HOMEPAGE="http://launchpad.net/maximus"
SRC_URI=""

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=">=dev-libs/glib-2.15.5
	>=x11-libs/gtk+-2.10.0
	>=gnome-base/gconf-2.16.0
	x11-libs/libwnck
	gnome-base/libgnomeui
	x11-libs/libXtst
	x11-libs/libfakekey"
RDEPEND="${DEPEND}"

src_unpack() {
	bzr_src_unpack
}

src_prepare() {
	eautoreconf || die "eautoreconf failed"
}
