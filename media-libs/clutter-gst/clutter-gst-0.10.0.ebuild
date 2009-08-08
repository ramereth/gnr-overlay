# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils versionator gnome2

MY_PV=$(get_version_component_range 1-2)

DESCRIPTION="Clutter is a library for creating graphical user interfaces"
HOMEPAGE="http://www.clutter-project.org/"
SRC_URI="http://www.clutter-project.org/sources/${PN}/${MY_PV}/${P}.tar.bz2"
RESTRICT="mirror"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="dev-libs/libxml2
	=media-libs/clutter-1.0*
	>=media-libs/gstreamer-0.10
	>=media-libs/gst-plugins-base-0.10"

DEPEND="${RDEPEND}"

DOCS="AUTHORS ChangeLog NEWS README TODO"
