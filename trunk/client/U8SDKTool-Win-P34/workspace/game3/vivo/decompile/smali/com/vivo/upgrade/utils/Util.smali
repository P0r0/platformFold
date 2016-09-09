.class public Lcom/vivo/upgrade/utils/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final ACTION_DOWNLOAD_PACKAGE:Ljava/lang/String; = "com.vivo.upgrade.ikey.ACTION_DOWNLOAD_PACKAGE"

.field public static final ACTION_INSTALL_PACKAGE:Ljava/lang/String; = "com.vivo.upgrade.ikey.ACTION_INSTALL_PACKAGE"

.field public static final APK_PATH:Ljava/lang/String;

.field public static final DOWNLOAD_COMPLETE_LEVEL:Ljava/lang/String; = "level"

.field public static final DOWNLOAD_COMPLETE_LOW_MD5:Ljava/lang/String; = "lowerMd5String"

.field public static final DOWNLOAD_COMPLETE_MD5:Ljava/lang/String; = "md5String"

.field public static final DOWNLOAD_COMPLETE_MODE:Ljava/lang/String; = "mode"

.field public static final DOWNLOAD_COMPLETE_PATH:Ljava/lang/String; = "path"

.field public static final DSIN_UPDATE_TYPE:I = 0x2

.field public static final DSIS_UPDATE_TYPE:I = 0x4

.field public static final EMMC_ID_CACHE:Ljava/lang/String; = "com.vivo.upgrade.spkey.EMMC_ID_CACHE"

.field public static final FORCE_UPDATE_TYPE:I = 0x3

.field public static final IS_ROM_2:Z

.field public static final IS_ROM_3:Z

.field public static final JAR_VERSION:I = 0x1

.field public static final KEY_APPSTORE_UPDATE_SKIP_TIME:Ljava/lang/String; = "com.vivo.upgrade.ikey.KEY_APPSTORE_UPDATE_SKIP_TIME"

.field public static final KEY_CHECK_BY_USER:Ljava/lang/String; = "com.vivo.upgrade.ikey.KEY_CHECK_BY_USER"

.field public static final KEY_CHECK_MD5_FAIL:Ljava/lang/String; = "com.vivo.upgrade.ikey.KEY_CHECK_MD5_FAIL"

.field public static final KEY_DOWNLOAD_APK_SKIP_VERCODE:Ljava/lang/String; = "com.vivo.upgrade.ikey.KEY_DOWNLOAD_APK_SKIP_VERCODE"

.field public static final KEY_DOWNLOAD_DLG_SHOW:Ljava/lang/String; = "com.vivo.upgrade.ikey.KEY_DOWNLOAD_DLG_SHOW"

.field public static final KEY_DOWNLOAD_MODE:Ljava/lang/String; = "com.vivo.upgrade.ikey.KEY_DOWNLOAD_MODE"

.field public static final KEY_DOWNLOAD_PATH:Ljava/lang/String; = "com.vivo.upgrade.ikey.KEY_DOWNLOAD_PATH"

.field public static final KEY_INSTALL_DLG_SHOW:Ljava/lang/String; = "com.vivo.upgrade.ikey.KEY_INSTALL_DLG_SHOW"

.field public static final KEY_NO_NOTICE_IN_SEVEN:Ljava/lang/String; = "com.vivo.upgrade.ikey.KEY_NO_NOTICE_IN_SEVEN"

.field public static final KEY_UPDATE_NOTIFY:Ljava/lang/String; = "com.vivo.upgrade.ikey.KEY_UPDATE_NOTIFY"

.field public static final MATH_TWO_DOT:Ljava/lang/String; = "%.2f"

.field public static final NORMAL_UPDATE_TYPE:I = 0x1

.field public static final PHONE_IMEI:Ljava/lang/String; = "com.vivo.upgrade.spkey.PHONE_IMEI"

.field private static final PRE_BROADCAST_ACTION:Ljava/lang/String; = "com.vivo.upgrade.action."

.field private static final PRE_HANDLER_ACTION:Ljava/lang/String; = "com.vivo.upgrade.handler."

.field private static final PRE_INTENT_KEY:Ljava/lang/String; = "com.vivo.upgrade.ikey."

.field private static final PRE_SP_KEY:Ljava/lang/String; = "com.vivo.upgrade.spkey."

.field private static final PROP_BRANCH_VERSION:Ljava/lang/String; = "ro.hardware.bbk"

.field private static final PROP_CUSTOMIZE:Ljava/lang/String; = "ro.product.customize.bbk"

.field private static final PROP_MODEL:Ljava/lang/String; = "ro.product.model.bbk"

.field private static final PROP_VERSION:Ljava/lang/String; = "ro.build.version.bbk"

