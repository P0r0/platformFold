.class public Lcom/u8/sdk/baidu/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation(Landroid/content/Context;)Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;
    .registers 5
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 13
    .line 14
    const-string v2, "ORIENTATION"

    .line 15
    const/4 v3, 0x0

    .line 13
    invoke-static {p0, v2, v3}, Lcom/u8/sdk/baidu/PreferenceHelper;->getIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 16
    .local v1, "orientation":I
    sget-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->LANDSCAPE:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    .line 17
    .local v0, "mOrientation":Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;
    packed-switch v1, :pswitch_data_12

    .line 23
    sget-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->LANDSCAPE:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    .line 25
    :goto_e
    return-object v0

    .line 19
    :pswitch_f
    sget-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->PORTRAIT:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    .line 20
    goto :goto_e

    .line 17
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch
.end method

.method public static screen_height(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 35
    .local v0, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public static screen_width(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 45
    .local v0, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method
