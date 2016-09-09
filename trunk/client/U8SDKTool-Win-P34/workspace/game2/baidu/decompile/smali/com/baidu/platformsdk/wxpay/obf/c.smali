.class public Lcom/baidu/platformsdk/wxpay/obf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;
    .registers 3

    .prologue
    .line 21
    new-instance v0, Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;

    invoke-direct {v0}, Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;-><init>()V

    .line 22
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;->setWeiXinPlugInSDKVersion(I)V

    .line 23
    invoke-static {p0}, Lcom/baidu/platformsdk/wxpay/obf/c;->c(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;->setWeiXinPlugInVersion(I)V

    .line 24
    invoke-static {p0}, Lcom/baidu/platformsdk/wxpay/obf/c;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/wxpay/BDPWXPayVersion;->setWeiXinVersion(I)V

    .line 25
    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/platformsdk/wxpay/IPayCallback;)V
    .registers 3

    .prologue
    .line 66
    invoke-static {p0, p1, p2}, Lcom/baidu/platformsdk/wxpay/PayActivity;->pay(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/platformsdk/wxpay/IPayCallback;)V

    .line 67
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Lcom/baidu/platformsdk/wxpay/IPayCallback;)V
    .registers 6

    .prologue
    .line 76
    const/4 v0, 0x1

    if-gt p1, v0, :cond_1d

    .line 77
    invoke-static {}, Lcom/baidu/platformsdk/wxpay/obf/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/baidu/platformsdk/wxpay/obf/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/baidu/platformsdk/wxpay/obf/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 79
    invoke-static {p0, v0}, Lcom/baidu/platformsdk/wxpay/obf/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    if-eqz p3, :cond_1c

    .line 81
    const/4 v0, 0x0

    const-string v1, "installing local apk."

    invoke-interface {p3, v0, v1}, Lcom/baidu/platformsdk/wxpay/IPayCallback;->onCallback(ILjava/lang/String;)V

    .line 88
    :cond_1c
    :goto_1c
    return-void

    .line 87
    :cond_1d
    new-instance v0, Lcom/baidu/platformsdk/wxpay/obf/b;

    invoke-direct {v0, p0}, Lcom/baidu/platformsdk/wxpay/obf/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p3}, Lcom/baidu/platformsdk/wxpay/obf/b;->a(Ljava/lang/String;Lcom/baidu/platformsdk/wxpay/IPayCallback;)V

    goto :goto_1c
.end method

.method public static b(Landroid/content/Context;)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 50
    .line 52
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.tencent.mm"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 53
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_e} :catch_f

    .line 57
    :goto_e
    return v0

    .line 54
    :catch_f
    move-exception v1

    goto :goto_e
.end method

.method private static c(Landroid/content/Context;)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 34
    .line 36
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.baidu.platformsdk.wxpay"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 37
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_e} :catch_f

    .line 41
    :goto_e
    return v0

    .line 38
    :catch_f
    move-exception v1

    goto :goto_e
.end method
