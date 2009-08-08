# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit gnome2

DESCRIPTION="Switch between desktop modes for netbooks"
HOMEPAGE="http://launchpad.net/desktop-switcher"
SRC_URI="http://launchpad.net/desktop-switcher/trunk/1.2.0beta/+download/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-libs/glib-2.15.5
	>=x11-libs/gtk+-2.10.0
	gnome-base/gconf
	dev-perl/XML-Parser
	dev-util/intltool"
RDEPEND="${DEPEND}"

DOCS="AUTHORS README INSTALL TODO NEWS"
