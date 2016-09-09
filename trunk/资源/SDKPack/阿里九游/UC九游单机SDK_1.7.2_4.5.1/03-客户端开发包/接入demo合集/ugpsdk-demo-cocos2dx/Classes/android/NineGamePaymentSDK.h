//  JPushService.h
//  PushSDK
//
//  Created by zhanghao on 14-4-16.
//  Copyright (c) 2012骞�HXHG. All rights reserved.
//
#ifndef NineGamePaymentSDK_H
#define NineGamePaymentSDK_H

#include <string>
#include <map>
#include <set>
#if(CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID)
	#include <jni.h>
    #include <platform/android/jni/JniHelper.h>
#endif

using namespace std;

#define OPERATE_SUCCESS_MSG "00"
#define OPERATE_FAIL_MSG    "01"

const int NOTIFY_URL 	=  11;
const int APP_ID 		=  12;
const int APP_NAME 		=  13;
const int ATTACH_INFO 	=  14;
const int PRODUCT_NAME 	=  15;
const int CP_ORDER_ID 	=  16;
const int AMOUNT        =  17;
const int PAY_CODE 		=  18;
const int APP_KEY       =  19;

#define STR_NOTIFY_URL  "notify_url"
#define STR_APP_NAME    "app_name"
#define STR_APP_ID      "app_id"
#define STR_APP_KEY      "app_key"
#define STR_ATTACH_INFO "attach_info"
#define STR_PRODUCT_NAME  "product_name"
#define STR_CP_ORDER_ID "cp_order_id"
#define STR_AMOUNT  "order_amount"
#define STR_PAY_CODE "pay_code"


const int LISTENER_TYPE_INIT = 100;
const int LISTENER_TYPE_PAY  = 101;
const int LISTENER_TYPE_EXIT = 102;

typedef struct sdk_response{
	int 	status;     // 状态
	char	*message;   // 响应内容
	int 	type; 		// listener类型
	char	*data;      // 数据
	char	*tradeId;   // 订单编号
} Response;

typedef void (*onsuccessful_callback)(int status, Response response);
typedef void (*sdk_error_callback)(int errorcode,const char* message);

class NineGamePaymentSDK {

#if(CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID)
private:

public:
  //static void initSDK(map<int, string> parameters,onsuccessful_callback callback,sdk_error_callback sdk_error);
  static void pay(map<int, string> parameters,onsuccessful_callback callback,sdk_error_callback sdk_error);
  //static void pay(onsuccessful_callback callback, sdk_error_callback sdk_error);
  static void exitSDK();
  //static void setDebugMode(bool enable);
  
#endif
};

#endif
