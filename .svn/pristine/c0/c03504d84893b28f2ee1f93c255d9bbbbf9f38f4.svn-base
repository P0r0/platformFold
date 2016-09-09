.class public final Lcom/baidu/bdgame/sdk/obf/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/l$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method protected static a()Lcom/baidu/bdgame/sdk/obf/l;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/l$a;->a:Lcom/baidu/bdgame/sdk/obf/l;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_24

    .line 51
    const-string v0, "BaiduPlatformSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DENIED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_24
    return-void
.end method

.method private a(Landroid/content/Context;ZLcom/baidu/bdgame/sdk/obf/o;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/platformsdk/AssistActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    const-string v1, "intent_key_is_check_way_login"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/m;

    const-class v2, Lcom/baidu/platformsdk/AuthenticateActivity;

    invoke-direct {v1, p3, v2}, Lcom/baidu/bdgame/sdk/obf/m;-><init>(Lcom/baidu/bdgame/sdk/obf/o;Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 208
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 209
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/l;Landroid/content/Context;ZLcom/baidu/bdgame/sdk/obf/o;)V
    .registers 4

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;ZLcom/baidu/bdgame/sdk/obf/o;)V

    return-void
.end method

.method private static a(Ljava/io/InputStream;)V
    .registers 2

    .prologue
    .line 80
    if-eqz p0, :cond_5

    .line 82
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 87
    :cond_5
    :goto_5
    return-void

    .line 83
    :catch_6
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method private a(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 674
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/platformsdk/AssistActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 675
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 676
    const-string v1, "ACTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 677
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/m;

    const-class v2, Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-direct {v1, p3, v2}, Lcom/baidu/bdgame/sdk/obf/m;-><init>(Lcom/baidu/bdgame/sdk/obf/o;Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 678
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 679
    const/4 v0, 0x1

    return v0
.end method

.method private a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/fy;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/fy;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 665
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/platformsdk/AssistActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 666
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 667
    const-string v1, "bundle_key_user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 668
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/m;

    const-class v2, Lcom/baidu/platformsdk/BindPhoneActivity;

    invoke-direct {v1, p3, v2}, Lcom/baidu/bdgame/sdk/obf/m;-><init>(Lcom/baidu/bdgame/sdk/obf/o;Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 669
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 670
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/l;Landroid/content/Context;Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 6

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/l;->b(Landroid/content/Context;Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/content/Context;Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/platformsdk/PayOrderInfo;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/platformsdk/PayOrderInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v8, -0xbba

    .line 374
    if-nez p2, :cond_d

    .line 375
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BaiduPlatformSDK: payOrderInfo null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_d
    invoke-virtual {p2}, Lcom/baidu/platformsdk/PayOrderInfo;->isCooperatorOrderSerialValid()Z

    move-result v1

    if-nez v1, :cond_23

    .line 384
    if-eqz p4, :cond_22

    .line 385
    const-string v1, "bdp_sdk_pay_error_5"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v8, v1, p2}, Lcom/baidu/bdgame/sdk/obf/o;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 431
    :cond_22
    :goto_22
    return v0

    .line 390
    :cond_23
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/cb;->a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v1

    .line 391
    if-nez v1, :cond_39

    .line 392
    if-eqz p4, :cond_22

    .line 393
    const-string v1, "bdp_sdk_pay_error_1"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v8, v1, p2}, Lcom/baidu/bdgame/sdk/obf/o;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_22

    .line 398
    :cond_39
    invoke-virtual {p2}, Lcom/baidu/platformsdk/PayOrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 400
    if-eqz p4, :cond_22

    .line 401
    const-string v1, "bdp_sdk_pay_error_2"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p4, v8, v1, v2}, Lcom/baidu/bdgame/sdk/obf/o;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_22

    .line 406
    :cond_54
    invoke-virtual {p2}, Lcom/baidu/platformsdk/PayOrderInfo;->getTotalPriceCent()J

    move-result-wide v2

    .line 408
    const-wide/32 v4, 0x989680

    cmp-long v4, v2, v4

    if-lez v4, :cond_6f

    .line 409
    if-eqz p4, :cond_22

    .line 410
    const-string v1, "bdp_sdk_pay_error_3"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v8, v1, p2}, Lcom/baidu/bdgame/sdk/obf/o;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_22

    .line 416
    :cond_6f
    invoke-virtual {p2}, Lcom/baidu/platformsdk/PayOrderInfo;->getRatio()I

    move-result v4

    .line 417
    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gtz v2, :cond_8b

    if-gtz v4, :cond_8b

    .line 418
    if-eqz p4, :cond_22

    .line 419
    const-string v1, "bdp_sdk_pay_error_4"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v8, v1, p2}, Lcom/baidu/bdgame/sdk/obf/o;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_22

    .line 424
    :cond_8b
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/baidu/platformsdk/AssistActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 425
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 426
    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 427
    const-string v1, "order"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 428
    const-string v1, "callback_extra"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/m;

    const-class v2, Lcom/baidu/platformsdk/CashierDeskActivity;

    invoke-direct {v1, p4, v2}, Lcom/baidu/bdgame/sdk/obf/m;-><init>(Lcom/baidu/bdgame/sdk/obf/o;Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 430
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 431
    const/4 v0, 0x1

    goto/16 :goto_22
.end method

.method private k(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/platformsdk/AssistActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    const-string v1, "bundle_key_autologin"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/m;

    const-class v2, Lcom/baidu/platformsdk/LoginActivity;

    invoke-direct {v1, p2, v2}, Lcom/baidu/bdgame/sdk/obf/m;-><init>(Lcom/baidu/bdgame/sdk/obf/o;Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 193
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 194
    return-void
.end method

.method private static s(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 56
    const-string v0, "android.permission.SEND_SMS"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    const-string v0, "android.permission.INTERNET"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    const-string v0, "android.permission.GET_TASKS"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    const-string v0, "android.permission.CHANGE_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private static t(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 73
    :try_start_4
    const-string v1, "data.bin"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/l;->a(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_e

    .line 77
    return-void

    .line 74
    :catch_e
    move-exception v0

    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please check this file in assets: data.bin"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 901
    invoke-static {p1}, Lmobisocial/omlet/OmletGameSDK;->onGameActivityPause(Landroid/app/Activity;)V

    .line 902
    return-void
.end method

.method protected a(Landroid/app/Application;)V
    .registers 4

    .prologue
    .line 857
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ls;->a()Lcom/baidu/bdgame/sdk/obf/ls;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/ls;->a(Landroid/content/Context;)V

    .line 858
    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    sget-object v1, Lcom/baidu/sapi2/utils/enums/Domain;->DOMAIN_ONLINE:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/api/BaiduWallet;->setPassDomain(Lcom/baidu/sapi2/utils/enums/Domain;)V

    .line 859
    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/api/BaiduWallet;->initWallet(Landroid/content/Context;)V

    .line 860
    return-void
.end method

.method protected a(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 844
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 845
    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/l$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/l$1;-><init>(Lcom/baidu/bdgame/sdk/obf/l;Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V

    invoke-direct {p0, p1, v0}, Lcom/baidu/bdgame/sdk/obf/l;->k(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 184
    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/baidu/platformsdk/BDPlatformSetting;)V
    .registers 7

    .prologue
    .line 111
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/l;->s(Landroid/content/Context;)V

    .line 112
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/l;->t(Landroid/content/Context;)V

    .line 113
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la;->a()Lcom/baidu/bdgame/sdk/obf/la;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/platformsdk/BDPlatformSetting;->getAppID()I

    move-result v1

    invoke-virtual {p2}, Lcom/baidu/platformsdk/BDPlatformSetting;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/la;->a(Landroid/content/Context;ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/at;)V

    .line 115
    invoke-virtual {p2}, Lcom/baidu/platformsdk/BDPlatformSetting;->getDomain()Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    move-result-object v0

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->b:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    .line 116
    const-string v1, "BaiduPlatformSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The status is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->b:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    sget-object v3, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->DOMAIN_DEBUG:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    if-ne v0, v3, :cond_8f

    const-string v0, "debug"

    :goto_34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/lz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Lcom/baidu/platformsdk/BDPlatformSetting;->getOrientation()I

    move-result v0

    sput v0, Lcom/baidu/bdgame/sdk/obf/kr;->f:I

    .line 119
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kr;->b()V

    .line 120
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->j:Ljava/lang/String;

    .line 123
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la;->a()Lcom/baidu/bdgame/sdk/obf/la;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/platformsdk/BDPlatformSetting;->getAppID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/baidu/platformsdk/BDPlatformSetting;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Lcom/baidu/platformsdk/BDPlatformSetting;->getAppID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/np;->a:Ljava/lang/String;

    .line 129
    invoke-static {}, Lcom/baidu/platformsdk/LoginActivity;->b()V

    .line 132
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;)V

    .line 134
    const-string v0, "BaiduPlatformSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 116
    :cond_8f
    const-string v0, "online"

    goto :goto_34
.end method

.method protected a(Landroid/content/Context;Z)V
    .registers 3

    .prologue
    .line 826
    invoke-static {p1, p2}, Lcom/baidu/bdgame/sdk/obf/at;->a(Landroid/content/Context;Z)V

    .line 827
    return-void
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/p;)V
    .registers 3

    .prologue
    .line 818
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/at;->a(Lcom/baidu/bdgame/sdk/obf/p;)V

    .line 819
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 834
    sput-object p1, Lcom/baidu/bdgame/sdk/obf/kr;->i:Ljava/lang/String;

    .line 835
    sput-object p2, Lcom/baidu/bdgame/sdk/obf/kr;->h:Ljava/lang/String;

    .line 836
    return-void
.end method

.method protected a(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 144
    sget-boolean v0, Lcom/baidu/bdgame/sdk/obf/kr;->a:Z

    return v0
.end method

.method protected a(Landroid/content/Context;Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/platformsdk/PayOrderInfo;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/platformsdk/PayOrderInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 356
    const/4 v6, 0x0

    new-instance v0, Lcom/baidu/bdgame/sdk/obf/l$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/l$4;-><init>(Lcom/baidu/bdgame/sdk/obf/l;Landroid/content/Context;Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)V

    invoke-direct {p0, p1, v6, v0}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;ZLcom/baidu/bdgame/sdk/obf/o;)V

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/platformsdk/OrderStatus;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 442
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 444
    :cond_c
    const/4 v0, 0x0

    .line 447
    :goto_d
    return v0

    :cond_e
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/l$5;

    invoke-direct {v0, p0, p3}, Lcom/baidu/bdgame/sdk/obf/l$5;-><init>(Lcom/baidu/bdgame/sdk/obf/l;Lcom/baidu/bdgame/sdk/obf/o;)V

    invoke-static {p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/cb;->e(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    goto :goto_d
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    const-string v0, "3.7.1"

    return-object v0
.end method

.method protected b(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 909
    invoke-static {p1}, Lmobisocial/omlet/OmletGameSDK;->onGameActivityResume(Landroid/app/Activity;)V

    .line 910
    return-void
.end method

.method protected b(Landroid/content/Context;Z)V
    .registers 3

    .prologue
    .line 893
    invoke-static {p1, p2}, Lmobisocial/omlet/OmletGameSDK;->setRecordingControlsEnabled(Landroid/content/Context;Z)V

    .line 894
    return-void
.end method

.method protected b(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 296
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->c()Z

    move-result v0

    return v0
.end method

.method protected b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 218
    if-nez p2, :cond_4

    .line 242
    :cond_3
    :goto_3
    return v0

    .line 221
    :cond_4
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 222
    if-eqz v1, :cond_3

    .line 225
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/l$2;

    invoke-direct {v1, p0, p2}, Lcom/baidu/bdgame/sdk/obf/l$2;-><init>(Lcom/baidu/bdgame/sdk/obf/l;Lcom/baidu/bdgame/sdk/obf/o;)V

    invoke-static {p1, v0, v1}, Lcom/baidu/bdgame/sdk/obf/ca;->f(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;

    .line 242
    const/4 v0, 0x1

    goto :goto_3
.end method

.method protected c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 306
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_f

    .line 308
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->c()Ljava/lang/String;

    move-result-object v0

    .line 310
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/l$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/l$3;-><init>(Lcom/baidu/bdgame/sdk/obf/l;Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V

    invoke-virtual {p0, p1, v0}, Lcom/baidu/bdgame/sdk/obf/l;->d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 279
    return-void
.end method

.method protected d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 320
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_f

    .line 322
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->g()Ljava/lang/String;

    move-result-object v0

    .line 325
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/platformsdk/AssistActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    const-string v1, "bundle_key_autologin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 284
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 286
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/m;

    const-class v2, Lcom/baidu/platformsdk/LoginActivity;

    invoke-direct {v1, p2, v2}, Lcom/baidu/bdgame/sdk/obf/m;-><init>(Lcom/baidu/bdgame/sdk/obf/o;Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 287
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 288
    return-void
.end method

.method protected e(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 338
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ca;->e(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 505
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 506
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v0

    if-nez v0, :cond_e

    .line 507
    :cond_c
    const/4 v0, 0x0

    .line 514
    :goto_d
    return v0

    .line 510
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/platformsdk/AssistActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 511
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 512
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/m;

    const-class v2, Lcom/baidu/platformsdk/VisitorBindActivity;

    invoke-direct {v1, p2, v2}, Lcom/baidu/bdgame/sdk/obf/m;-><init>(Lcom/baidu/bdgame/sdk/obf/o;Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 513
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 514
    const/4 v0, 0x1

    goto :goto_d
.end method

.method protected f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 474
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kp;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/kp;-><init>()V

    .line 475
    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/kp;->a(Landroid/content/Context;)V

    .line 476
    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/kp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 526
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 527
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v0

    sget-object v1, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v0, v1, :cond_16

    .line 528
    :cond_14
    const/4 v0, 0x0

    .line 534
    :goto_15
    return v0

    .line 530
    :cond_16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/platformsdk/AssistActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 531
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 532
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/m;

    const-class v2, Lcom/baidu/platformsdk/VisitorBindActivity;

    invoke-direct {v1, p2, v2}, Lcom/baidu/bdgame/sdk/obf/m;-><init>(Lcom/baidu/bdgame/sdk/obf/o;Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 533
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 534
    const/4 v0, 0x1

    goto :goto_15
.end method

.method protected g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;
    .registers 4

    .prologue
    .line 489
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_13

    .line 491
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ax;->a(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 493
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected g(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 582
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v1

    .line 583
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 601
    :cond_d
    :goto_d
    return v0

    .line 587
    :cond_e
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ca;->f(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/fy;

    move-result-object v1

    .line 588
    if-eqz v1, :cond_d

    .line 592
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/fy;->e()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 597
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/fy;->c()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 598
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    goto :goto_d

    .line 601
    :cond_26
    invoke-direct {p0, p1, v1, p2}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/fy;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    goto :goto_d
.end method

.method protected h(Landroid/content/Context;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 543
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v2

    .line 544
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v2}, Lcom/baidu/platformsdk/BDPlatformUser;->isThirdPartyUser()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 561
    :cond_14
    :goto_14
    return v0

    .line 548
    :cond_15
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ca;->g(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/nj;

    move-result-object v2

    .line 549
    if-eqz v2, :cond_14

    .line 552
    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/nj;->a()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 553
    invoke-static {p1, v0}, Lcom/baidu/platformsdk/SapiWebActivity;->a(Landroid/content/Context;I)V

    move v0, v1

    .line 554
    goto :goto_14

    .line 556
    :cond_26
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/baidu/platformsdk/AssistActivity;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 557
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 558
    const-string v3, "bundle_key_user"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 559
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/m;

    const/4 v3, 0x0

    const-class v4, Lcom/baidu/platformsdk/ModifyPasswordActivity;

    invoke-direct {v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/m;-><init>(Lcom/baidu/bdgame/sdk/obf/o;Ljava/lang/Class;)V

    invoke-static {v2}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 560
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 561
    goto :goto_14
.end method

.method protected h(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 611
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v1

    .line 612
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 631
    :cond_d
    :goto_d
    return v0

    .line 616
    :cond_e
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ca;->f(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/fy;

    move-result-object v1

    .line 618
    if-eqz v1, :cond_d

    .line 622
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/fy;->e()Z

    move-result v2

    if-nez v2, :cond_d

    .line 627
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/fy;->c()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 628
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    goto :goto_d

    .line 631
    :cond_26
    invoke-direct {p0, p1, v1, p2}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/fy;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    goto :goto_d
.end method

.method protected i(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 570
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ca;->h(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected i(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 722
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 723
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 724
    :cond_c
    const/4 v0, 0x0

    .line 728
    :goto_d
    return v0

    :cond_e
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/l$6;

    invoke-direct {v0, p0, p2}, Lcom/baidu/bdgame/sdk/obf/l$6;-><init>(Lcom/baidu/bdgame/sdk/obf/l;Lcom/baidu/bdgame/sdk/obf/o;)V

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/cb;->d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    goto :goto_d
.end method

.method protected j(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 822
    invoke-static {p1, p2}, Lcom/baidu/bdgame/sdk/obf/ca;->f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 823
    return-void
.end method

.method protected j(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 641
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v1

    .line 642
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 661
    :cond_d
    :goto_d
    return v0

    .line 646
    :cond_e
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ca;->f(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/fy;

    move-result-object v1

    .line 647
    if-eqz v1, :cond_d

    .line 651
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/fy;->e()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 656
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/fy;->c()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 657
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/baidu/platformsdk/SapiWebActivity;->a(Landroid/content/Context;I)V

    .line 658
    const/4 v0, 0x1

    goto :goto_d

    .line 661
    :cond_26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/fy;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    goto :goto_d
.end method

.method protected k(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 689
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v2

    .line 690
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 710
    :cond_e
    :goto_e
    return v0

    .line 694
    :cond_f
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ca;->f(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/fy;

    move-result-object v2

    .line 696
    if-eqz v2, :cond_e

    .line 700
    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/fy;->e()Z

    move-result v3

    if-nez v3, :cond_e

    .line 705
    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/fy;->c()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 706
    invoke-static {p1, v1}, Lcom/baidu/platformsdk/SapiWebActivity;->a(Landroid/content/Context;I)V

    move v0, v1

    .line 707
    goto :goto_e

    .line 710
    :cond_26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/fy;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v0

    goto :goto_e
.end method

.method protected l(Landroid/content/Context;)Z
    .registers 6

    .prologue
    .line 751
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 752
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 753
    :cond_c
    const/4 v0, 0x0

    .line 760
    :goto_d
    return v0

    .line 756
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/platformsdk/AssistActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 757
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 758
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/m;

    const/4 v2, 0x0

    const-class v3, Lcom/baidu/platformsdk/BaiduBeanDetailActivity;

    invoke-direct {v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/m;-><init>(Lcom/baidu/bdgame/sdk/obf/o;Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 759
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 760
    const/4 v0, 0x1

    goto :goto_d
.end method

.method protected m(Landroid/content/Context;)Z
    .registers 6

    .prologue
    .line 769
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/l;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 770
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 771
    :cond_c
    const/4 v0, 0x0

    .line 778
    :goto_d
    return v0

    .line 774
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/platformsdk/AssistActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 775
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 776
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/m;

    const/4 v2, 0x0

    const-class v3, Lcom/baidu/platformsdk/OrderDetailActivity;

    invoke-direct {v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/m;-><init>(Lcom/baidu/bdgame/sdk/obf/o;Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 777
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 778
    const/4 v0, 0x1

    goto :goto_d
.end method

.method protected n(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 797
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/at;->c(Landroid/content/Context;)V

    .line 798
    invoke-static {}, Lcom/baidu/platformsdk/LoginActivity;->b()V

    .line 800
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ck;->a()V

    .line 801
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kr;->a()V

    .line 802
    return-void
.end method

.method protected o(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 809
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/at;->e(Landroid/content/Context;)Z

    .line 810
    return-void
.end method

.method protected p(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 849
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ks;->a()Lcom/baidu/bdgame/sdk/obf/ks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ks;->d()Z

    move-result v0

    return v0
.end method

.method protected q(Landroid/content/Context;)Z
    .registers 5

    .prologue
    .line 872
    const-string v0, "BaiduPlatformSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportScreenRecord. omlet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lmobisocial/omlet/OmletGameSDK;->isRecordingSupported(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", us: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ks;->a()Lcom/baidu/bdgame/sdk/obf/ks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ks;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    invoke-static {p1}, Lmobisocial/omlet/OmletGameSDK;->isRecordingSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ks;->a()Lcom/baidu/bdgame/sdk/obf/ks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ks;->b()Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    :goto_3f
    return v0

    :cond_40
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method protected r(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 884
    invoke-static {p1}, Lmobisocial/omlet/OmletGameSDK;->areRecordingControlsEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
