export ARCHS = armv7 armv7s arm64
export SDK-VERSION = 7.0
export THEOS_IPHONEOS_DEPLOYMENT_VERSION = 7.0
export TARGET = iphone:clang::7.0

include @@THEOS@@/makefiles/common.mk

BUNDLE_NAME = @@PROJECTNAME@@
@@PROJECTNAME@@_FILES = @@PROJECTNAME@@Controller.m
@@PROJECTNAME@@_INSTALL_PATH = /Library/ScreenSaver
@@PROJECTNAME@@_FRAMEWORKS = Foundation UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/bundle.mk

after-install::
	install.exec "killall -9 SpringBoard"

SUBPROJECTS += ddd
include $(THEOS_MAKE_PATH)/aggregate.mk
