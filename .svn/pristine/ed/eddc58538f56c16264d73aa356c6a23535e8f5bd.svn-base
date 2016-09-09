/*
 * JPushService.cpp
 *
 *  Created on: 2014?4?16?
 *      Author: john
 */
#include <cocos2d.h>
#include "NineGamePaymentSDK.h"

#if(CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID)
	#include <jni.h>
    #include <platform/android/jni/JniHelper.h>
	#include "json/json.h"
#endif
#include <map>


using namespace cocos2d;
extern "C"{
    
#define GET_JSTRING(cstr)   ((cstr) ? t.env->NewStringUTF(cstr) : NULL)
    
#define SAFE_RELEASE_JOBJ(jobj)   if(jobj) { \
t.env->DeleteLocalRef(jobj); \
}

static onsuccessful_callback success_callback = NULL;
static sdk_error_callback error_callback = NULL;

#if(CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID)

#define  LOG_TAG    "cocos::NineGamePaymentSDK"
#define  LOGW(...)  __android_log_print(ANDROID_LOG_WARN,LOG_TAG,__VA_ARGS__)
#define  LOGD(...)  __android_log_print(ANDROID_LOG_DEBUG,LOG_TAG,__VA_ARGS__)

const char* kNineGameSDKClassName = "cn.uc.paysdk.SDKCore";
const char* kActivityName = "com/ucweb/h5runtime/AppActivity"; // replace to your main activity
// move to you package & modify it
#define kCallbackClassName "com.ucweb.h5runtime.PayListener"

jobject getContext(){
    JniMethodInfo t;
    if( JniHelper::getStaticMethodInfo(t
                                       , kActivityName
                                       , "getContext"
                                       , "()Landroid/content/Context;"))
    {
        jobject ret = t.env->CallStaticObjectMethod(t.classID, t.methodID);
        SAFE_RELEASE_JOBJ(t.classID);
        return ret;
    } else {
        LOGW("NineGamePaymentSDK::getContext failed...");
    }
    return NULL;
}

jobject getJinteger(int value){
    JniMethodInfo t;
    if(JniHelper::getMethodInfo(t
            ,"java/lang/Integer"
            ,"<init>"
            ,"(I)V")){
        jobject ret = t.env -> NewObject(t.classID,t.methodID,value);
        SAFE_RELEASE_JOBJ(t.classID);
        return ret;
    }
    return NULL;
}

jobject getJstringSet(std::set<std::string> *stdSet){
    if (stdSet == NULL) {
        return NULL;
    }
    JniMethodInfo t;
    if(    JniHelper::getMethodInfo(t
            , "java/util/HashSet"
            , "<init>"
            , "(I)V")){
        jobject ret = t.env->NewObject(t.classID, t.methodID, stdSet->size());
        SAFE_RELEASE_JOBJ(t.classID);
        if(JniHelper::getMethodInfo(t
                , "java/util/HashSet"
                , "add"
                , "(Ljava/lang/Object;)Z")){
            for (std::set<std::string>::iterator it = stdSet->begin(); it != stdSet->end(); it++) {
                jstring k = GET_JSTRING(it->c_str());
                t.env->CallObjectMethod(ret, t.methodID, k);
                SAFE_RELEASE_JOBJ(k);
            }
            SAFE_RELEASE_JOBJ(t.classID);
            return ret;
        }
    }
    return NULL;

}

jobject getJintSet(std::set<int> *stdSet){
    if (stdSet == NULL) {
        return NULL;
    }
    JniMethodInfo t;
    if(JniHelper::getMethodInfo(t
            , "java/util/HashSet"
            , "<init>"
            , "(I)V")){
        jobject ret = t.env->NewObject(t.classID, t.methodID,stdSet->size());
        SAFE_RELEASE_JOBJ(t.classID);
        if(JniHelper::getMethodInfo(t
                , "java/util/HashSet"
                , "add"
                , "(Ljava/lang/Object;)Z")){
        	for (std::set<int>::iterator it = stdSet->begin(); it != stdSet->end(); it++) {
        	            jobject k = getJinteger(*it);
        	            t.env->CallObjectMethod(ret, t.methodID, k);
        	            SAFE_RELEASE_JOBJ(k);
        	        }
        	        SAFE_RELEASE_JOBJ(t.classID);
        	        return ret;
        }
    }
    return NULL;
}


