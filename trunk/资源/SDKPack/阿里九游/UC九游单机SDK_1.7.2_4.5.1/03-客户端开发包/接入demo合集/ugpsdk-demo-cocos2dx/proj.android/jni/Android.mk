LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

$(call import-add-path,$(LOCAL_PATH)/../../cocos2d)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/external)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/cocos)

LOCAL_MODULE := cocos2dcpp_shared

LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../Classes/HelloWorldScene.cpp \
                   ../../Classes/NotificationHandler.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes \
				$(LOCAL_PATH)/../../Classes/jsoncpp/include \
				$(LOCAL_PATH)/../../Classes/android

LOCAL_STATIC_LIBRARIES := cocos2dx_static

# sdk
include $(LOCAL_PATH)/../../Classes/android/sdk.mk
LOCAL_SRC_FILES += $(addprefix ./../../Classes/android/, $(SOURCE))

# sdk
include $(LOCAL_PATH)/../../Classes/jsoncpp/json.mk
LOCAL_SRC_FILES += $(addprefix ./../../Classes/jsoncpp/, $(SOURCE))

include $(BUILD_SHARED_LIBRARY)

$(call import-module,.)
