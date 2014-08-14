
LOCAL_PATH := $(call my-dir)
ifneq (,$(filter eng userdebug,$(TARGET_BUILD_VARIANT)))
include $(CLEAR_VARS)

LOCAL_CFLAGS += -DDYNAMIC_DEBUG_LOGS

LOCAL_SRC_FILES += DynamicDebug.cpp dynamic_debug.c
LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libutils \
    liblog

LOCAL_MODULE := libdynamicdebug
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
endif

