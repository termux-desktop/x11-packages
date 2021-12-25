TERMUX_PKG_HOMEPAGE=https://docs.xfce.org/apps/xfce4-dict/start
TERMUX_PKG_DESCRIPTION="Dictionary for XFCE desktop"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="Yisus7u7 <jesuspixel5@gmail.com>"
TERMUX_PKG_VERSION=0.8.4
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=http://deb.debian.org/debian/pool/main/x/xfce4-dict/xfce4-dict_${TERMUX_PKG_VERSION}.orig.tar.bz2
TERMUX_PKG_SHA256=cb85fefbf742b306f2a8dca695252bae22842ab586abd31b52688312e3f631e3
TERMUX_PKG_DEPENDS="gtk3, atk, libcairo, pango, harfbuzz, gdk-pixbuf, libxfce4util, libxfce4ui"
TERMUX_PKG_RECOMMENDS="xfce4-panel"
TERMUX_PKG_SUGGESTS="aspell"
TERMUX_PKG_BUILD_DEPENDS="xfce4-panel"
TERMUX_PKG_BUILD_IN_SRC=true

