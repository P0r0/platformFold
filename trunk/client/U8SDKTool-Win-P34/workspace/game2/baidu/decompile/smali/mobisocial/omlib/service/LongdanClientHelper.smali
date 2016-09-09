.class public Lmobisocial/omlib/service/LongdanClientHelper;
.super Ljava/lang/Object;
.source "LongdanClientHelper.java"


# static fields
.field static final OMLIB_VERSION:I = 0x0

.field public static final SYNC_WINDOW_MS:I = 0x48190800

.field private static sDeviceInfo:Lmobisocial/longdan/net/ClientDeviceInfo;

.field private static sLdClient:Lmobisocial/omlib/client/LongdanClient;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateDeviceKey()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 87
    .local v2, "rand":Ljava/security/SecureRandom;
    const/16 v3, 0x80

    new-array v1, v3, [B

    .line 88
    .local v1, "privateKeyBytes":[B
    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 89
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 90
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 91
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 92
    invoke-static {v1}, Lmobisocial/crypto/Curve25519;->clamp([B)V

    .line 93
    return-object v1
.end method

.method static getClientVersionInfo(Landroid/content/Context;)Lmobisocial/longdan/net/ClientVersionInfo;
    .registers 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 100
    new-instance v1, Lmobisocial/longdan/net/ClientVersionInfo;

    invoke-direct {v1}, Lmobisocial/longdan/net/ClientVersionInfo;-><init>()V

    .line 101
    .local v1, "info":Lmobisocial/longdan/net/ClientVersionInfo;
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v4, v1, Lmobisocial/longdan/net/ClientVersionInfo;->Model:Ljava/lang/String;

    .line 102
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v4, v1, Lmobisocial/longdan/net/ClientVersionInfo;->OsVersion:Ljava/lang/String;

    .line 103
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v4, v1, Lmobisocial/longdan/net/ClientVersionInfo;->Manufacturer:Ljava/lang/String;

    .line 104
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lmobisocial/longdan/net/ClientVersionInfo;->Locale:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "packageName":Ljava/lang/String;
    iput-object v2, v1, Lmobisocial/longdan/net/ClientVersionInfo;->PackageId:Ljava/lang/String;

    .line 107
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Lmobisocial/longdan/net/ClientVersionInfo;->OmlibVersion:Ljava/lang/Integer;

    .line 109
    :try_start_28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 110
    .local v3, "version":Ljava/lang/String;
    iput-object v3, v1, Lmobisocial/longdan/net/ClientVersionInfo;->PackageVersion:Ljava/lang/String;
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_35} :catch_36

    .line 114
    .end local v3    # "version":Ljava/lang/String;
    :goto_35
    return-object v1

    .line 111
    :catch_36
    move-exception v0

    .line 112
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Omlib"

    const-string v5, "Failed to look up our own package info!"

    invoke-static {v4, v5, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35
.end method

.method public static getInstance(Landroid/content/Context;)Lmobisocial/omlib/client/LongdanClient;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    sget-object v1, Lmobisocial/omlib/client/LongdanClient;->sharedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_3
    sget-object v0, Lmobisocial/omlib/service/LongdanClientHelper;->sLdClient:Lmobisocial/omlib/client/LongdanClient;

    if-nez v0, :cond_a

    .line 35
    invoke-static {p0}, Lmobisocial/omlib/service/LongdanClientHelper;->resetInstance(Landroid/content/Context;)Lmobisocial/omlib/client/LongdanClient;

    .line 37
    :cond_a
    sget-object v0, Lmobisocial/omlib/service/LongdanClientHelper;->sLdClient:Lmobisocial/omlib/client/LongdanClient;

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private static getNotificationProvider(Landroid/content/Context;)Lmobisocial/omlib/client/interfaces/NotificationProvider;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    new-instance v0, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;

    invoke-direct {v0, p0}, Lmobisocial/omlib/service/OmlibContentProvider$ContentNotificationProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static initializeDevice(Landroid/content/Context;)Lmobisocial/longdan/net/ClientDeviceInfo;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v12, 0x3e8

    const-wide/16 v10, 0x1

    .line 49
    invoke-static {p0}, Lmobisocial/omlib/db/OMSQLiteHelper;->getInstance(Landroid/content/Context;)Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v0

    .line 50
    .local v0, "dbh":Lmobisocial/omlib/db/OMSQLiteHelper;
    const-class v3, Lmobisocial/omlib/db/entity/OMDevice;

    invoke-virtual {v0, v3, v10, v11}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/db/entity/OMDevice;

    .line 51
    .local v1, "device":Lmobisocial/omlib/db/entity/OMDevice;
    new-instance v3, Lmobisocial/longdan/net/ClientDeviceInfo;

    invoke-direct {v3}, Lmobisocial/longdan/net/ClientDeviceInfo;-><init>()V

    sput-object v3, Lmobisocial/omlib/service/LongdanClientHelper;->sDeviceInfo:Lmobisocial/longdan/net/ClientDeviceInfo;

    .line 52
    if-eqz v1, :cond_4e

    .line 53
    sget-object v3, Lmobisocial/omlib/service/LongdanClientHelper;->sDeviceInfo:Lmobisocial/longdan/net/ClientDeviceInfo;

    iget-object v6, v1, Lmobisocial/omlib/db/entity/OMDevice;->deviceKey:[B

    iput-object v6, v3, Lmobisocial/longdan/net/ClientDeviceInfo;->devicePrivateKey:[B

    .line 54
    sget-object v3, Lmobisocial/omlib/service/LongdanClientHelper;->sDeviceInfo:Lmobisocial/longdan/net/ClientDeviceInfo;

    iget-object v6, v1, Lmobisocial/omlib/db/entity/OMDevice;->appId:[B

    iput-object v6, v3, Lmobisocial/longdan/net/ClientDeviceInfo;->appId:[B

    .line 55
    iget-object v3, v1, Lmobisocial/omlib/db/entity/OMDevice;->scopes:Ljava/lang/String;

    if-eqz v3, :cond_35

    .line 56
    sget-object v3, Lmobisocial/omlib/service/LongdanClientHelper;->sDeviceInfo:Lmobisocial/longdan/net/ClientDeviceInfo;

    iget-object v6, v1, Lmobisocial/omlib/db/entity/OMDevice;->scopes:Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lmobisocial/longdan/net/ClientDeviceInfo;->scopes:[Ljava/lang/String;

    .line 57
    :cond_35
    sget-object v3, Lmobisocial/omlib/service/LongdanClientHelper;->sDeviceInfo:Lmobisocial/longdan/net/ClientDeviceInfo;

    iget-object v6, v1, Lmobisocial/omlib/db/entity/OMDevice;->account:Ljava/lang/String;

    iput-object v6, v3, Lmobisocial/longdan/net/ClientDeviceInfo;->account:Ljava/lang/String;

    .line 58
    sget-object v3, Lmobisocial/omlib/service/LongdanClientHelper;->sDeviceInfo:Lmobisocial/longdan/net/ClientDeviceInfo;

    iget-object v6, v1, Lmobisocial/omlib/db/entity/OMDevice;->cluster:Ljava/lang/String;

    iput-object v6, v3, Lmobisocial/longdan/net/ClientDeviceInfo;->cluster:Ljava/lang/String;

    .line 59
    sget-object v3, Lmobisocial/omlib/service/LongdanClientHelper;->sDeviceInfo:Lmobisocial/longdan/net/ClientDeviceInfo;

    iget-wide v6, v1, Lmobisocial/omlib/db/entity/OMDevice;->initialInstallTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v3, Lmobisocial/longdan/net/ClientDeviceInfo;->initialInstallTime:Ljava/lang/Long;

    .line 77
    :goto_4b
    sget-object v3, Lmobisocial/omlib/service/LongdanClientHelper;->sDeviceInfo:Lmobisocial/longdan/net/ClientDeviceInfo;

    return-object v3

    .line 62
    :cond_4e
    :try_start_4e
    sget-object v3, Lmobisocial/omlib/service/LongdanClientHelper;->sDeviceInfo:Lmobisocial/longdan/net/ClientDeviceInfo;

    invoke-static {}, Lmobisocial/omlib/service/LongdanClientHelper;->generateDeviceKey()[B

    move-result-object v6

    iput-object v6, v3, Lmobisocial/longdan/net/ClientDeviceInfo;->devicePrivateKey:[B

    .line 63
    sget-object v3, Lmobisocial/omlib/service/LongdanClientHelper;->sDeviceInfo:Lmobisocial/longdan/net/ClientDeviceInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v3, Lmobisocial/longdan/net/ClientDeviceInfo;->initialInstallTime:Ljava/lang/Long;
    :try_end_62
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4e .. :try_end_62} :catch_97

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x48190800

    sub-long v4, v6, v8

    .line 68
    .local v4, "twoWeeksAgo":J
    new-instance v1, Lmobisocial/omlib/db/entity/OMDevice;

    .end local v1    # "device":Lmobisocial/omlib/db/entity/OMDevice;
    invoke-direct {v1}, Lmobisocial/omlib/db/entity/OMDevice;-><init>()V

    .line 69
    .restart local v1    # "device":Lmobisocial/omlib/db/entity/OMDevice;
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v10, v11}, Ljava/lang/Long;-><init>(J)V

    iput-object v3, v1, Lmobisocial/omlib/db/entity/OMDevice;->id:Ljava/lang/Long;

    .line 70
    const-wide/16 v6, 0x0

    iput-wide v6, v1, Lmobisocial/omlib/db/entity/OMDevice;->feedSyncStart:J

    .line 71
    mul-long v6, v4, v12

    iput-wide v6, v1, Lmobisocial/omlib/db/entity/OMDevice;->feedSyncSplit:J

    .line 72
    mul-long v6, v4, v12

    iput-wide v6, v1, Lmobisocial/omlib/db/entity/OMDevice;->feedSyncEnd:J

    .line 73
    sget-object v3, Lmobisocial/omlib/service/LongdanClientHelper;->sDeviceInfo:Lmobisocial/longdan/net/ClientDeviceInfo;

    iget-object v3, v3, Lmobisocial/longdan/net/ClientDeviceInfo;->devicePrivateKey:[B

    iput-object v3, v1, Lmobisocial/omlib/db/entity/OMDevice;->deviceKey:[B

    .line 74
    sget-object v3, Lmobisocial/omlib/service/LongdanClientHelper;->sDeviceInfo:Lmobisocial/longdan/net/ClientDeviceInfo;

    iget-object v3, v3, Lmobisocial/longdan/net/ClientDeviceInfo;->initialInstallTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v1, Lmobisocial/omlib/db/entity/OMDevice;->initialInstallTime:J

    .line 75
    invoke-virtual {v0, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto :goto_4b

    .line 64
    .end local v4    # "twoWeeksAgo":J
    :catch_97
    move-exception v2

    .line 65
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "Missing critical hash function"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static isExternalStorageWritable()Z
    .registers 2

    .prologue
    .line 129
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method static makePlatformConfiguration(Landroid/content/Context;)Lmobisocial/omlib/client/PlatformConfiguration;
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 118
    new-instance v0, Lmobisocial/omlib/client/PlatformConfiguration;

    invoke-direct {v0}, Lmobisocial/omlib/client/PlatformConfiguration;-><init>()V

    .line 119
    .local v0, "config":Lmobisocial/omlib/client/PlatformConfiguration;
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 120
    .local v1, "extDir":Ljava/io/File;
    invoke-static {}, Lmobisocial/omlib/service/LongdanClientHelper;->isExternalStorageWritable()Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz v1, :cond_18

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmobisocial/omlib/client/PlatformConfiguration;->dataPath:Ljava/lang/String;

    .line 125
    :goto_17
    return-object v0

    .line 123
    :cond_18
    const-string v2, "omlib"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmobisocial/omlib/client/PlatformConfiguration;->dataPath:Ljava/lang/String;

    goto :goto_17
.end method

.method public static resetInstance(Landroid/content/Context;)Lmobisocial/omlib/client/LongdanClient;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-object v6, Lmobisocial/omlib/client/LongdanClient;->sharedLock:Ljava/lang/Object;

    monitor-enter v6

    .line 43
    :try_start_3
    new-instance v0, Lmobisocial/omlib/client/LongdanClient;

    invoke-static {p0}, Lmobisocial/omlib/service/LongdanClientHelper;->makePlatformConfiguration(Landroid/content/Context;)Lmobisocial/omlib/client/PlatformConfiguration;

    move-result-object v2

    invoke-static {p0}, Lmobisocial/omlib/service/LongdanClientHelper;->getClientVersionInfo(Landroid/content/Context;)Lmobisocial/longdan/net/ClientVersionInfo;

    move-result-object v3

    invoke-static {p0}, Lmobisocial/omlib/service/LongdanClientHelper;->initializeDevice(Landroid/content/Context;)Lmobisocial/longdan/net/ClientDeviceInfo;

    move-result-object v4

    invoke-static {p0}, Lmobisocial/omlib/service/LongdanClientHelper;->getNotificationProvider(Landroid/content/Context;)Lmobisocial/omlib/client/interfaces/NotificationProvider;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmobisocial/omlib/client/LongdanClient;-><init>(Landroid/content/Context;Lmobisocial/omlib/client/PlatformConfiguration;Lmobisocial/longdan/net/ClientVersionInfo;Lmobisocial/longdan/net/ClientDeviceInfo;Lmobisocial/omlib/client/interfaces/NotificationProvider;)V

    sput-object v0, Lmobisocial/omlib/service/LongdanClientHelper;->sLdClient:Lmobisocial/omlib/client/LongdanClient;

    .line 44
    sget-object v0, Lmobisocial/omlib/service/LongdanClientHelper;->sLdClient:Lmobisocial/omlib/client/LongdanClient;

    monitor-exit v6

    return-object v0

    .line 45
    :catchall_1f
    move-exception v0

    monitor-exit v6
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method
