LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := strdup8to16.cpp strdup16to8.cpp
LOCAL_SHARED_LIBRARIES := liblog libbase
LOCAL_MODULE := libdpmframework_shim
LOCAL_MODULE_TAGS := optional
LOCAL_PRODUCT_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := wfd_shim.cpp
LOCAL_MODULE := libshim_wfd
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := false
include $(BUILD_SHARED_LIBRARY)
