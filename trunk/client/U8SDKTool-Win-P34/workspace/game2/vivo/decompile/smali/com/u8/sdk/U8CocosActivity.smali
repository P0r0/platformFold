.class public Lcom/u8/sdk/U8CocosActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "U8CocosActivity.java"


# static fields
.field public static final CALLBACK_INIT:Ljava/lang/String; = "OnInitSuc"

.field public static final CALLBACK_LOGIN:Ljava/lang/String; = "OnLoginSuc"

.field public static final CALLBACK_LOGOUT:Ljava/lang/String; = "OnLogout"

.field public static final CALLBACK_PAY:Ljava/lang/String; = "OnPaySuc"

.field public static final CALLBACK_SWITCH_LOGIN:Ljava/lang/String; = "OnSwitchLogin"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    return-void
.end method

.method public static exit()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/U8CocosActivity$7;

    invoke-direct {v1}, Lcom/u8/sdk/U8CocosActivity$7;-><init>()V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static login()V
    .locals 2

    const-string v0, "TestLua"

    const-string v1, "login called!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/U8CocosActivity$1;

    invoke-direct {v1}, Lcom/u8/sdk/U8CocosActivity$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static logout()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/U8CocosActivity$5;

    invoke-direct {v1}, Lcom/u8/sdk/U8CocosActivity$5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private parseGameData(Lorg/json/JSONObject;)Lcom/u8/sdk/UserExtraData;
    .locals 6

    new-instance v0, Lcom/u8/sdk/UserExtraData;

    invoke-direct {v0}, Lcom/u8/sdk/UserExtraData;-><init>()V

    :try_start_0
    const-string v4, "dataType"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/u8/sdk/UserExtraData;->setDataType(I)V

    const-string v4, "roleID"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/u8/sdk/UserExtraData;->setRoleID(Ljava/lang/String;)V

    const-string v4, "roleName"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/u8/sdk/UserExtraData;->setRoleName(Ljava/lang/String;)V

    const-string v4, "roleLevel"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/u8/sdk/UserExtraData;->setRoleLevel(Ljava/lang/String;)V

    const-string v4, "serverID"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/u8/sdk/UserExtraData;->setServerID(I)V

    const-string v4, "serverName"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/u8/sdk/UserExtraData;->setServerName(Ljava/lang/String;)V

    const-string v4, "moneyNum"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/u8/sdk/UserExtraData;->setMoneyNum(I)V

    const-string v4, "roleCreateTime"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "roleLevelUpTime"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/u8/sdk/UserExtraData;->setRoleCreateTime(J)V

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/u8/sdk/UserExtraData;->setRoleLevelUpTime(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static parsePayParams(Lorg/json/JSONObject;)Lcom/u8/sdk/PayParams;
    .locals 3

    new-instance v1, Lcom/u8/sdk/PayParams;

    invoke-direct {v1}, Lcom/u8/sdk/PayParams;-><init>()V

    :try_start_0
    const-string v2, "productId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setProductId(Ljava/lang/String;)V

    const-string v2, "productName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setProductName(Ljava/lang/String;)V

    const-string v2, "productDesc"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setProductDesc(Ljava/lang/String;)V

    const-string v2, "price"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setPrice(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setRatio(I)V

    const-string v2, "buyNum"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setBuyNum(I)V

    const-string v2, "coinNum"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setCoinNum(I)V

    const-string v2, "serverId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setServerId(Ljava/lang/String;)V

    const-string v2, "serverName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setServerName(Ljava/lang/String;)V

    const-string v2, "roleId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setRoleId(Ljava/lang/String;)V

    const-string v2, "roleName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setRoleName(Ljava/lang/String;)V

    const-string v2, "roleLevel"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setRoleLevel(I)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setPayNotifyUrl(Ljava/lang/String;)V

    const-string v2, "vip"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setVip(Ljava/lang/String;)V

    const-string v2, "orderID"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setOrderID(Ljava/lang/String;)V

    const-string v2, "extension"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/PayParams;->setExtension(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static pay(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string v3, "TestLua"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/u8/sdk/U8CocosActivity;->parsePayParams(Lorg/json/JSONObject;)Lcom/u8/sdk/PayParams;

    move-result-object v2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    new-instance v4, Lcom/u8/sdk/U8CocosActivity$8;

    invoke-direct {v4, v2}, Lcom/u8/sdk/U8CocosActivity$8;-><init>(Lcom/u8/sdk/PayParams;)V

    invoke-virtual {v3, v4}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static switchLogin()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/U8CocosActivity$3;

    invoke-direct {v1}, Lcom/u8/sdk/U8CocosActivity$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public initSDK()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/CocosU8SDKListener;

    invoke-direct {v1, p0}, Lcom/u8/sdk/CocosU8SDKListener;-><init>(Lcom/u8/sdk/U8CocosActivity;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->setSDKListener(Lcom/u8/sdk/IU8SDKListener;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/u8/sdk/U8SDK;->init(Landroid/app/Activity;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onCreate()V

    return-void
.end method

.method public loginCustom(Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/U8CocosActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/u8/sdk/U8CocosActivity$2;-><init>(Lcom/u8/sdk/U8CocosActivity;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/u8/sdk/U8SDK;->onActivityResult(IILandroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/u8/sdk/U8CocosActivity;->initSDK()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onDestroy()V

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/u8/sdk/U8SDK;->onNewIntent(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onPause()V

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    return-void
.end method

.method public onRestart()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onRestart()V

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onResume()V

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onStart()V

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onStop()V

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStop()V

    return-void
.end method

.method public sendCallback(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lcom/u8/sdk/U8CocosActivity$9;

    invoke-direct {v0, p0}, Lcom/u8/sdk/U8CocosActivity$9;-><init>(Lcom/u8/sdk/U8CocosActivity;)V

    invoke-virtual {p0, v0}, Lcom/u8/sdk/U8CocosActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showAccountCenter()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/U8CocosActivity$4;

    invoke-direct {v1, p0}, Lcom/u8/sdk/U8CocosActivity$4;-><init>(Lcom/u8/sdk/U8CocosActivity;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public submitExtraData(Lorg/json/JSONObject;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/u8/sdk/U8CocosActivity;->parseGameData(Lorg/json/JSONObject;)Lcom/u8/sdk/UserExtraData;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    new-instance v2, Lcom/u8/sdk/U8CocosActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/u8/sdk/U8CocosActivity$6;-><init>(Lcom/u8/sdk/U8CocosActivity;Lcom/u8/sdk/UserExtraData;)V

    invoke-virtual {v1, v2}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public tip(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/U8CocosActivity$10;

    invoke-direct {v1, p0, p1}, Lcom/u8/sdk/U8CocosActivity$10;-><init>(Lcom/u8/sdk/U8CocosActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
