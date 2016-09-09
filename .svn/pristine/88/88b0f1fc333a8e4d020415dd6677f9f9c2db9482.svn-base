.class public Lcom/u8/sdk/U8UnityContext;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "U8UnityContext.java"


# static fields
.field public static final CALLBACK_GAMEOBJECT_NAME:Ljava/lang/String; = "(u8sdk_callback)"

.field public static final CALLBACK_INIT:Ljava/lang/String; = "OnInitSuc"

.field public static final CALLBACK_LOGIN:Ljava/lang/String; = "OnLoginSuc"

.field public static final CALLBACK_LOGOUT:Ljava/lang/String; = "OnLogout"

.field public static final CALLBACK_PAY:Ljava/lang/String; = "OnPaySuc"

.field public static final CALLBACK_SWITCH_LOGIN:Ljava/lang/String; = "OnSwitchLogin"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    return-void
.end method

.method private parseGameData(Ljava/lang/String;)Lcom/u8/sdk/UserExtraData;
    .locals 4

    new-instance v0, Lcom/u8/sdk/UserExtraData;

    invoke-direct {v0}, Lcom/u8/sdk/UserExtraData;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "dataType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/u8/sdk/UserExtraData;->setDataType(I)V

    const-string v3, "roleID"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/u8/sdk/UserExtraData;->setRoleID(Ljava/lang/String;)V

    const-string v3, "roleName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/u8/sdk/UserExtraData;->setRoleName(Ljava/lang/String;)V

    const-string v3, "roleLevel"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/u8/sdk/UserExtraData;->setRoleLevel(Ljava/lang/String;)V

    const-string v3, "serverID"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/u8/sdk/UserExtraData;->setServerID(I)V

    const-string v3, "serverName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/u8/sdk/UserExtraData;->setServerName(Ljava/lang/String;)V

    const-string v3, "moneyNum"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/u8/sdk/UserExtraData;->setMoneyNum(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private parsePayParams(Ljava/lang/String;)Lcom/u8/sdk/PayParams;
    .locals 4

    new-instance v2, Lcom/u8/sdk/PayParams;

    invoke-direct {v2}, Lcom/u8/sdk/PayParams;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "productId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setProductId(Ljava/lang/String;)V

    const-string v3, "productName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setProductName(Ljava/lang/String;)V

    const-string v3, "productDesc"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setProductDesc(Ljava/lang/String;)V

    const-string v3, "price"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setPrice(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setRatio(I)V

    const-string v3, "buyNum"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setBuyNum(I)V

    const-string v3, "coinNum"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setCoinNum(I)V

    const-string v3, "serverId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setServerId(Ljava/lang/String;)V

    const-string v3, "serverName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setServerName(Ljava/lang/String;)V

    const-string v3, "roleId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setRoleId(Ljava/lang/String;)V

    const-string v3, "roleName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setRoleName(Ljava/lang/String;)V

    const-string v3, "roleLevel"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setRoleLevel(I)V

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setPayNotifyUrl(Ljava/lang/String;)V

    const-string v3, "vip"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setVip(Ljava/lang/String;)V

    const-string v3, "orderID"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setOrderID(Ljava/lang/String;)V

    const-string v3, "extension"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setExtension(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public exit()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/U8UnityContext$7;

    invoke-direct {v1, p0}, Lcom/u8/sdk/U8UnityContext$7;-><init>(Lcom/u8/sdk/U8UnityContext;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initSDK()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/UnityU8SDKListener;

    invoke-direct {v1, p0}, Lcom/u8/sdk/UnityU8SDKListener;-><init>(Lcom/u8/sdk/U8UnityContext;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->setSDKListener(Lcom/u8/sdk/IU8SDKListener;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/u8/sdk/U8SDK;->init(Landroid/app/Activity;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onCreate()V

    return-void
.end method

.method public isSupportAccountCenter()Z
    .locals 2

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    const-string v1, "showAccountCenter"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/plugin/U8User;->isSupport(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportExit()Z
    .locals 2

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/plugin/U8User;->isSupport(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportLogout()Z
    .locals 2

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    const-string v1, "logout"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/plugin/U8User;->isSupport(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public login()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/U8UnityContext$1;

    invoke-direct {v1, p0}, Lcom/u8/sdk/U8UnityContext$1;-><init>(Lcom/u8/sdk/U8UnityContext;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loginCustom(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/U8UnityContext$2;

    invoke-direct {v1, p0, p1}, Lcom/u8/sdk/U8UnityContext$2;-><init>(Lcom/u8/sdk/U8UnityContext;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logout()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/U8UnityContext$5;

    invoke-direct {v1, p0}, Lcom/u8/sdk/U8UnityContext$5;-><init>(Lcom/u8/sdk/U8UnityContext;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public nativeLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "U8_LOG_UNITY"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/u8/sdk/U8SDK;->onActivityResult(IILandroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayerActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/u8/sdk/U8UnityContext;->initSDK()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onDestroy()V

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/u8/sdk/U8SDK;->onNewIntent(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onPause()V

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onPause()V

    return-void
.end method

.method public onRestart()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onRestart()V

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onResume()V

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onStart()V

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onStop()V

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStop()V

    return-void
.end method

.method public pay(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/u8/sdk/U8UnityContext;->parsePayParams(Ljava/lang/String;)Lcom/u8/sdk/PayParams;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    new-instance v2, Lcom/u8/sdk/U8UnityContext$8;

    invoke-direct {v2, p0, v0}, Lcom/u8/sdk/U8UnityContext$8;-><init>(Lcom/u8/sdk/U8UnityContext;Lcom/u8/sdk/PayParams;)V

    invoke-virtual {v1, v2}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const-string v0, "(u8sdk_callback)"

    invoke-static {v0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showAccountCenter()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/U8UnityContext$4;

    invoke-direct {v1, p0}, Lcom/u8/sdk/U8UnityContext$4;-><init>(Lcom/u8/sdk/U8UnityContext;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public submitExtraData(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/u8/sdk/U8UnityContext;->parseGameData(Ljava/lang/String;)Lcom/u8/sdk/UserExtraData;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    new-instance v2, Lcom/u8/sdk/U8UnityContext$6;

    invoke-direct {v2, p0, v0}, Lcom/u8/sdk/U8UnityContext$6;-><init>(Lcom/u8/sdk/U8UnityContext;Lcom/u8/sdk/UserExtraData;)V

    invoke-virtual {v1, v2}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public switchLogin()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/U8UnityContext$3;

    invoke-direct {v1, p0}, Lcom/u8/sdk/U8UnityContext$3;-><init>(Lcom/u8/sdk/U8UnityContext;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
