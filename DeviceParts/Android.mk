LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_DEVICE),$(filter $(TARGET_DEVICE),enchilada fajita))
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_STATIC_ANDROID_LIBRARIES := \
    androidx.core_core \
    androidx.preference_preference
LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_PACKAGE_NAME := DeviceParts
LOCAL_CERTIFICATE := platform
LOCAL_PRIVATE_PLATFORM_APIS := true
LOCAL_PRIVILEGED_MODULE := true
LOCAL_USE_AAPT2 := true

LOCAL_RESOURCE_DIR := \
    $(LOCAL_PATH)/res

LOCAL_JAVA_LIBRARIES := telephony-common

LOCAL_PROGUARD_ENABLED := disabled
LOCAL_DEX_PREOPT := false

include frameworks/base/packages/SettingsLib/common.mk

include $(BUILD_PACKAGE)

include $(call all-makefiles-under,$(LOCAL_PATH))
endif
