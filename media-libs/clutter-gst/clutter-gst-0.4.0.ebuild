# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils gnome2

DESCRIPTION="Clutter is a library for creating graphical user interfaces"
HOMEPAGE="http://www.clutter-project.org/"
SRC_URI="http://www.clutter-project.org/sources/${PN}/0.4/${P}.tar.bz2"
RESTRICT="mirror"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-libs/libxml2
	>=media-libs/clutter-0.4.0
	>=media-libs/gstreamer-0.10
	>=media-libs/gst-plugins-base-0.10"

DEPEND="${RDEPEND}"

DOCS="AUTHORS ChangeLog NEWS README TODO"
