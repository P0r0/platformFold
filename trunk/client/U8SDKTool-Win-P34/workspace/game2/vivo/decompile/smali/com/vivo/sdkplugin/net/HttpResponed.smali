.class public interface abstract Lcom/vivo/sdkplugin/net/HttpResponed;
.super Ljava/lang/Object;


# static fields
.field public static final CONNECT_FAILED_CLIENT_ERROR:I = 0xc9

.field public static final CONNECT_FAILED_CONNECTION_DISCONNECTION:I = 0xcf

.field public static final CONNECT_FAILED_GET_CONTENT_ERROR:I = 0xce

.field public static final CONNECT_FAILED_NETWORK_ERROR:I = 0xca

.field public static final CONNECT_FAILED_NO_RESPONSE:I = 0xcb

.field public static final CONNECT_FAILED_NO_STATUS_CODE:I = 0xcc

.field public static final CONNECT_FAILED_WRONG_STATUS_CODE:I = 0xcd

.field public static final CONNECT_SUCCESS:I = 0x12c

.field public static final START_TO_CONNECT:I = 0x64

.field public static final UPLOAD_SUCCESS:I = 0xc8


# virtual methods
.method public abstract respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
.end method

.method public abstract respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
.end method
