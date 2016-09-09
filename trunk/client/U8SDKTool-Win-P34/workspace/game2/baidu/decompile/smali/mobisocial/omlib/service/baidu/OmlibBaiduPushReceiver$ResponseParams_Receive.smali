.class public Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ResponseParams_Receive;
.super Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$BaiduResponse;
.source "OmlibBaiduPushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseParams_Receive"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ResponseParams_Receive$_ResponseParams;
    }
.end annotation


# instance fields
.field public responseParams:Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ResponseParams_Receive$_ResponseParams;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "response_params"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 190
    invoke-direct {p0}, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$BaiduResponse;-><init>()V

    .line 195
    return-void
.end method
