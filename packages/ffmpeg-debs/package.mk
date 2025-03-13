PKG_NAME="ffmpeg-debs"
PKG_VERSION="d34f8fb5e2b6ca53845980a823432971192de6aa"
PKG_SHA256="c26a0be489988d963f4f7d095c1e2b1e1acbc697b9683e11c930ceb1e06264ac"
PKG_SOURCE_DIR="ffmpeg-debs-${PKG_VERSION}*"
PKG_SITE="$GITHUB_URL/numbqq/ffmpeg-debs"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_ARCH="arm64 armhf"
PKG_LICENSE="GPL"
PKG_SHORTDESC="Rockchip ffmpeg deb packages"
PKG_SOURCE_NAME="ffmpeg-debs-${PKG_VERSION}.tar.gz"
PKG_NEED_BUILD="NO"

make_target() {
	:
}

makeinstall_target() {
	mkdir -p $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/ffmpeg-debs
	# Remove old debs
	rm -rf $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/ffmpeg-debs/*
	[ -d ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/${KHADAS_BOARD} ] && cp -r ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/${KHADAS_BOARD}/* $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/ffmpeg-debs || true
}

