.class public Lcom/gionee/gsp/service/account/AccountImpl;
.super Ljava/lang/Object;
.source "AccountImpl.java"

# interfaces
.implements Lcom/gionee/gsp/service/account/IAccount;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gionee/gsp/service/account/AccountImpl$IntentGoalConstants;
    }
.end annotation


# static fields
.field public static final AUTO_LOGIN:I = 0x1

.field public static final A_APP_ID:Ljava/lang/String; = "a"

.field public static final COME_FROM_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final FOR_PAY_APP_ID:Ljava/lang/String; = "app_id"

.field public static final FOR_PAY_PLAYER_ID:Ljava/lang/String; = "playerId"

.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final PID:Ljava/lang/String; = "pid"

.field public static final REQUEST_CODE:Ljava/lang/String; = "requestCode"

.field public static final SHIELD_VISITOR:I = 0x6

.field public static final SHOW_NOTICE:Ljava/lang/String; = "showNotice"

.field public static sGSPAccountInterface:Lcom/gionee/account/aidl/GSPAccountInterface;

.field private static sInstance:Lcom/gionee/gsp/service/account/AccountImpl;


# instance fields
.field private mClickTime:J

.field private final mLock:Ljava/lang/Object;

.field protected mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-object v0, Lcom/gionee/gsp/service/account/AccountImpl;->sInstance:Lcom/gionee/gsp/service/account/AccountImpl;

    .line 59
    sput-object v0, Lcom/gionee/gsp/service/account/AccountImpl;->sGSPAccountInterface:Lcom/gionee/account/aidl/GSPAccountInterface;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/gionee/gsp/service/account/AccountImpl;->mLock:Ljava/lang/Object;

    .line 187
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/gionee/gsp/service/account/AccountImpl;->mClickTime:J

    .line 63
    new-instance v1, Lcom/gionee/gsp/service/account/AccountImpl$1;

    invoke-direct {v1, p0}, Lcom/gionee/gsp/service/account/AccountImpl$1;-><init>(Lcom/gionee/gsp/service/account/AccountImpl;)V

    iput-object v1, p0, Lcom/gionee/gsp/service/account/AccountImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 80
    :try_start_15
    invoke-direct {p0, p1}, Lcom/gionee/gsp/service/account/AccountImpl;->bindAccount(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    .line 85
    :goto_18
    return-void

    .line 81
    :catch_19
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method static synthetic access$0(Lcom/gionee/gsp/service/account/AccountImpl;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/gionee/gsp/service/account/AccountImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gionee/gsp/service/account/AccountImpl;Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/gionee/gsp/service/account/AccountImpl;->checkIsBind(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2(Lcom/gionee/gsp/service/account/AccountImpl;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/gionee/gsp/service/account/AccountImpl;->unBindAccount(Landroid/content/Context;)V

    return-void
.end method

.method private asyncCheckIsBind(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 248
    new-instance v0, Lcom/gionee/gsp/service/account/AccountImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/gionee/gsp/service/account/AccountImpl$2;-><init>(Lcom/gionee/gsp/service/account/AccountImpl;Landroid/app/Activity;)V

    .line 256
    invoke-virtual {v0}, Lcom/gionee/gsp/service/account/AccountImpl$2;->start()V

    .line 257
    return-void
.end method

.method private bindAccount(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 88
    const-string v8, "---\u5f00\u59cb\u7ed1\u5b9a\u8d26\u53f7"

    invoke-static {v8}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 90
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/gionee/account/aidl/GSPAccountInterface;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v3, "implicitIntent":Landroid/content/Intent;
    invoke-virtual {v5, v3, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 94
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_22

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v10, :cond_23

    .line 111
    :cond_22
    :goto_22
    return-void

    .line 98
    :cond_23
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 99
    .local v7, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 100
    .local v4, "packageName":Ljava/lang/String;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 104
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v2, "iapIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/gionee/gsp/service/account/AccountImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v8, v2, v9, v10}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_22
.end method

.method private checkIsBind(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 140
    const-string v1, "com.gionee.gsp"

    invoke-static {p1, v1}, Lcom/gionee/gsp/util/GnCommonUtil;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 141
    const-string v1, "---\u6ca1\u6709\u83b7\u53d6\u5230gsp\u5305\u4fe1\u606f\uff0c\u5ffd\u7565\u7ed1\u5b9a"

    invoke-static {v1}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 143
    new-instance v1, Lcom/gionee/gsp/GnException;

    const-string v2, "\u63d2\u4ef6\u6ca1\u6709\u5b89\u88c5"

    invoke-direct {v1, v2}, Lcom/gionee/gsp/GnException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_19
    sget-object v1, Lcom/gionee/gsp/service/account/AccountImpl;->sGSPAccountInterface:Lcom/gionee/account/aidl/GSPAccountInterface;

    if-nez v1, :cond_49

    .line 146
    invoke-direct {p0, p1}, Lcom/gionee/gsp/service/account/AccountImpl;->bindAccount(Landroid/content/Context;)V

    .line 147
    iget-object v2, p0, Lcom/gionee/gsp/service/account/AccountImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 148
    :try_start_23
    const-string v1, "---\u83b7\u53d6sGNAccountInterface\u4e3anull\uff0c\u5f00\u59cb\u7b49\u5f85"

    invoke-static {v1}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_46

    .line 150
    :try_start_28
    iget-object v1, p0, Lcom/gionee/gsp/service/account/AccountImpl;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0x258

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2f} :catch_41
    .catchall {:try_start_28 .. :try_end_2f} :catchall_46

    .line 147
    :goto_2f
    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_46

    .line 157
    const-string v1, "---\u83b7\u53d6sGNAccountInterface\u4e3anull\uff0c\u7ed3\u675f\u7b49\u5f85"

    invoke-static {v1}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 158
    sget-object v1, Lcom/gionee/gsp/service/account/AccountImpl;->sGSPAccountInterface:Lcom/gionee/account/aidl/GSPAccountInterface;

    if-nez v1, :cond_49

    .line 159
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "---aidl \u7ed1\u5b9a\u4e0d\u6210\u529f\u3002"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :catch_41
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_42
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2f

    .line 147
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_46
    move-exception v1

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_46

    throw v1

    .line 162
    :cond_49
    return-void
.end method

.method private dearUserTMDClickTooFast()Z
    .registers 5

    .prologue
    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/gionee/gsp/service/account/AccountImpl;->mClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    .line 502
    const/4 v0, 0x1

    .line 505
    :goto_e
    return v0

    .line 504
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gionee/gsp/service/account/AccountImpl;->mClickTime:J

    .line 505
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/gionee/gsp/service/account/IAccount;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const-class v1, Lcom/gionee/gsp/service/account/AccountImpl;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/gionee/gsp/service/account/AccountImpl;->sInstance:Lcom/gionee/gsp/service/account/AccountImpl;

    if-nez v0, :cond_12

    .line 130
    sget-object v0, Lcom/gionee/gsp/service/account/AccountImpl;->sInstance:Lcom/gionee/gsp/service/account/AccountImpl;

    if-nez v0, :cond_12

    .line 131
    new-instance v0, Lcom/gionee/gsp/service/account/AccountImpl;

    invoke-direct {v0, p0}, Lcom/gionee/gsp/service/account/AccountImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gionee/gsp/service/account/AccountImpl;->sInstance:Lcom/gionee/gsp/service/account/AccountImpl;

    .line 134
    :cond_12
    sget-object v0, Lcom/gionee/gsp/service/account/AccountImpl;->sInstance:Lcom/gionee/gsp/service/account/AccountImpl;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    .line 129
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private unBindAccount(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    :try_start_0
    const-string v0, "---\u89e3\u7ed1\u5b9a\u8d26\u53f7"

    invoke-static {v0}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/gionee/gsp/service/account/AccountImpl;->sGSPAccountInterface:Lcom/gionee/account/aidl/GSPAccountInterface;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/gionee/gsp/service/account/AccountImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 121
    :goto_11
    return-void

    .line 118
    :catch_12
    move-exception v0

    goto :goto_11
.end method


# virtual methods
.method public getAmigoToken(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;

    .prologue
    .line 395
    :try_start_0
    invoke-direct {p0, p1}, Lcom/gionee/gsp/service/account/AccountImpl;->checkIsBind(Landroid/content/Context;)V

    .line 397
    new-instance v1, Lcom/gionee/gsp/service/account/sdk/task/GetAmigoTokenTask;

    sget-object v2, Lcom/gionee/gsp/service/account/AccountImpl;->sGSPAccountInterface:Lcom/gionee/account/aidl/GSPAccountInterface;

    invoke-direct {v1, p2, v2}, Lcom/gionee/gsp/service/account/sdk/task/GetAmigoTokenTask;-><init>(Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;Lcom/gionee/account/aidl/GSPAccountInterface;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/gionee/gsp/service/account/sdk/task/GetAmigoTokenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 402
    :goto_15
    return-void

    .line 398
    :catch_16
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gionee/gsp/util/GnLogUtil;->e(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public getGoldCoin(Landroid/app/Activity;)Ljava/lang/String;
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 427
    const-string v1, ""

    .line 429
    .local v1, "goldCoin":Ljava/lang/String;
    :try_start_2
    sget-object v5, Lcom/gionee/gsp/service/account/AccountImpl;->sGSPAccountInterface:Lcom/gionee/account/aidl/GSPAccountInterface;

    sget-object v6, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/gionee/account/aidl/GSPAccountInterface;->getGoldCoin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, "result":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 431
    .local v2, "json":Lorg/json/JSONObject;
    const-string v5, "200060000"

    const-string v6, "status"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 432
    const-string v5, "gold_coin"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_22} :catch_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_33

    move-result-object v1

    .line 442
    .end local v1    # "goldCoin":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v4    # "result":Ljava/lang/String;
    :cond_23
    :goto_23
    return-object v1

    .line 434
    .restart local v1    # "goldCoin":Ljava/lang/String;
    :catch_24
    move-exception v3

    .line 435
    .local v3, "re":Landroid/os/RemoteException;
    invoke-direct {p0, p1}, Lcom/gionee/gsp/service/account/AccountImpl;->unBindAccount(Landroid/content/Context;)V

    .line 436
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 437
    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gionee/gsp/util/GnLogUtil;->e(Ljava/lang/String;)V

    goto :goto_23

    .line 438
    .end local v3    # "re":Landroid/os/RemoteException;
    :catch_33
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 440
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gionee/gsp/util/GnLogUtil;->e(Ljava/lang/String;)V

    goto :goto_23
.end method

.method public getGoldCoinForGameSDK(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gnCommonListener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;

    .prologue
    .line 557
    new-instance v0, Lcom/gionee/gsp/service/account/AccountImpl$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/gionee/gsp/service/account/AccountImpl$4;-><init>(Lcom/gionee/gsp/service/account/AccountImpl;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;)V

    .line 580
    invoke-virtual {v0}, Lcom/gionee/gsp/service/account/AccountImpl$4;->start()V

    .line 582
    return-void
.end method

.method public getPhoneNumberForGameSDK(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gnCommonListener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;

    .prologue
    .line 585
    new-instance v0, Lcom/gionee/gsp/service/account/AccountImpl$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/gionee/gsp/service/account/AccountImpl$5;-><init>(Lcom/gionee/gsp/service/account/AccountImpl;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;)V

    .line 621
    invoke-virtual {v0}, Lcom/gionee/gsp/service/account/AccountImpl$5;->start()V

    .line 622
    return-void
.end method

.method public getPlayerId(Landroid/content/Context;Lcom/gionee/gsp/service/account/sdk/listener/IGetPlayerIdListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gnCommonListener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGetPlayerIdListener;

    .prologue
    .line 361
    new-instance v0, Lcom/gionee/gsp/service/account/AccountImpl$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/gionee/gsp/service/account/AccountImpl$3;-><init>(Lcom/gionee/gsp/service/account/AccountImpl;Landroid/content/Context;Lcom/gionee/gsp/service/account/sdk/listener/IGetPlayerIdListener;)V

    .line 390
    invoke-virtual {v0}, Lcom/gionee/gsp/service/account/AccountImpl$3;->start()V

    .line 391
    return-void
.end method

.method public getPresentEvent(Landroid/app/Activity;)Z
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    .line 536
    :try_start_1
    invoke-static {p1}, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;->getInstance(Landroid/content/Context;)Lcom/gionee/gsp/dao/GnSDKSharedPreferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;->getPresentEeventTimestamp()Ljava/lang/String;

    move-result-object v4

    .line 537
    .local v4, "timestamp":Ljava/lang/String;
    sget-object v6, Lcom/gionee/gsp/service/account/AccountImpl;->sGSPAccountInterface:Lcom/gionee/account/aidl/GSPAccountInterface;

    sget-object v7, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    invoke-interface {v6, v7, v4}, Lcom/gionee/account/aidl/GSPAccountInterface;->getPresentEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, "presentEvent":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 539
    .local v1, "json":Lorg/json/JSONObject;
    const-string v6, "200000000"

    const-string v7, "status"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 540
    invoke-static {p1}, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;->getInstance(Landroid/content/Context;)Lcom/gionee/gsp/dao/GnSDKSharedPreferences;

    move-result-object v6

    .line 541
    const-string v7, "timestamp"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    .line 540
    invoke-virtual {v6, v7, v8}, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;->setPresentEevent(Ljava/lang/String;Z)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_32} :catch_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_43

    .line 552
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "presentEvent":Ljava/lang/String;
    .end local v4    # "timestamp":Ljava/lang/String;
    :cond_32
    :goto_32
    return v5

    .line 544
    :catch_33
    move-exception v3

    .line 545
    .local v3, "re":Landroid/os/RemoteException;
    invoke-direct {p0, p1}, Lcom/gionee/gsp/service/account/AccountImpl;->unBindAccount(Landroid/content/Context;)V

    .line 546
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 547
    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gionee/gsp/util/GnLogUtil;->e(Ljava/lang/String;)V

    .line 552
    .end local v3    # "re":Landroid/os/RemoteException;
    :goto_41
    const/4 v5, 0x0

    goto :goto_32

    .line 548
    :catch_43
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 550
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gionee/gsp/util/GnLogUtil;->e(Ljava/lang/String;)V

    goto :goto_41
.end method

.method public isAccountLogin(Landroid/content/Context;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 168
    .local v2, "result":Z
    :try_start_1
    invoke-direct {p0, p1}, Lcom/gionee/gsp/service/account/AccountImpl;->checkIsBind(Landroid/content/Context;)V

    .line 169
    sget-object v3, Lcom/gionee/gsp/service/account/AccountImpl;->sGSPAccountInterface:Lcom/gionee/account/aidl/GSPAccountInterface;

    sget-object v4, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/gionee/account/aidl/GSPAccountInterface;->isAccountLogin(Ljava/lang/String;)Z
    :try_end_b
    .catch Lcom/gionee/gsp/GnException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_16

    move-result v2

    .line 183
    :goto_c
    return v2

    .line 170
    :catch_d
    move-exception v0

    .line 171
    .local v0, "e":Lcom/gionee/gsp/GnException;
    invoke-virtual {v0}, Lcom/gionee/gsp/GnException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gionee/gsp/util/GnLogUtil;->e(Ljava/lang/String;)V

    goto :goto_c

    .line 172
    .end local v0    # "e":Lcom/gionee/gsp/GnException;
    :catch_16
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gionee/gsp/util/GnLogUtil;->e(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, p1}, Lcom/gionee/gsp/service/account/AccountImpl;->unBindAccount(Landroid/content/Context;)V

    .line 177
    :try_start_24
    invoke-direct {p0, p1}, Lcom/gionee/gsp/service/account/AccountImpl;->checkIsBind(Landroid/content/Context;)V

    .line 178
    sget-object v3, Lcom/gionee/gsp/service/account/AccountImpl;->sGSPAccountInterface:Lcom/gionee/account/aidl/GSPAccountInterface;

    sget-object v4, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/gionee/account/aidl/GSPAccountInterface;->isAccountLogin(Ljava/lang/String;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_30

    move-result v2

    goto :goto_c

    .line 179
    :catch_30
    move-exception v1

    .line 180
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gionee/gsp/util/GnLogUtil;->e(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public loginAccount(Landroid/app/Activity;IZLcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "isAutoLogin"    # Z
    .param p4, "gnUiListener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/gionee/gsp/service/account/AccountImpl;->dearUserTMDClickTooFast()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 418
    :goto_6
    return-void

    .line 412
    :cond_7
    invoke-direct {p0, p1}, Lcom/gionee/gsp/service/account/AccountImpl;->asyncCheckIsBind(Landroid/app/Activity;)V

    .line 413
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gionee/gsp/service/activity/AssistActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 414
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 415
    const-string v1, "requestCode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_6
.end method
