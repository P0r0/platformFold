.class public Lcn/egame/terminal/sdk/EgameCoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EgameCoreReceiver.java"


# static fields
.field public static final ACTION_RECEIVER_CMD:Ljava/lang/String; = "cn.egame.terminal.sdk.RECEIVER_CMD"

.field public static final DATE_FILE:Ljava/lang/String; = "data.dat"

.field public static final EXTRA_RECEIVER_CMD:Ljava/lang/String; = "receiver_intent"

.field public static final PUBLIC_PSH_SDK_VERSION:I = 0x79

.field public static final PUSK_USER_ACTION_DEFAULT_INTERVAL_TIME:J = 0x6ddd00L

.field public static final TAG:Ljava/lang/String; = "cca"

.field public static final TOKEN_DATA_NAME:Ljava/lang/String; = "EGAME_ABC_SHARE"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getLastUserActionTime(Landroid/content/Context;)J
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const-string v1, "EGAME_ABC_SHARE"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "user_action_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method private getSdkConfigIntervalTime(Landroid/content/Context;)J
    .registers 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v10, 0x3c

    const-wide/32 v6, 0x6ddd00

    .line 87
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 107
    :cond_11
    :goto_11
    return-wide v6

    .line 91
    :cond_12
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "data.dat"

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "dis":Ljava/io/DataInputStream;
    const-wide/16 v4, 0x2

    .line 99
    .local v4, "time":J
    :try_start_26
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_30} :catch_3f

    .line 100
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_30
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    int-to-long v4, v8

    .line 101
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_38} :catch_44

    .line 102
    mul-long v6, v4, v10

    mul-long/2addr v6, v10

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    goto :goto_11

    .line 103
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    :catch_3f
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Exception;
    :goto_40
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    .line 103
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catch_44
    move-exception v2

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_40
.end method

.method private isPackageAction(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 60
    if-nez p1, :cond_4

    .line 71
    :cond_3
    :goto_3
    return v1

    .line 63
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 67
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    :cond_1e
    const/4 v1, 0x1

    goto :goto_3
.end method

.method private setLastUserActionTime(Landroid/content/Context;J)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # J

    .prologue
    .line 81
    const-string v1, "EGAME_ABC_SHARE"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 83
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "user_action_time"

    invoke-interface {v1, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 45
    .local v0, "currentTime":J
    invoke-direct {p0, p1}, Lcn/egame/terminal/sdk/EgameCoreReceiver;->getLastUserActionTime(Landroid/content/Context;)J

    move-result-wide v6

    .line 46
    .local v6, "lastActionTime":J
    invoke-direct {p0, p1}, Lcn/egame/terminal/sdk/EgameCoreReceiver;->getSdkConfigIntervalTime(Landroid/content/Context;)J

    move-result-wide v4

    .line 47
    .local v4, "intervalTime":J
    sub-long v8, v0, v6

    cmp-long v3, v8, v4

    if-gez v3, :cond_31

    .line 48
    invoke-direct {p0, p2}, Lcn/egame/terminal/sdk/EgameCoreReceiver;->isPackageAction(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 49
    const-string v3, "cca"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "limit interval="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_30
    return-void

    .line 52
    :cond_31
    invoke-direct {p0, p1, v0, v1}, Lcn/egame/terminal/sdk/EgameCoreReceiver;->setLastUserActionTime(Landroid/content/Context;J)V

    .line 53
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcn/egame/terminal/sdk/EgameCoreService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v2, "i":Landroid/content/Intent;
    const-string v3, "cn.egame.terminal.sdk.RECEIVER_CMD"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v3, "receiver_intent"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_30
.end method
