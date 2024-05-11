PKG_NAME="dracut_install"
PKG_VERSION="2a5ecdd24c6071fb71318eae20e4d97c0831fb37"
PKG_SHA256="e8d5b24769de27dbd5cd0319b5266d98591472e808ae722380bff00e20afc999"
PKG_SOURCE_DIR="dracut_install-${PKG_VERSION}*"
PKG_SITE="$GITHUB_URL/numbqq/dracut_install"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_ARCH="aarch64"
PKG_LICENSE="GPL"
PKG_SHORTDESC="dracut_install"
PKG_SOURCE_NAME="dracut_install-${PKG_VERSION}.tar.gz"
PKG_NEED_BUILD="NO"


make_target() {
	:
}

makeinstall_target() {
	mkdir -p $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/dracut_install
	# Remove old debs
	rm -rf $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/dracut_install/*
	cp ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/*.deb $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/dracut_install 2> /dev/null || \
	cp -rf ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/${KHADAS_BOARD}/${LINUX}/* $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/dracut_install
}
