.class public Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ResponseParams_Receive$_ResponseParams;
.super Ljava/lang/Object;
.source "OmlibBaiduPushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ResponseParams_Receive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_ResponseParams"
.end annotation


# instance fields
.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appid"
    .end annotation
.end field

.field public channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channel_id"
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