.field public static final UPDATE_REQUEST_INTERVAL:Ljava/lang/String; = "com.vivo.upgrade.ikey.UPDATE_REQUEST_INTERVAL"

.field public static final USER_UPDATE_TYPE:I = 0x5

.field private static mApi:I

.field private static mEmmcId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    invoke-static {}, Lcom/vivo/upgrade/utils/Reflact;->isRom20()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/upgrade/utils/Util;->IS_ROM_2:Z

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_30

    const/4 v0, 0x1

    :goto_d
    sput-boolean v0, Lcom/vivo/upgrade/utils/Util;->IS_ROM_3:Z

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    const-string v1, "/Download/upgrade/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/upgrade/utils/Util;->APK_PATH:Ljava/lang/String;

    .line 72
    const/4 v0, -0x1

    sput v0, Lcom/vivo/upgrade/utils/Util;->mApi:I

    .line 96
    return-void

    .line 25
    :cond_30
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendGreneralInfomation(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_7

    .line 305
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 308
    .restart local p1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    invoke-static {p0}, Lcom/vivo/upgrade/utils/ImeiUtis;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, "mieiCode":Ljava/lang/String;
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 310
    .local v4, "modelNumber":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 312
    .local v0, "elapsedTime":J
    if-eqz v3, :cond_1b

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_86

    .line 313
    :cond_1b
    const-string v6, "imei"

    const-string v7, "012345678987654"

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :goto_22
    const-string v6, "model"

    invoke-virtual {p1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v6, "elapsedtime"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-static {}, Lcom/vivo/upgrade/CheckUpdateManager;->getInstance()Lcom/vivo/upgrade/CheckUpdateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vivo/upgrade/CheckUpdateManager;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 323
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_45

    .line 324
    const-string v6, "app_version"

    iget v7, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_45
    const-string v6, "cs"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v6, "e"

    invoke-static {}, Lcom/vivo/upgrade/utils/Util;->getEmmcId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v6, "av"

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v6, "an"

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v6, "upJarVer"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-static {p0}, Lcom/vivo/upgrade/net/NetUtils;->getConnectionTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 334
    .local v5, "nt":Ljava/lang/String;
    const-string v6, "nt"

    if-nez v5, :cond_82

    const-string v5, "null"

    .end local v5    # "nt":Ljava/lang/String;
    :cond_82
    invoke-virtual {p1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    return-object p1

    .line 315
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_86
    const-string v6, "imei"

    invoke-virtual {p1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22
.end method

.method public static currentAPI()I
    .registers 2

    .prologue
    .line 204
    sget v1, Lcom/vivo/upgrade/utils/Util;->mApi:I

    if-gez v1, :cond_d

    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 206
    .local v0, "sdkAPI":I
    const/16 v1, 0xf

    if-ne v0, v1, :cond_10

    .line 207
    const/4 v1, 0x4

    sput v1, Lcom/vivo/upgrade/utils/Util;->mApi:I

    .line 212
    :cond_d
    :goto_d
    sget v1, Lcom/vivo/upgrade/utils/Util;->mApi:I

    return v1

    .line 209
    :cond_10
    const/4 v1, 0x0

    sput v1, Lcom/vivo/upgrade/utils/Util;->mApi:I

    goto :goto_d
.end method

.method public static delete(Ljava/io/File;)V
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 340
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 341
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 357
    :cond_9
    :goto_9
    return-void

    .line 345
    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 346
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 347
    .local v0, "childFiles":[Ljava/io/File;
    if-eqz v0, :cond_19

    array-length v2, v0

    if-nez v2, :cond_1d

    .line 348
    :cond_19
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_9

    .line 352
    :cond_1d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    array-length v2, v0

    if-lt v1, v2, :cond_25

    .line 355
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_9

    .line 353
    :cond_25
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/vivo/upgrade/utils/Util;->delete(Ljava/io/File;)V

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e
.end method

.method private static format(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 180
    .local v0, "array":[C
    array-length v2, v0

    .line 182
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_a
    if-lt v1, v2, :cond_11

    .line 187
    :cond_c
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 183
    :cond_11
    aget-char v3, v0, v1

    invoke-static {v3}, Lcom/vivo/upgrade/utils/Util;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_c

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public static getAvailableMemorySize(Ljava/lang/String;)J
    .registers 11
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    .line 104
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_e

    .line 121
    :goto_d
    return-wide v8

    .line 110
    :cond_e
    const/4 v6, 0x0

    .line 113
    .local v6, "stat":Landroid/os/StatFs;
    :try_start_f
    new-instance v6, Landroid/os/StatFs;

    .end local v6    # "stat":Landroid/os/StatFs;
    invoke-direct {v6, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_21

    .line 119
    .restart local v6    # "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 120
    .local v2, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 121
    .local v0, "availableBlocks":J
    mul-long v8, v0, v2

    goto :goto_d

    .line 114
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v6    # "stat":Landroid/os/StatFs;
    :catch_21
    move-exception v4

    .line 115
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public static getCustomize()Ljava/lang/String;
    .registers 2

    .prologue
    .line 200
    const-string v0, "ro.product.customize.bbk"

    const-string v1, "N"

    invoke-static {v0, v1}, Lcom/vivo/upgrade/utils/Reflact;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmmcId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 217
    sget-object v1, Lcom/vivo/upgrade/utils/Util;->mEmmcId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 219
    invoke-static {}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->getInstance()Lcom/vivo/upgrade/utils/SharePreferenceManager;

    move-result-object v1

    const-string v2, "com.vivo.upgrade.spkey.EMMC_ID_CACHE"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vivo/upgrade/utils/Util;->mEmmcId:Ljava/lang/String;

    .line 221
    sget-object v1, Lcom/vivo/upgrade/utils/Util;->mEmmcId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 224
    :try_start_1e
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/block/mmcblk0/device/cid"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vivo/upgrade/utils/Util;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vivo/upgrade/utils/Util;->mEmmcId:Ljava/lang/String;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_31} :catch_47

    .line 229
    .local v0, "e":Ljava/io/IOException;
    :goto_31
    sget-object v1, Lcom/vivo/upgrade/utils/Util;->mEmmcId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 230
    invoke-static {}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->getInstance()Lcom/vivo/upgrade/utils/SharePreferenceManager;

    move-result-object v1

    const-string v2, "com.vivo.upgrade.spkey.EMMC_ID_CACHE"

    sget-object v3, Lcom/vivo/upgrade/utils/Util;->mEmmcId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_44
    sget-object v1, Lcom/vivo/upgrade/utils/Util;->mEmmcId:Ljava/lang/String;

    return-object v1

    .line 225
    .end local v0    # "e":Ljava/io/IOException;
    :catch_47
    move-exception v0

    .line 226
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31
.end method

.method public static getHardwareVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    const-string v0, "ro.hardware.bbk"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/vivo/upgrade/utils/Reflact;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSoftVersion()Ljava/lang/String;
    .registers 4

    .prologue
    .line 160
    const-string v2, "ro.build.version.bbk"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/vivo/upgrade/utils/Reflact;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "proVersion":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 162
    const-string v2, ""

    .line 173
    :goto_10
    return-object v2

    .line 164
    :cond_11
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "list":[Ljava/lang/String;
    if-nez v0, :cond_1c

    .line 167
    const-string v2, ""

    goto :goto_10

    .line 170
    :cond_1c
    array-length v2, v0

    const/4 v3, 0x3

    if-gt v2, v3, :cond_2a

    .line 171
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/vivo/upgrade/utils/Util;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    .line 173
    :cond_2a
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/vivo/upgrade/utils/Util;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_10
.end method

.method public static getSystemModel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 134
    const-string v1, "ro.product.model.bbk"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/vivo/upgrade/utils/Reflact;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "systemModel":Ljava/lang/String;
    const-string v1, "PD1124"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 137
    const-string v1, "PD1121"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 138
    const-string v1, "PD1007C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 139
    const-string v1, "PD1007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 140
    const-string v1, "PD1115"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 141
    const-string v1, "PD1110"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 142
    const-string v1, "PD1203"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 143
    const-string v1, "PD1206"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 144
    const-string v1, "PD1207W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 145
    const-string v1, "PD1007B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 146
    const-string v1, "PD1208"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 147
    const-string v1, "PD1209"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 148
    const-string v1, "PD1203T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 149
    const-string v1, "PD1124T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 150
    :cond_78
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_82
    return-object v0
.end method

.method private static isDigit(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 192
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    .line 193
    const/4 v0, 0x1

    .line 196
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isVivoPhone()Z
    .registers 2

    .prologue
    .line 125
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 126
    .local v0, "phoneModel":Ljava/lang/String;
    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 127
    const/4 v1, 0x1

    .line 129
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .registers 19
    .param p0, "file"    # Ljava/io/File;
    .param p1, "max"    # I
    .param p2, "ellipsis"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v5, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 252
    .local v5, "input":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 254
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 255
    .local v10, "size":J
    if-gtz p1, :cond_1a

    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-lez v13, :cond_83

    if-nez p1, :cond_83

    .line 256
    :cond_1a
    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-lez v13, :cond_2c

    if-eqz p1, :cond_29

    move/from16 v0, p1

    int-to-long v14, v0

    cmp-long v13, v10, v14

    if-gez v13, :cond_2c

    :cond_29
    long-to-int v0, v10

    move/from16 p1, v0

    .line 257
    :cond_2c
    add-int/lit8 v13, p1, 0x1

    new-array v4, v13, [B

    .line 258
    .local v4, "data":[B
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_118

    move-result v8

    .line 259
    .local v8, "length":I
    if-gtz v8, :cond_3f

    .line 297
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 298
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 259
    const-string v13, ""

    .line 298
    .end local v8    # "length":I
    :goto_3e
    return-object v13

    .line 260
    .restart local v8    # "length":I
    :cond_3f
    move/from16 v0, p1

    if-gt v8, v0, :cond_50

    :try_start_43
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v4, v14, v8}, Ljava/lang/String;-><init>([BII)V
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_118

    .line 297
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 298
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_3e

    .line 261
    :cond_50
    if-nez p2, :cond_61

    :try_start_52
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-direct {v13, v4, v14, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_118

    .line 297
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 298
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_3e

    .line 262
    :cond_61
    :try_start_61
    new-instance v13, Ljava/lang/StringBuilder;

    new-instance v14, Ljava/lang/String;

    const/4 v15, 0x0

    move/from16 v0, p1

    invoke-direct {v14, v4, v15, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7b
    .catchall {:try_start_61 .. :try_end_7b} :catchall_118

    move-result-object v13

    .line 297
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 298
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_3e

    .line 263
    .end local v4    # "data":[B
    .end local v8    # "length":I
    :cond_83
    if-gez p1, :cond_f6

    .line 265
    const/4 v9, 0x0

    .line 266
    .local v9, "rolled":Z
    const/4 v6, 0x0

    .line 267
    .local v6, "last":[B
    const/4 v4, 0x0

    .line 269
    .restart local v4    # "data":[B
    :cond_88
    if-eqz v6, :cond_8b

    const/4 v9, 0x1

    .line 270
    :cond_8b
    move-object v12, v6

    .line 271
    .local v12, "tmp":[B
    move-object v6, v4

    .line 272
    move-object v4, v12

    .line 273
    if-nez v4, :cond_95

    move/from16 v0, p1

    neg-int v13, v0

    :try_start_93
    new-array v4, v13, [B

    .line 274
    :cond_95
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    .line 275
    .local v7, "len":I
    array-length v13, v4
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_118

    if-eq v7, v13, :cond_88

    .line 277
    if-nez v6, :cond_a9

    if-gtz v7, :cond_a9

    .line 297
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 298
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 277
    const-string v13, ""

    goto :goto_3e

    .line 278
    :cond_a9
    if-nez v6, :cond_b8

    :try_start_ab
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v4, v14, v7}, Ljava/lang/String;-><init>([BII)V
    :try_end_b1
    .catchall {:try_start_ab .. :try_end_b1} :catchall_118

    .line 297
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 298
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_3e

    .line 279
    :cond_b8
    if-lez v7, :cond_c7

    .line 280
    const/4 v9, 0x1

    .line 281
    const/4 v13, 0x0

    :try_start_bc
    array-length v14, v6

    sub-int/2addr v14, v7

    invoke-static {v6, v7, v6, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    const/4 v13, 0x0

    array-length v14, v6

    sub-int/2addr v14, v7

    invoke-static {v4, v13, v6, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    :cond_c7
    if-eqz p2, :cond_cb

    if-nez v9, :cond_d8

    :cond_cb
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_d0
    .catchall {:try_start_bc .. :try_end_d0} :catchall_118

    .line 297
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 298
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto/16 :goto_3e

    .line 285
    :cond_d8
    :try_start_d8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_ed
    .catchall {:try_start_d8 .. :try_end_ed} :catchall_118

    move-result-object v13

    .line 297
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 298
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto/16 :goto_3e

    .line 287
    .end local v4    # "data":[B
    .end local v6    # "last":[B
    .end local v7    # "len":I
    .end local v9    # "rolled":Z
    .end local v12    # "tmp":[B
    :cond_f6
    :try_start_f6
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 289
    .local v3, "contents":Ljava/io/ByteArrayOutputStream;
    const/16 v13, 0x400

    new-array v4, v13, [B

    .line 291
    .restart local v4    # "data":[B
    :cond_ff
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    .line 292
    .restart local v7    # "len":I
    if-lez v7, :cond_109

    const/4 v13, 0x0

    invoke-virtual {v3, v4, v13, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 293
    :cond_109
    array-length v13, v4

    if-eq v7, v13, :cond_ff

    .line 294
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_10f
    .catchall {:try_start_f6 .. :try_end_10f} :catchall_118

    move-result-object v13

    .line 297
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 298
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto/16 :goto_3e

    .line 296
    .end local v3    # "contents":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "data":[B
    .end local v7    # "len":I
    .end local v10    # "size":J
    :catchall_118
    move-exception v13

    .line 297
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 298
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 299
    throw v13
.end method
