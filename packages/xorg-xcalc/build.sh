TERMUX_PKG_HOMEPAGE=https://xorg.freedesktop.org/
TERMUX_PKG_DESCRIPTION="Scientific calculator for X"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.1.0
TERMUX_PKG_REVISION=21
TERMUX_PKG_SRCURL=https://xorg.freedesktop.org/archive/individual/app/xcalc-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=d5d746954465afc3da1f355d721882806568fb04b4d059c027702c0d16a3b5eb
TERMUX_PKG_DEPENDS="libx11, libxaw, libxt, xorg-fonts-75dpi | xorg-fonts-100dpi"
TERMUX_PKG_BUILD_DEPENDS="xorg-util-macros"

