# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Virtual for Gentoo Netbook Remix"
HOMEPAGE="http://www.gentoo.org"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="developer extras"

DEPEND=""
RDEPEND="app-admin/gnome-system-tools
	app-admin/system-config-printer-common
	app-misc/screen
	app-text/fbreader
	dev-perl/gnome2-perl
	dev-perl/gnome2-vfs-perl
	gnome-base/gnome
	gnome-extra/desktop-switcher
	gnome-extra/fast-user-switch-applet
	gnome-extra/go-home-applet
	gnome-extra/nautilus-sendto
	gnome-extra/netbook-launcher
	gnome-extra/window-picker-applet
	media-fonts/dejavu
	media-fonts/freefont-ttf
	media-fonts/ttf-bitstream-vera
	media-gfx/dcraw
	media-sound/alsa-tools
	media-video/cheese
	net-libs/libsoup-gnome
	net-misc/ssh-askpass-fullscreen
	net-print/foomatic-db
	net-print/foomatic-db-engine
	net-print/foomatic-gui
	net-print/gutenprint
	sys-apps/readahead-list
	sys-power/acpid
	sys-process/vixie-cron
	x11-apps/notify-osd
	x11-misc/rss-glx
	x11-misc/xdg-user-dirs
	x11-misc/xdg-user-dirs-gtk
	x11-misc/xscreensaver
	x11-themes/human-netbook-theme
	x11-themes/tangerine-icon-theme
	x11-wm/maximus
	extras? ( app-office/openoffice-bin
		app-portage/eix
		app-portage/gentoolkit
		app-portage/gentoolkit-dev
		app-portage/layman
		app-portage/portage-utils
		app-shells/bash-completion
		app-shells/gentoo-bashcomp
		app-text/acroread
		dev-java/sun-jre-bin
		dev-lang/ruby 
		dev-util/strace 
		mail-client/mozilla-thunderbird-bin
		media-gfx/gimp
		media-gfx/inkscape
		media-sound/rhythmbox 
		media-video/gnome-mplayer 
		net-analyzer/wireshark 
		net-im/pidgin
		net-im/skype
		net-misc/keychain
		net-misc/ntp
		net-misc/tightvnc
		net-misc/whois
		www-client/mozilla-firefox-bin
		www-plugins/adobe-flash
		x11-plugins/pidgin-facebookchat )
	developer? ( dev-util/cvs
		dev-util/git
		dev-util/subversion )"
