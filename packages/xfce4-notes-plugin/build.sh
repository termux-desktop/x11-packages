TERMUX_PKG_HOMEPAGE=https://docs.xfce.org/panel-plugins/xfce4-notes-plugin/start
TERMUX_PKG_DESCRIPTION="Notes application for the Xfce4 desktop"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="Yisus7u7 <jesuspixel5@gmail.com>"
TERMUX_PKG_VERSION=1.9.0
TERMUX_PKG_REVISION=3
TERMUX_PKG_SRCURL=https://archive.xfce.org/src/panel-plugins/xfce4-notes-plugin/1.9/xfce4-notes-plugin-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=13f909c948b639f96de64cf793eb74cb1779589201d3933eff214ee8f35ab088
TERMUX_PKG_DEPENDS="atk, gtk3, glib, libcairo, gdk-pixbuf, harfbuzz, pango, libsm, libxfce4ui, libxfce4util, xfce4-panel, xfconf"
TERMUX_PKG_BUILD_DEPENDS="valac"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-maintainer-mode"

