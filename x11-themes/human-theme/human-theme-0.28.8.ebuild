# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit gnome2 distutils

MY_P="${PN}_${PV}"

DESCRIPTION="Human theme"
HOMEPAGE="https://launchpad.net/ubuntu/+source/human-theme"
SRC_URI="http://launchpad.net/ubuntu/jaunty/+source/human-theme/${PV}/+files/${MY_P}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/python-distutils-extra"
RDEPEND="x11-themes/vanilla-dmz-xcursors
	x11-themes/gtk-engines-murrine
	x11-themes/human-icon-theme"

DOCS="AUTHORS NEWS README INSTALL ChangeLog"
