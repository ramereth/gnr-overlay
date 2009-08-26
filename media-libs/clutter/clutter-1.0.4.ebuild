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
KEYWORDS="~amd64 ~x86"
IUSE="doc opengl sdl"

# Dependency on gtk+ is for GdkPixBuf;
# change if/when GdkPixBuf separates.
RDEPEND="
	>=dev-libs/glib-2.10.0
	>=x11-libs/gtk+-2.0
	>=x11-libs/pango-1.0
	opengl? ( virtual/opengl )
	sdl? ( media-libs/libsdl )"

DEPEND="${RDEPEND}
	doc? ( >=dev-util/gtk-doc-1 )"

DOCS="AUTHORS ChangeLog NEWS README TODO"

pkg_setup() {
	G2CONF="${G2CONF} \
		$(use_enable doc gtk-doc)"

	if use !opengl && use !sdl; then
		eerror "Select one render between: opengl or sdl"
		die "opengl or sdl flag needed"
	elif use opengl; then
		G2CONF="${G2CONF} --with-flavour=glx"
	elif use sdl; then
		G2CONF="${G2CONF} --with-flavour=sdl"
	fi
}
