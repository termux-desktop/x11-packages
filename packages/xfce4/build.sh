TERMUX_PKG_HOMEPAGE=https://github.com/termux/x11-packages
TERMUX_PKG_DESCRIPTION="A metapackage that installs all parts of the XFCE desktop environment"
TERMUX_PKG_LICENSE="Public Domain"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=2.0
TERMUX_PKG_REVISION=15
TERMUX_PKG_SKIP_SRC_EXTRACT=true
TERMUX_PKG_DEPENDS="thunar, xfce4-panel, xfce4-session, xfce4-settings, xfconf, xfwm4"
TERMUX_PKG_CONFLICTS="xfce"
TERMUX_PKG_REPLACES="xfce"
TERMUX_PKG_PROVIDES="xfce"
TERMUX_PKG_METAPACKAGE=true
TERMUX_PKG_PLATFORM_INDEPENDENT=true

