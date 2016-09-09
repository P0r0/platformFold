.class Lcom/vivo/upgrade/CheckSystemUpdate;
.super Ljava/lang/Object;
.source "CheckSystemUpdate.java"


# instance fields
.field private final ACTION_SYSTEM_UPDATE:Ljava/lang/String;

.field private final PROTOCAL_VERSION:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mSystemUpdateInfo:Lcom/vivo/upgrade/SystemUpdateInfo;

.field private mVerCode:I

.field private mVerName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "Upgrade.CheckSystemUpdate"

    iput-object v0, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "com.bbk.action.SYSTEM_UPDATE"

    iput-object v0, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->ACTION_SYSTEM_UPDATE:Ljava/lang/String;

    .line 32
    const-string v0, "1"

    iput-object v0, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->PROTOCAL_VERSION:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->mVerCode:I

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/vivo/upgrade/CheckSystemUpdate;Lcom/vivo/upgrade/SystemUpdateInfo;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->mSystemUpdateInfo:Lcom/vivo/upgrade/SystemUpdateInfo;

    return-void
.end method

.method static synthetic access$1(Lcom/vivo/upgrade/CheckSystemUpdate;Landroid/content/DialogInterface;Z)V
    .registers 3

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/vivo/upgrade/CheckSystemUpdate;->keepDialog(Landroid/content/DialogInterface;Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/vivo/upgrade/CheckSystemUpdate;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getHardwareVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    invoke-static {}, Lcom/vivo/upgrade/utils/Util;->getHardwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLanguage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 106
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "lan":Ljava/lang/String;
    return-object v0
.end method

.method private getParams()Ljava/util/HashMap;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    .line 200
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v6, -0x1

    .line 202
    .local v6, "time1":J
    const-wide/16 v8, -0x1

    .line 203
    .local v8, "time2":J
    const/4 v3, 0x0

    .line 204
    .local v3, "simId1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 205
    .local v4, "simId2":Ljava/lang/String;
    const/4 v0, -0x1

    .line 207
    .local v0, "count":I
    :try_start_e
    iget-object v5, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "st1"

    invoke-static {v5, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v6

    .line 208
    cmp-long v5, v6, v12

    if-eqz v5, :cond_24

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_21} :catch_da

    move-result-wide v10

    sub-long v6, v10, v6

    .line 217
    :cond_24
    :goto_24
    :try_start_24
    iget-object v5, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "sn1"

    invoke-static {v5, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2f} :catch_e2

    move-result-object v3

    .line 223
    :goto_30
    :try_start_30
    iget-object v5, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "st2"

    invoke-static {v5, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v8

    .line 224
    cmp-long v5, v8, v12

    if-eqz v5, :cond_46

    .line 225
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_43} :catch_e9

    move-result-wide v10

    sub-long v8, v10, v8

    .line 232
    :cond_46
    :goto_46
    :try_start_46
    iget-object v5, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "sn2"

    invoke-static {v5, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_51} :catch_f1

    move-result-object v4

    .line 238
    :goto_52
    :try_start_52
    iget-object v5, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "sf"

    invoke-static {v5, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5d} :catch_f8

    move-result v0

    .line 243
    :goto_5e
    const-string v5, "st1"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v5, "sn1"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v5, "st2"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v5, "sn2"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v5, "sf"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v5, "nt"

    iget-object v10, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/vivo/upgrade/net/NetUtils;->getConnectionTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v5, "appName"

    iget-object v10, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v5, "verCode"

    iget v10, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->mVerCode:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v5, "verName"

    iget-object v10, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->mVerName:Ljava/lang/String;

    invoke-virtual {v2, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v5, "proName"

    invoke-direct {p0}, Lcom/vivo/upgrade/CheckSystemUpdate;->getProName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v5, "sysVersion"

    invoke-direct {p0}, Lcom/vivo/upgrade/CheckSystemUpdate;->getSysVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v5, "language"

    invoke-direct {p0}, Lcom/vivo/upgrade/CheckSystemUpdate;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v5, "pflag"

    const-string v10, "1"

    invoke-virtual {v2, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v5, "public_model"

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v5, "emmcid"

    invoke-static {}, Lcom/vivo/upgrade/utils/Util;->getEmmcId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    return-object v2

    .line 212
    :catch_da
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    const-wide/16 v6, 0x0

    goto/16 :goto_24

    .line 218
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_e2
    move-exception v1

    .line 219
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    const/4 v3, 0x0

    goto/16 :goto_30

    .line 227
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_e9
    move-exception v1

    .line 228
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    const-wide/16 v8, 0x0

    goto/16 :goto_46

    .line 233
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_f1
    move-exception v1

    .line 234
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    const/4 v4, 0x0

    goto/16 :goto_52

    .line 239
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_f8
    move-exception v1

    .line 240
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    const/4 v0, 0x0

    goto/16 :goto_5e
.end method

.method private getProName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 82
    invoke-static {}, Lcom/vivo/upgrade/utils/Util;->getSystemModel()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "systemModel":Ljava/lang/String;
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 84
    return-object v0
.end method

.method private getSoftVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    invoke-static {}, Lcom/vivo/upgrade/utils/Util;->getSoftVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSysVersion()Ljava/lang/String;
    .registers 5

    .prologue
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/vivo/upgrade/CheckSystemUpdate;->getProName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "sysVersion":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/upgrade/utils/Util;->getCustomize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vivo/upgrade/CheckSystemUpdate;->getHardwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vivo/upgrade/CheckSystemUpdate;->getSoftVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v1, "Upgrade.CheckSystemUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sysVersion:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/upgrade/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-object v0
.end method

.method private keepDialog(Landroid/content/DialogInterface;Z)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "isKeep"    # Z

    .prologue
    const/4 v2, 0x1

    .line 135
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mShowing"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 136
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 137
    if-eqz p2, :cond_16

    const/4 v2, 0x0

    :cond_16
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1e

    .line 141
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_1d
    return-void

    .line 138
    :catch_1e
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method private processSystemUpdate(Ljava/lang/Object;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 113
    iget-object v2, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->mContext:Landroid/content/Context;

    if-nez v2, :cond_5

    .line 130
    :cond_4
    :goto_4
    return-void

    .line 117
    :cond_5
    if-eqz p1, :cond_4

    instance-of v2, p1, Lcom/vivo/upgrade/SystemUpdateInfo;

    if-eqz v2, :cond_4

    move-object v0, p1

    .line 121
    check-cast v0, Lcom/vivo/upgrade/SystemUpdateInfo;

    .line 122
    .local v0, "info":Lcom/vivo/upgrade/SystemUpdateInfo;
    invoke-virtual {v0}, Lcom/vivo/upgrade/SystemUpdateInfo;->getStateCode()I

    move-result v1

    .line 123
    .local v1, "stateCode":I
    const/16 v2, 0xc9

    if-eq v1, v2, :cond_1e

    .line 124
    const/16 v2, 0xca

    if-eq v1, v2, :cond_1e

    .line 125
    const/16 v2, 0xd2

    if-ne v1, v2, :cond_4

    .line 126
    :cond_1e
    invoke-direct {p0, v0}, Lcom/vivo/upgrade/CheckSystemUpdate;->showSystemUpdateDialog(Lcom/vivo/upgrade/SystemUpdateInfo;)V

    goto :goto_4
.end method

.method private showSystemUpdateDialog(Lcom/vivo/upgrade/SystemUpdateInfo;)V
    .registers 12
    .param p1, "result"    # Lcom/vivo/upgrade/SystemUpdateInfo;

    .prologue
    const/16 v9, 0xc9

    .line 145
    invoke-virtual {p1}, Lcom/vivo/upgrade/SystemUpdateInfo;->getStateCode()I

    move-result v3

    .line 146
    .local v3, "stateCode":I
    invoke-virtual {p1}, Lcom/vivo/upgrade/SystemUpdateInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/vivo/upgrade/SystemUpdateInfo;->getInstruction()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "msg":Ljava/lang/String;
    iget-object v5, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->mContext:Landroid/content/Context;

    const-string v6, "string"

    const-string v7, "vivo_upgrade_system_update_later"

    invoke-static {v5, v6, v7}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 150
    .local v2, "negBtnResId":I
    if-ne v3, v9, :cond_24

    .line 151
    iget-object v5, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->mContext:Landroid/content/Context;

    const-string v6, "string"

    const-string v7, "vivo_upgrade_exit_app"

    invoke-static {v5, v6, v7}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 154
    :cond_24
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->mContext:Landroid/content/Context;

    const-string v7, "string"

    const-string v8, "vivo_upgrade_system_app_new_version"

    invoke-static {v6, v7, v8}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 155
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 156
    iget-object v6, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->mContext:Landroid/content/Context;

    const-string v7, "string"

    const-string v8, "vivo_upgrade_system_update_now"

    invoke-static {v6, v7, v8}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 157
    new-instance v7, Lcom/vivo/upgrade/CheckSystemUpdate$2;

    invoke-direct {v7, p0, v3, v4}, Lcom/vivo/upgrade/CheckSystemUpdate$2;-><init>(Lcom/vivo/upgrade/CheckSystemUpdate;ILjava/lang/String;)V

    .line 156
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 176
    new-instance v6, Lcom/vivo/upgrade/CheckSystemUpdate$3;

    invoke-direct {v6, p0, v3}, Lcom/vivo/upgrade/CheckSystemUpdate$3;-><init>(Lcom/vivo/upgrade/CheckSystemUpdate;I)V

    .line 175
    invoke-virtual {v5, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 187
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 189
    .local v0, "dialog":Landroid/app/Dialog;
    if-ne v3, v9, :cond_67

    .line 190
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 195
    :goto_63
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 196
    return-void

    .line 192
    :cond_67
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_63
.end method


# virtual methods
.method public checkSystemUpdate()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/vivo/upgrade/net/ConnectTask;

    iget-object v3, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->mContext:Landroid/content/Context;

    const-string v4, "http://sysupgrade.vivo.com.cn/checkapp/query"

    invoke-direct {p0}, Lcom/vivo/upgrade/CheckSystemUpdate;->getParams()Ljava/util/HashMap;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/vivo/upgrade/net/ConnectTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 51
    .local v0, "task":Lcom/vivo/upgrade/net/ConnectTask;
    new-instance v3, Lcom/vivo/upgrade/CheckSystemUpdate$1;

    invoke-direct {v3, p0}, Lcom/vivo/upgrade/CheckSystemUpdate$1;-><init>(Lcom/vivo/upgrade/CheckSystemUpdate;)V

    invoke-virtual {v0, v3}, Lcom/vivo/upgrade/net/ConnectTask;->setNetResponseListener(Lcom/vivo/upgrade/net/NetConnectTask$NetResponseListener;)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/vivo/upgrade/net/ConnectTask;->setConnectTimes(I)V

    .line 76
    invoke-virtual {v0}, Lcom/vivo/upgrade/net/ConnectTask;->connect()V

    .line 78
    iget-object v3, p0, Lcom/vivo/upgrade/CheckSystemUpdate;->mSystemUpdateInfo:Lcom/vivo/upgrade/SystemUpdateInfo;

    if-eqz v3, :cond_22

    :goto_21
    return v1

    :cond_22
    move v1, v2

    goto :goto_21
.end method
