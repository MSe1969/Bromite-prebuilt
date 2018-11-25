#
# Include Bromite Browser (Chromium fork) into KitKat build
#
# For information about Bromite Browser, please visit
# https://www.bromite.org/ or https://github.com/bromite/bromite
#
# ----------------------------------------------------------------

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE       := Bromite
LOCAL_SRC_FILES    := arm_ChromePublic.apk
LOCAL_REQUIRED_MODULES := libchrome libchromium_android_linker
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := APPS
LOCAL_CERTIFICATE   := PRESIGNED
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libchrome
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := lib/armeabi-v7a/libchrome.so
LOCAL_MODULE_TAGS := optional
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libchromium_android_linker
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := lib/armeabi-v7a/libchromium_android_linker.so
LOCAL_MODULE_TAGS := optional
include $(BUILD_PREBUILT)