std::set<std::string> * getStdStringSet(std::set<std::string>*originalSet,jobject object){
    if(object == NULL){
        return NULL;
    }
    
    if(originalSet == NULL){
        originalSet = new std::set<std::string>;
    }else{
        originalSet->empty();
    }
    
    JniMethodInfo t;
    if ( JniHelper::getMethodInfo(t
                                  ,"java/util/HashSet"
                                  ,"iterator"
                                  ,"()Ljava/util/Iterator;")){
        jobject j_iteraror = t.env->CallObjectMethod(object,t.methodID);
        SAFE_RELEASE_JOBJ(t.classID);
        
        if(JniHelper::getMethodInfo(t
                                    ,"java/util/Iterator"
                                    ,"hasNext"
                                    ,"()Z")){
            
            JniMethodInfo ret;
            if( JniHelper::getMethodInfo(ret
                                         ,"java/util/Iterator"
                                         ,"next"
                                         ,"()Ljava/lang/Object;" )){
                while(t.env->CallBooleanMethod(j_iteraror,t.methodID)){
                    jstring string = (jstring)ret.env->CallObjectMethod(j_iteraror,ret.methodID);
                    const char *tag = ret.env->GetStringUTFChars(string, JNI_FALSE);
                    std::string cpp_tag = tag;
                    originalSet->insert(cpp_tag);
                    SAFE_RELEASE_JOBJ(string);
                }
                SAFE_RELEASE_JOBJ(ret.classID);
            }
        }
    }
    return originalSet;
}

//char* to jstring
jstring string2jstring(JNIEnv* env, const string str){
	jclass strClass = env->FindClass( "java/lang/String");
	jmethodID ctorID = env->GetMethodID(strClass, "<init>", "([BLjava/lang/String;)V");
	jbyteArray bytes = env->NewByteArray(str.size());
	env->SetByteArrayRegion(bytes, 0, str.size(), (jbyte*)&str.c_str()[0]);
	jstring encoding = env->NewStringUTF("utf-8");
	return (jstring)env->NewObject(strClass, ctorID, bytes, encoding);
}

jobject map_warpto_intent(map<int, string> parameters)
{
	JniMethodInfo intent;
	if(JniHelper::getMethodInfo(intent
	    	            , "android/content/Intent"
	    	            , "<init>"
	    	            , "()V"))
	{
		jobject ret = intent.env->NewObject(intent.classID, intent.methodID);
		JniMethodInfo putExtra;
		if (!JniHelper::getMethodInfo(putExtra,"android/content/Intent","putExtra","(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;"))
			return NULL;

		for(map<int, string>::iterator it = parameters.begin(); it != parameters.end(); it++)
		{
			char key[32]= {0x0};
			switch(it->first)
			{
				case NOTIFY_URL:
					strcpy(key,STR_NOTIFY_URL);
					break;
				case APP_NAME:
					strcpy(key,STR_APP_NAME);
					break;
				case ATTACH_INFO:
					strcpy(key,STR_ATTACH_INFO);
					break;
				case PRODUCT_NAME:
					strcpy(key,STR_PRODUCT_NAME);
					break;
				case CP_ORDER_ID:
					strcpy(key,STR_CP_ORDER_ID);
					break;
				case APP_ID:
					strcpy(key,STR_APP_ID);
					break;
				case APP_KEY:
					strcpy(key,STR_APP_KEY);
					break;
				case AMOUNT:
					strcpy(key,STR_AMOUNT);
					break;
				case PAY_CODE:
					strcpy(key,STR_PAY_CODE);
					break;
				default:
					break;
			}
			if (strlen(key) > 0)
			{
				//log((const char*)key);
				jstring keys = string2jstring(putExtra.env,key);
				jstring values = string2jstring(putExtra.env,it->second);
				putExtra.env->CallObjectMethod(ret, putExtra.methodID, keys, values);

				//log((const char*)(it->second.c_str()));
			}
		}

		return ret;
	}
	return NULL;
}


jstring getPaycode(){
    JniMethodInfo t;

    if( JniHelper::getStaticMethodInfo(t
                                       , kActivityName
                                       , "getPaycode"
                                       , "()Ljava/lang/String;"))
    {
    	jstring ret = (jstring)t.env->CallStaticObjectMethod(t.classID, t.methodID);
        SAFE_RELEASE_JOBJ(t.classID);
        return ret;
    } else {
    	LOGW("getPaycode: not find static method");
    }
    return NULL;
}

void NineGamePaymentSDK::pay(map<int, string> parameters,onsuccessful_callback callback,sdk_error_callback sdk_error){
	LOGW("NineGamePaymentSDK::pay start...");

	JniMethodInfo t;
    if (JniHelper::getStaticMethodInfo(t
                                      ,kActivityName
                                      ,"payFor"
                                      ,"(Landroid/content/Intent;)V") ){

    	jstring paycode = getPaycode();
    	parameters.insert(pair<int, string>(PAY_CODE, JniHelper::jstring2string(paycode)));
    	SAFE_RELEASE_JOBJ(paycode);

    	jobject ret = map_warpto_intent(parameters);
    	if (ret == NULL)
    	{
    		LOGW("Construction intent occur error");
    		return ;
    	};

    	success_callback = callback;
    	error_callback = sdk_error;

    	t.env->CallStaticVoidMethod(t.classID,t.methodID,ret);


    	SAFE_RELEASE_JOBJ(ret);
    	SAFE_RELEASE_JOBJ(t.classID);
    }
    else
    {
    	LOGW("Not found the pay interface in SDK.");
    }
}

