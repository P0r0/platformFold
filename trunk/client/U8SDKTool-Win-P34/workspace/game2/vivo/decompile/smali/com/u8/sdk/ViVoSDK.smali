.class public Lcom/u8/sdk/ViVoSDK;
.super Ljava/lang/Object;
.source "ViVoSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/u8/sdk/ViVoSDK$OrderTask;
    }
.end annotation


# static fields
.field public static final KEY_LOGIN_RESULT:Ljava/lang/String; = "LoginResult"

.field public static final KEY_SWITCH_ACCOUNT:Ljava/lang/String; = "switchAccount"

.field public static final REQ_CODE_LOGIN:I = 0x3e8

.field public static final REQ_CODE_PAY:I = 0x3ea

.field public static final REQ_CODE_SWITCH:I = 0x3e9

.field private static instance:Lcom/u8/sdk/ViVoSDK;


# instance fields
.field private appID:Ljava/lang/String;

.field private loadingActivity:Landroid/app/ProgressDialog;

.field private sdkApi:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

.field private showing:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/u8/sdk/ViVoSDK;->showing:Z

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/u8/sdk/ViVoSDK;->loadingActivity:Landroid/app/ProgressDialog;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/ViVoSDK;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 365
    invoke-direct {p0, p1, p2}, Lcom/u8/sdk/ViVoSDK;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/u8/sdk/ViVoSDK;Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/u8/sdk/ViVoSDK;->hideProgressDialog(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$2(Lcom/u8/sdk/ViVoSDK;)Lcom/vivo/sdkplugin/aidl/VivoUnionManager;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK;->sdkApi:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/u8/sdk/ViVoSDK;Z)V
    .registers 2

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/u8/sdk/ViVoSDK;->showing:Z

    return-void
.end method

.method static synthetic access$4(Lcom/u8/sdk/ViVoSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 197
    invoke-direct {p0, p1, p2, p3}, Lcom/u8/sdk/ViVoSDK;->encodeLoginResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/u8/sdk/ViVoSDK;)Z
    .registers 2

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/u8/sdk/ViVoSDK;->showing:Z

    return v0
.end method

.method static synthetic access$6(Lcom/u8/sdk/ViVoSDK;Lcom/u8/sdk/PayParams;)V
    .registers 2

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/u8/sdk/ViVoSDK;->onPay(Lcom/u8/sdk/PayParams;)V

    return-void
.end method

.method private encodeLoginResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "openid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;

    .prologue
    .line 199
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 201
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "openid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v2, "name"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v2, "token"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_14} :catch_19

    .line 208
    :goto_14
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 204
    :catch_19
    move-exception v0

    .line 205
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_14
.end method

.method public static getInstance()Lcom/u8/sdk/ViVoSDK;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/u8/sdk/ViVoSDK;->instance:Lcom/u8/sdk/ViVoSDK;

    if-nez v0, :cond_b

    .line 46
    new-instance v0, Lcom/u8/sdk/ViVoSDK;

    invoke-direct {v0}, Lcom/u8/sdk/ViVoSDK;-><init>()V

    sput-object v0, Lcom/u8/sdk/ViVoSDK;->instance:Lcom/u8/sdk/ViVoSDK;

    .line 48
    :cond_b
    sget-object v0, Lcom/u8/sdk/ViVoSDK;->instance:Lcom/u8/sdk/ViVoSDK;

    return-object v0
.end method

.method private hideProgressDialog(Landroid/app/Activity;)V
    .registers 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK;->loadingActivity:Landroid/app/ProgressDialog;

    if-nez v0, :cond_5

    .line 389
    :goto_4
    return-void

    .line 387
    :cond_5
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK;->loadingActivity:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/u8/sdk/ViVoSDK;->loadingActivity:Landroid/app/ProgressDialog;

    goto :goto_4
.end method

