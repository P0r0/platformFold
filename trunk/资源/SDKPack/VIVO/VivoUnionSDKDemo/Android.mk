LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_STATIC_JAVA_LIBRARIES += paylibalipay paylibhttpmime paylibapache-mime4j paylibvivoUpdateSDK paylibUPPayPluginExStd paylibUPPayAssistEx paylibcommons-codec paylibhuanju-data paylibammsdk paylibmd5 paylibmqqopenpay 

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := VivoAccountSDKDemo5.0
LOCAL_PROGUARD_ENABLED := disabled
# LOCAL_PROGUARD_ENABLED := full
#LOCAL_PROGUARD_FLAG_FILES := proguard.cfg #ָ�����������ļ�

LOCAL_CERTIFICATE := platform

include $(BUILD_PACKAGE)

# Use the folloing include to make our test apk.
include $(call all-makefiles-under,$(LOCAL_PATH))



LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := paylibalipay:libs/alipaysdk.jar \
										paylibhttpmime:libs/httpmime-4.0.jar \
										paylibapache-mime4j:libs/apache-mime4j-0.6.jar \
										paylibcommons-codec:libs/commons-codec-1.3.jar \
										paylibhuanju-data:libs/huanju-data-raw-v2.1.2-20002a.jar \
										paylibammsdk:libs/libammsdk.jar \
										paylibmd5:libs/md5.jar \
										paylibmqqopenpay:libs/mqqopenpay.jar \
										paylibUPPayAssistEx:libs/UPPayAssistEx.jar \
										paylibUPPayPluginExStd:libs/UPPayPluginExStd.jar \
										paylibvivoUpdateSDK:libs/vivoUpdateSDK.jar 
include $(BUILD_MULTI_PREBUILT)

