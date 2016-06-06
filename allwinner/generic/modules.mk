#
# Copyright (C) 2015-2016 Allwinner
#
# This is free software, licensed under the GNU General Public License v2.
# See /build/LICENSE for more information.

define KernelPackage/sunxi-disp
  SUBMENU:=$(VIDEO_MENU)
  TITLE:=SUNXI-DISP support
  FILES:=$(LINUX_DIR)/drivers/video/sunxi/disp/disp.ko
  AUTOLOAD:=$(call AutoLoad,50,disp)
endef

define KernelPackage/sunxi-disp/description
 Kernel modules for sunxi-disp support
endef

$(eval $(call KernelPackage,sunxi-disp))

define KernelPackage/sunxi-lcd
  SUBMENU:=$(VIDEO_MENU)
  TITLE:=SUNXI-LED support
  DEPENDS:=+kmod-sunxi-disp
  FILES:=$(LINUX_DIR)/drivers/video/sunxi/lcd/lcd.ko
  AUTOLOAD:=$(call AutoLoad,50,lcd)
endef

define KernelPackage/sunxi-lcd/description
 Kernel modules for sunxi-lcd support
endef

$(eval $(call KernelPackage,sunxi-lcd))
