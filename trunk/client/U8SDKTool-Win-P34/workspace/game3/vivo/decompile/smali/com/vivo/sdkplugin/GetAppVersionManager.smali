.class public Lcom/vivo/sdkplugin/GetAppVersionManager;
.super Ljava/lang/Object;


# static fields
.field public static final MSG_GET_APP_VERSION_FAIL:I = 0x41b

.field public static final MSG_GET_APP_VERSION_SUCCUSS:I = 0x41a

.field public static final PARAM_NETWORK_TYPE:Ljava/lang/String; = "nt"

.field public static final PARAM_NET_STATE_CLASS_1:Ljava/lang/String; = "net_state_class_1"

.field public static final PARAM_NET_STATE_CLASS_2:Ljava/lang/String; = "net_state_class_2"

.field public static final PARAM_SIM_COUNT:Ljava/lang/String; = "sf"

.field public static final PARAM_SIM_MODE1:Ljava/lang/String; = "sm1"

.field public static final PARAM_SIM_MODE2:Ljava/lang/String; = "sm2"

.field public static final PARAM_SIM_NAME1:Ljava/lang/String; = "sn1"

.field public static final PARAM_SIM_NAME2:Ljava/lang/String; = "sn2"

.field public static final PARAM_SIM_NETCLASS_1:Ljava/lang/String; = "srm1"

.field public static final PARAM_SIM_NETCLASS_2:Ljava/lang/String; = "srm2"

.field public static final PARAM_SIM_TIME1:Ljava/lang/String; = "st1"

.field public static final PARAM_SIM_TIME2:Ljava/lang/String; = "st2"

.field public static final PARAM_SIM_TYPE_1:Ljava/lang/String; = "sim_type_1"

.field public static final PARAM_SIM_TYPE_2:Ljava/lang/String; = "sim_type_2"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/HandlerThread;

.field private c:Lcom/vivo/sdkplugin/a;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->b:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->c:Lcom/vivo/sdkplugin/a;

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->d:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    :try_start_13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1f
.end method

.method private a()Ljava/util/HashMap;
    .registers 14

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appName"

    const-string v3, "com.vivo.sdkplugin"

    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "verCode"

    const-string v3, "1"

    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "flag"

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/GetAppVersionManager;->currentAPI()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pver"

    const-string v3, "1"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->a:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "imei"

    invoke-virtual {v9, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "model"

    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_49
    iget-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "st1"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_168

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5c} :catch_124

    move-result-wide v10

    sub-long v4, v10, v4

    move-wide v10, v4

    :goto_60
    :try_start_60
    iget-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "sn1"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_6b} :catch_12b

    move-result-object v0

    move-object v8, v0

    :goto_6d
    :try_start_6d
    iget-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "st2"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_165

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_80} :catch_132

    move-result-wide v6

    sub-long v4, v6, v4

    move-wide v6, v4

    :goto_84
    :try_start_84
    iget-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "sn2"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8f} :catch_138

    move-result-object v0

    move-object v5, v0

    :goto_91
    :try_start_91
    iget-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "sf"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9c} :catch_13f

    move-result v0

    move v4, v0

    :goto_9e
    :try_start_9e
    iget-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "net_state_class_1"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a9} :catch_146

    move-result v0

    move v3, v0

    :goto_ab
    :try_start_ab
    iget-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "net_state_class_2"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b6} :catch_14d

    move-result v0

    move v2, v0

    :goto_b8
    :try_start_b8
    iget-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sim_type_1"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c3} :catch_154

    move-result-object v0

    move-object v1, v0

    :goto_c5
    :try_start_c5
    iget-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "sim_type_2"

    invoke-static {v0, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_d0} :catch_15d

    move-result-object v0

    :goto_d1
    const-string v12, "st1"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "sn1"

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "st2"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "sn2"

    invoke-virtual {v9, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "sf"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "nt"

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/GetAppVersionManager;->getConnectionTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "sm1"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sm2"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "srm1"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "srm2"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    :catch_124
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v10, v6

    goto/16 :goto_60

    :catch_12b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v8, v2

    goto/16 :goto_6d

    :catch_132
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_84

    :catch_138
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v2

    goto/16 :goto_91

    :catch_13f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v1

    goto/16 :goto_9e

    :catch_146
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v1

    goto/16 :goto_ab

    :catch_14d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v1

    goto/16 :goto_b8

    :catch_154
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "UNKNOWN"

    move-object v1, v0

    goto/16 :goto_c5

    :catch_15d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "UNKNOWN"

    goto/16 :goto_d1

    :cond_165
    move-wide v6, v4

    goto/16 :goto_84

    :cond_168
    move-wide v10, v4

    goto/16 :goto_60
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/GetAppVersionManager;)Ljava/util/Map;
    .registers 9

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v0, "GetAppVersionManager"

    const-string v1, "-------getAppVersionInfo() enter---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/GetAppVersionManager;->a()Ljava/util/HashMap;

    move-result-object v3

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    iget-object v1, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendGreneralInfomation(Z)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->CHECK_APP_UPDATE_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/b;

    invoke-direct {v7, p0, v4}, Lcom/vivo/sdkplugin/b;-><init>(Lcom/vivo/sdkplugin/GetAppVersionManager;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/GetAppVersionManager;ILjava/lang/String;)V
    .registers 6

    const-string v0, "GetAppVersionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/GetAppVersionManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/GetAppVersionManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public cancelGetAppVersion()V
    .registers 4

    const-string v0, "GetAppVersionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancelLogin, mBackgroundThread="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->b:Landroid/os/HandlerThread;

    :cond_22
    return-void
.end method

.method public currentAPI()I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_8

    const/4 v0, 0x4

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getAPPVersionInfo()V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->b:Landroid/os/HandlerThread;

    if-nez v0, :cond_1f

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.getAppVersion"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->b:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/a;

    iget-object v1, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/a;-><init>(Lcom/vivo/sdkplugin/GetAppVersionManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->c:Lcom/vivo/sdkplugin/a;

    :cond_1f
    iget-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->c:Lcom/vivo/sdkplugin/a;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->c:Lcom/vivo/sdkplugin/a;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getConnectionTypeName()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetAppVersionManager;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_13

    move-object v0, v1

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_1d

    move-object v0, v1

    goto :goto_12

    :cond_1d
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_29
    if-nez v2, :cond_4b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_4b
    move-object v0, v1

    goto :goto_12
.end method
