.class public Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$BaseBBSResponse;
.super Ljava/lang/Object;
.source "BaiduGameBBSUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseBBSResponse"
.end annotation


# instance fields
.field public message:Ljava/lang/String;

.field public status:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    if-nez p1, :cond_d

    .line 227
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Failed to get response"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_d
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$BaseBBSResponse;->status:I

    .line 230
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$BaseBBSResponse;->message:Ljava/lang/String;

    .line 232
    return-void
.end method
