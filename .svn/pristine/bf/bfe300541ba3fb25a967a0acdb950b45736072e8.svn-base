.class public final Lcom/nearme/game/sdk/b;
.super Lcom/nearme/game/sdk/a;
.source "GCInternalImpl.java"


# instance fields
.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;)V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/nearme/game/sdk/a;-><init>(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;)V

    .line 47
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 50
    invoke-static {p1, p2}, Lcom/nearme/game/sdk/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nearme/game/sdk/a;-><init>(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;)V

    .line 51
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 54
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 61
    const/16 v3, 0x80

    :try_start_d
    invoke-virtual {v6, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 62
    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "debug_mode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_18} :catch_55

    move-result v4

    .line 63
    :try_start_19
    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "is_offline_game"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_20} :catch_67

    move-result v3

    .line 65
    :try_start_21
    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 66
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 67
    iget v5, v5, Landroid/content/pm/ActivityInfo;->screenOrientation:I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_30} :catch_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_30} :catch_6d

    if-ne v0, v5, :cond_49

    :goto_32
    move v5, v0

    .line 71
    :goto_33
    :try_start_33
    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "app_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_33 .. :try_end_3a} :catch_72

    move-result-object v2

    move v1, v3

    .line 75
    :goto_3c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 76
    new-instance v0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 78
    return-object v0

    :cond_49
    move v0, v1

    .line 67
    goto :goto_32

    .line 69
    :catch_4b
    move-exception v1

    :try_start_4c
    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "is_orientation_portrait"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4c .. :try_end_53} :catch_6d

    move-result v5

    goto :goto_33

    .line 73
    :catch_55
    move-exception v1

    move v5, v0

    move v4, v0

    move v9, v0

    move-object v0, v1

    move v1, v9

    :goto_5b
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3c

    .line 80
    :cond_5f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u8bf7\u53c2\u7167\u6700\u65b0sdk\u63a5\u5165\u6587\u6863\uff0c\u6b63\u786e\u914d\u7f6eAndroidManifest.xml\u4e2d\u76f8\u5173meta-data\u53c2\u6570\uff01"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :catch_67
    move-exception v1

    move v5, v0

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto :goto_5b

    :catch_6d
    move-exception v1

    move v5, v0

    move-object v0, v1

    move v1, v3

    goto :goto_5b

    :catch_72
    move-exception v0

    move v1, v3

    goto :goto_5b
.end method

.method static synthetic a(Lcom/nearme/game/sdk/b;)Ljava/lang/ref/WeakReference;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nearme/game/sdk/b;->d:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/ApiCallback;Z)V
    .registers 11

    .prologue
    .line 188
    const/16 v0, 0x1b60

    new-instance v1, Lcom/nearme/game/sdk/b$3;

    invoke-direct {v1, p1, p3, p2}, Lcom/nearme/game/sdk/b$3;-><init>(Landroid/content/Context;Lcom/nearme/game/sdk/callback/ApiCallback;Lcom/nearme/game/sdk/common/model/biz/PayInfo;)V

    invoke-virtual {p0, v0, p2, v1}, Lcom/nearme/game/sdk/b;->a(ILjava/lang/Object;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 214
    if-eqz p4, :cond_67

    const-string v0, "offlineGame"

    .line 215
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pay."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    const-string v2, "amount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p2}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->getAmount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v0, "typeExt:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p2}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->getType()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    const/16 v0, 0x1b65

    new-instance v2, Lcom/nearme/game/sdk/common/model/biz/ReportParam;

    const-string v3, "pay"

    invoke-virtual {p2}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->getOrder()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/nearme/game/sdk/common/model/biz/ReportParam;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 225
    invoke-virtual {p0, v0, v2, v1}, Lcom/nearme/game/sdk/b;->a(ILjava/lang/Object;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 227
    return-void

    .line 214
    :cond_67
    const-string v0, "onlineGame"

    goto :goto_e
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 263
    .line 266
    :try_start_2
    sget-boolean v0, Lcom/nearme/plugin/framework/LogUtils;->sDebug:Z

    if-eqz v0, :cond_34

    .line 267
    if-eqz p1, :cond_34

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 271
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 272
    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8bf7\u5728\u5e94\u7528\u4e3bActivity\u8c03\u7528\u6b64\u65b9\u6cd5\uff0c\u5426\u5219\u4f1a\u5f71\u54cd\u7ed3\u679c~"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2a

    .line 304
    :catch_2a
    move-exception v0

    move v2, v1

    .line 305
    :goto_2c
    sget-boolean v1, Lcom/nearme/plugin/framework/LogUtils;->sDebug:Z

    if-eqz v1, :cond_33

    .line 306
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    :cond_33
    :goto_33
    return v2

    .line 277
    :cond_34
    if-eqz p1, :cond_a8

    .line 278
    :try_start_36
    const-string v0, "key_launch_from_ogc"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3c} :catch_2a

    move-result v4

    .line 280
    :goto_3d
    if-nez v4, :cond_9f

    .line 281
    :try_start_3f
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 283
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v3, v5, :cond_8a

    .line 284
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    .line 288
    :goto_53
    if-eqz v6, :cond_9f

    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move v3, v1

    move v5, v1

    .line 291
    :goto_5b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_9f

    .line 292
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1313
    const/4 v1, 0x0

    .line 1314
    if-eqz v0, :cond_a4

    .line 1315
    instance-of v8, v0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v8, :cond_90

    .line 1316
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 1317
    if-eqz v0, :cond_a4

    .line 1318
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1324
    :goto_76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 1325
    const-string v0, ""

    .line 293
    :cond_7e
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    move v0, v2

    .line 291
    :goto_85
    add-int/lit8 v1, v5, 0x1

    move v3, v0

    move v5, v1

    goto :goto_5b

    .line 286
    :cond_8a
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    goto :goto_53

    .line 1321
    :cond_90
    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_76

    .line 295
    :cond_95
    if-eqz v3, :cond_a6

    .line 296
    const-string v1, "com.nearme.gamecenter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_9c} :catch_a1

    move-result v0

    if-nez v0, :cond_33

    :cond_9f
    move v2, v4

    .line 308
    goto :goto_33

    .line 304
    :catch_a1
    move-exception v0

    move v2, v4

    goto :goto_2c

    :cond_a4
    move-object v0, v1

    goto :goto_76

    :cond_a6
    move v0, v3

    goto :goto_85

    :cond_a8
    move v4, v1

    goto :goto_3d