.method private onPay(Lcom/u8/sdk/PayParams;)V
    .registers 14
    .param p1, "params"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 324
    :try_start_0
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v5

    .line 325
    .local v5, "productName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v4

    .line 326
    .local v4, "productDes":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()F

    move-result v3

    .line 328
    .local v3, "price":F
    const-string v8, "U8SDK"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "The pay extension is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getExtension()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getExtension()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 332
    .local v1, "json":Lorg/json/JSONObject;
    const-string v8, "transNo"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 333
    .local v6, "vivoOrder":Ljava/lang/String;
    const-string v8, "accessKey"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 336
    .local v7, "vivoSignature":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 337
    .local v2, "localBundle":Landroid/os/Bundle;
    const-string v8, "transNo"

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v8, "accessKey"

    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v8, "productName"

    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v8, "productDes"

    invoke-virtual {v2, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v8, "price"

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v9, v3

    float-to-long v10, v9

    invoke-virtual {v2, v8, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 342
    const-string v8, "appId"

    iget-object v9, p0, Lcom/u8/sdk/ViVoSDK;->appID:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v8, "blance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getCoinNum()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v8, "vip"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getVip()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v8, "level"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getRoleLevel()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 347
    const-string v8, "party"

    const-string v9, "none"

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v8, "roleId"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getRoleId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v8, "roleName"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getRoleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v8, "serverName"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getServerName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v8, "extInfo"

    const-string v9, "none"

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v8, "logOnOff"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 354
    iget-object v8, p0, Lcom/u8/sdk/ViVoSDK;->sdkApi:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v9

    invoke-virtual {v9}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->payment(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c6} :catch_c7

    .line 361
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "localBundle":Landroid/os/Bundle;
    .end local v3    # "price":F
    .end local v4    # "productDes":Ljava/lang/String;
    .end local v5    # "productName":Ljava/lang/String;
    .end local v6    # "vivoOrder":Ljava/lang/String;
    .end local v7    # "vivoSignature":Ljava/lang/String;
    :goto_c6
    return-void

    .line 357
    :catch_c7
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 359
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v8

    const/16 v9, 0xb

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "pay failed. exception:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_c6
.end method

.method private showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 366
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK;->loadingActivity:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_6

    .line 381
    :goto_5
    return-void

    .line 370
    :cond_6
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/u8/sdk/ViVoSDK;->loadingActivity:Landroid/app/ProgressDialog;

    .line 371
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK;->loadingActivity:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 372
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK;->loadingActivity:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 373
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK;->loadingActivity:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK;->loadingActivity:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/u8/sdk/ViVoSDK$8;

    invoke-direct {v1, p0}, Lcom/u8/sdk/ViVoSDK$8;-><init>(Lcom/u8/sdk/ViVoSDK;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 380
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK;->loadingActivity:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_5
.end method


# virtual methods
.method public initSDK(Lcom/u8/sdk/SDKParams;)V
    .registers 9
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 55
    :try_start_0
    const-string v3, "Vivo_AppID"

    invoke-virtual {p1, v3}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/u8/sdk/ViVoSDK;->appID:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/u8/sdk/ViVoSDK$1;

    invoke-direct {v0, p0}, Lcom/u8/sdk/ViVoSDK$1;-><init>(Lcom/u8/sdk/ViVoSDK;)V

    .line 94
    .local v0, "accountListener":Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;
    new-instance v2, Lcom/u8/sdk/ViVoSDK$2;

    invoke-direct {v2, p0}, Lcom/u8/sdk/ViVoSDK$2;-><init>(Lcom/u8/sdk/ViVoSDK;)V

    .line 113
    .local v2, "payListener":Lcom/bbk/payment/payment/OnVivoPayResultListener;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    new-instance v4, Lcom/u8/sdk/ViVoSDK$3;

    invoke-direct {v4, p0, v0, v2}, Lcom/u8/sdk/ViVoSDK$3;-><init>(Lcom/u8/sdk/ViVoSDK;Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;Lcom/bbk/payment/payment/OnVivoPayResultListener;)V

    invoke-virtual {v3, v4}, Lcom/u8/sdk/U8SDK;->setActivityCallback(Lcom/u8/sdk/IActivityCallback;)V

    .line 173
    new-instance v3, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/u8/sdk/ViVoSDK;->sdkApi:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    .line 174
    iget-object v3, p0, Lcom/u8/sdk/ViVoSDK;->sdkApi:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    invoke-virtual {v3, v0}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->registVivoAccountChangeListener(Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;)V

    .line 175
    iget-object v3, p0, Lcom/u8/sdk/ViVoSDK;->sdkApi:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->initVivoPaymentAndRecharge(Landroid/content/Context;Lcom/bbk/payment/payment/OnVivoPayResultListener;)V

    .line 177
    iget-object v3, p0, Lcom/u8/sdk/ViVoSDK;->sdkApi:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->bindUnionService()V

    .line 180
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "init success"

    invoke-virtual {v3, v4, v5}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    .line 189
    .end local v0    # "accountListener":Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;
    .end local v2    # "payListener":Lcom/bbk/payment/payment/OnVivoPayResultListener;
    :goto_4e
    return-void

    .line 184
    :catch_4f
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "init failed.exception:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 186
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4e
.end method

.method public login()V
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK;->sdkApi:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    iget-object v1, p0, Lcom/u8/sdk/ViVoSDK;->appID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->startLogin(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public onGotOrder(Lcom/u8/sdk/PayParams;Lcom/u8/sdk/U8Order;)V
    .registers 5
    .param p1, "params"    # Lcom/u8/sdk/PayParams;
    .param p2, "order"    # Lcom/u8/sdk/U8Order;

    .prologue
    .line 292
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/ViVoSDK$7;

    invoke-direct {v1, p0, p2, p1}, Lcom/u8/sdk/ViVoSDK$7;-><init>(Lcom/u8/sdk/ViVoSDK;Lcom/u8/sdk/U8Order;Lcom/u8/sdk/PayParams;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 319
    return-void
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 4
    .param p1, "params"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 274
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/ViVoSDK$6;

    invoke-direct {v1, p0, p1}, Lcom/u8/sdk/ViVoSDK$6;-><init>(Lcom/u8/sdk/ViVoSDK;Lcom/u8/sdk/PayParams;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 286
    return-void
.end method

.method public sdkExit()V
    .registers 4

    .prologue
    .line 218
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 219
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u9000\u51fa\u786e\u8ba4"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 220
    const-string v1, "\u73b0\u5728\u8fd8\u65e9\uff0c\u8981\u4e0d\u8981\u518d\u73a9\u4e00\u4f1a\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 221
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 222
    const-string v1, "\u597d\u5427"

    .line 223
    new-instance v2, Lcom/u8/sdk/ViVoSDK$4;

    invoke-direct {v2, p0}, Lcom/u8/sdk/ViVoSDK$4;-><init>(Lcom/u8/sdk/ViVoSDK;)V

    .line 222
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 229
    const-string v1, "\u4e00\u4f1a\u518d\u73a9"

    .line 230
    new-instance v2, Lcom/u8/sdk/ViVoSDK$5;

    invoke-direct {v2, p0}, Lcom/u8/sdk/ViVoSDK$5;-><init>(Lcom/u8/sdk/ViVoSDK;)V

    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 242
    return-void
.end method

.method public submitExtraData(Lcom/u8/sdk/UserExtraData;)V
    .registers 8
    .param p1, "data"    # Lcom/u8/sdk/UserExtraData;

    .prologue
    .line 213
    invoke-virtual {p1}, Lcom/u8/sdk/UserExtraData;->getRoleID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/u8/sdk/UserExtraData;->getRoleLevel()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/u8/sdk/UserExtraData;->getServerID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/u8/sdk/UserExtraData;->getRoleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p1}, Lcom/u8/sdk/UserExtraData;->getServerName()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->vivoAccountreportRoleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    return-void
.end method
