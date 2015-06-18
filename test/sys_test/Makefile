include $(TOPDIR)/rules.mk

PKG_NAME:=sys_test
PKG_VERSION:=1.0
PKG_RELEASE:=0

include $(INCLUDE_DIR)/package.mk

define Package/sys_test
  SUBMENU:=Virtual
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=A dummy package to test the sytesm
  URL:=https://github.com/claudyus/owrt-package-test
endef

define Package/sys_test/description
	A dummy package
endef

define Build/Prepare
endef

define Package/sys_test/install
	$(INSTALL_DIR) $(1)/
	echo test > $(1)/sys_test
endef

$(eval $(call BuildPackage,sys_test))