.end method


# virtual methods
.method final a(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nearme/game/sdk/b;->d:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_b

    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nearme/game/sdk/b;->d:Ljava/lang/ref/WeakReference;

    .line 88
    :cond_b
    const/16 v0, 0x1b68

    invoke-virtual {p0, v0}, Lcom/nearme/game/sdk/b;->a(I)V

    .line 89
    return-void
.end method

.method final a(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/ApiCallback;)V
    .registers 6

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nearme/game/sdk/b;->b:Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;

    iget-boolean v0, v0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isSingleGame:Z

    if-eqz v0, :cond_e

    .line 182
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u5355\u673a\u652f\u4ed8\u8bf7\u8c03\u7528doSinglePay\u63a5\u53e3!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nearme/game/sdk/b;->a(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/ApiCallback;Z)V

    .line 185
    return-void
.end method

.method final a(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/SinglePayCallback;)V
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcom/nearme/game/sdk/b;->b:Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;

    iget-boolean v0, v0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isSingleGame:Z

    if-nez v0, :cond_10

    .line 145
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u7f51\u6e38\u652f\u4ed8\u8bf7\u8c03\u7528doPay\u63a5\u53e3!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_10
    :try_start_10
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 150
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_21} :catch_2b

    move-result v0

    if-eqz v0, :cond_33

    move v0, v1

    .line 168
    :goto_25
    if-eqz v0, :cond_35

    .line 169
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/nearme/game/sdk/b;->a(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/ApiCallback;Z)V

    .line 178
    :goto_2a
    return-void

    .line 163
    :catch_2b
    move-exception v0

    .line 164
    sget-boolean v3, Lcom/nearme/plugin/framework/LogUtils;->sDebug:Z

    if-eqz v3, :cond_33

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_33
    move v0, v2

    goto :goto_25

    .line 171
    :cond_35
    if-eqz p3, :cond_3a

    .line 172
    invoke-interface {p3, p2, v2}, Lcom/nearme/game/sdk/callback/SinglePayCallback;->onCallCarrierPay(Lcom/nearme/game/sdk/common/model/biz/PayInfo;Z)V

    .line 175
    :cond_3a
    const/16 v0, 0x1b65

    new-instance v1, Lcom/nearme/game/sdk/common/model/biz/ReportParam;

    const-string v3, "pay"

    invoke-virtual {p2}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->getOrder()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "amount:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->getAmount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type:offlineGame carrier pay."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/nearme/game/sdk/common/model/biz/ReportParam;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x0

    .line 175
    invoke-virtual {p0, v0, v1, v2}, Lcom/nearme/game/sdk/b;->a(ILjava/lang/Object;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    goto :goto_2a
.end method

.method protected final b(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 333
    sparse-switch p1, :sswitch_data_2c

    .line 349
    :goto_4
    return-object v0

    .line 335
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.account.action.login"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "ONEPLUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/nearme/game/sdk/b;->a:Landroid/content/Context;

    .line 337
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 338
    const-string v0, "OnePlusLoginActivity"

    goto :goto_4

    .line 340
    :cond_25
    const-string v0, "LoginActivity"

    goto :goto_4

    .line 344
    :sswitch_28
    const-string v0, "GameExitGuiderActivity"

    goto :goto_4

    .line 333
    nop

    :sswitch_data_2c
    .sparse-switch
        0x1b5b -> :sswitch_5
        0x1b67 -> :sswitch_28
    .end sparse-switch
.end method
