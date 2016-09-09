package com.ucweb.h5runtime;

import cn.uc.paysdk.face.commons.Response;

/**
 * 定义 Java 回调 C++ 的 Native 方法，用于向 C++ 返回 listener 收到的结果。
 *
 */
public class JniCallback {
    
    public static native void nativeResultCallback(int code, Response msg);
    
    public static native void nativeErrorCallback(int errorCode, String msg);
}