void NineGamePaymentSDK::exitSDK(){
    JniMethodInfo t;
    if ( JniHelper::getMethodInfo(t
                                        ,kActivityName
                                        ,"onDestroy"
                                        ,"()V") ){
    	jobject ctx = getContext();
        t.env->CallStaticVoidMethod(t.classID,t.methodID,ctx);
        SAFE_RELEASE_JOBJ(ctx);
        SAFE_RELEASE_JOBJ(t.classID);
    }
}

void Java_com_ucweb_h5runtime_JniCallback_nativeResultCallback(JNIEnv *env,jclass clz,jint code,jobject obj_response){
	LOGD("Java_com_ucweb_h5runtime_JniCallback_nativeResultCallback start.");
	jclass response_cls = env->GetObjectClass(obj_response);
	if(response_cls == NULL)
	{
		log("get response class occur error!");
		return;
	}

	Response *response = new Response();

	jfieldID statusFieldID = env->GetFieldID(response_cls,"status","I");
	jfieldID messageFieldID = env->GetFieldID(response_cls,"message","Ljava/lang/String;");
	jfieldID typeFieldID = env->GetFieldID(response_cls,"type","I");
	jfieldID dataFieldID = env->GetFieldID(response_cls,"data","Ljava/lang/String;");
	jfieldID tradeIdFieldID = env->GetFieldID(response_cls,"tradeId","Ljava/lang/String;");
	// status
	jint status = env->GetIntField(obj_response , statusFieldID);
	response->status = (int)status;

	jstring jstrTmp = env->NewStringUTF(OPERATE_SUCCESS_MSG);
	env->SetObjectField(obj_response, messageFieldID, jstrTmp); // reply OK/Failure to payment SDK :Modify it
	// type
	jint type = env->GetIntField(obj_response , typeFieldID);
	response->type = (int)type;

	response->message = new char[32];
	memset(response->message,0x0,32);
	// message
	jobject obj = env->GetObjectField(obj_response , messageFieldID);
	if (obj != NULL)
	{
		jstring message = (jstring)obj;
		const char *c_message = env->GetStringUTFChars(message ,NULL);

		strcpy(response->message,c_message);
		env->ReleaseStringUTFChars(message, c_message);
	}
	else
	{
		LOGW("message is empty.");
	}
	// trade id
	obj = env->GetObjectField(obj_response , tradeIdFieldID);
	if (obj != NULL)
	{
		jstring tradeId = (jstring)obj;
		const char *c_tradeId = env->GetStringUTFChars(tradeId ,NULL);//转换成 char *
		int len = strlen(c_tradeId);
		response->tradeId = new char[len + 1];
		memset(response->tradeId,0x0,len + 1);
		strcpy(response->tradeId,c_tradeId);

		env->ReleaseStringUTFChars(tradeId, c_tradeId);
	}
	else
	{
		response->tradeId = new char[2];
		memset(response->tradeId,0x0,2);
		LOGW("tradeId is empty.");
	}
	// data
	obj = env->GetObjectField(obj_response , dataFieldID);
	if (obj != NULL)
	{
		jstring data = (jstring)obj;
		const char *c_data = env->GetStringUTFChars(data ,NULL);//转换成 char *
		int len = strlen(c_data);
		response->data = new char[len + 1];
		memset(response->data,0x0,len + 1);
		strcpy(response->data,c_data);

		env->ReleaseStringUTFChars(data, c_data);
	}
	else
	{
		response->data = new char[2];
		memset(response->data,0x0,2);
		LOGW("data is empty.");
	}
	LOGD("success_callback.");
	// callback
	if (success_callback != NULL)
		success_callback((int)code, *response);
}

void Java_com_ucweb_h5runtime_JniCallback_nativeErrorCallback(JNIEnv *env,jclass clz,jint code,jstring message){
	LOGD("Java_com_ucweb_h5runtime_JniCallback_nativeErrorCallback start.");
	char * errorMsg = NULL;
	jclass clsstring = env->FindClass("java/lang/String");
	jstring strencode = env->NewStringUTF("UTF-8");
	jmethodID mid = env->GetMethodID(clsstring, "getBytes", "(Ljava/lang/String;)[B");
	jbyteArray barr= (jbyteArray)env->CallObjectMethod(message,mid,strencode);
	jsize len = env->GetArrayLength(barr);
    jbyte * buf = env->GetByteArrayElements(barr,JNI_FALSE);
	if(len > 0)
	{
		errorMsg = new char[len+1];
	    memcpy(errorMsg , buf ,len);
	    errorMsg[len] = 0;
	    LOGD("error_callback start.");
	    if (error_callback != NULL)
	    	error_callback((int)code, errorMsg);
	}
	else
		LOGW("Error message is empty.");
	env->ReleaseByteArrayElements(barr,buf,0);
}

#endif
}
