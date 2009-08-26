# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils gnome2

DESCRIPTION="general-purpose toolkit for Clutter used by UNR's
netbook-launcher"
HOMEPAGE="https://launchpad.net/clutk"
SRC_URI="http://launchpad.net/clutk/0.2/${PV}/+download/${P}.tar.gz"
RESTRICT="mirror"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="=media-libs/clutter-1.0*
	=media-libs/clutter-gtk-0.10*"

DEPEND="${RDEPEND}"

DOCS="AUTHORS ChangeLog NEWS README TODO"
