include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-n2n
PKG_VERSION=1.0
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-n2n
	SECTION:=luci
	CATEGORY:=LuCI
	SUBMENU:=3. Applications
	TITLE:=N2N for LuCI
	PKGARCH:=all
endef

define Package/luci-app-n2n/description
	This package contains LuCI configuration pages for n2n.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/luci-app-n2n/install

	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	

	$(INSTALL_DATA) ./files/root/usr/lib/lua/luci/model/cbi/n2n.lua $(1)/usr/lib/lua/luci/model/cbi/n2n.lua
	$(INSTALL_DATA) ./files/root/usr/lib/lua/luci/controller/n2n.lua $(1)/usr/lib/lua/luci/controller/n2n.lua
endef

$(eval $(call BuildPackage,luci-app-n2n))
