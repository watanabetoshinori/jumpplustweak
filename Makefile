ARCHS = arm64 arm64e

TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = ジャンプ＋

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = jumpplustweak

jumpplustweak_FILES = Tweak.x
jumpplustweak_FRAMEWORKS = Foundation UIKit
jumpplustweak_CFLAGS = -fobjc-arc -Wno-deprecated -Wno-deprecated-declarations

include $(THEOS_MAKE_PATH)/tweak.mk
