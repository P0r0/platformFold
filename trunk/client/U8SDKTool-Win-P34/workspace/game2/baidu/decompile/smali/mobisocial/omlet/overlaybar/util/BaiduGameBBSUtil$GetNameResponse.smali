.class public Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse;
.super Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$BaseBBSResponse;
.source "BaiduGameBBSUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetNameResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse$Status;
    }
.end annotation


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 250
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$BaseBBSResponse;-><init>()V

    .line 251
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
    .line 254
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$BaseBBSResponse;-><init>(Lorg/json/JSONObject;)V

    .line 255
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse;->status:I

    sget-object v1, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse$Status;->ID_REGISTERED:Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse$Status;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse$Status;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 256
    const-string v0, "username"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse;->name:Ljava/lang/String;

    .line 258
    :cond_15
    return-void
.end method


# virtual methods
.method public hasRegisteredName()Z
    .registers 3

    .prologue
    .line 261
    iget v0, p0, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse;->status:I

    sget-object v1, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse$Status;->ID_REGISTERED:Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse$Status;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse$Status;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$GetNameResponse;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
