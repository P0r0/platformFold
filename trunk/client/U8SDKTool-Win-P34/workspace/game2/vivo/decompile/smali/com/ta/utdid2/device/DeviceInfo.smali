.class public Lcom/ta/utdid2/device/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final CREATE_DEVICE_METADATA_LOCK:Ljava/lang/Object;

.field static HMAC_KEY:Ljava/lang/String; = null

.field static final UTDID_VERSION_CODE:B = 0x1t

.field private static mDevice:Lcom/ta/utdid2/device/Device;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/device/DeviceInfo;->mDevice:Lcom/ta/utdid2/device/Device;

    .line 13
    const-string v0, "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

    sput-object v0, Lcom/ta/utdid2/device/DeviceInfo;->HMAC_KEY:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/DeviceInfo;->CREATE_DEVICE_METADATA_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _initDeviceMetadata(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;
    .registers 8

    .prologue
    .line 47
    if-eqz p0, :cond_56

    .line 48
    new-instance v0, Lcom/ta/utdid2/device/Device;

    invoke-direct {v0}, Lcom/ta/utdid2/device/Device;-><init>()V

    .line 49
    sget-object v2, Lcom/ta/utdid2/device/DeviceInfo;->CREATE_DEVICE_METADATA_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 50
    :try_start_a
    invoke-static {p0}, Lcom/ta/utdid2/device/UTUtdid;->instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/utdid2/device/UTUtdid;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 53
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 56
    :goto_2c
    new-instance v0, Lcom/ta/utdid2/device/Device;

    invoke-direct {v0}, Lcom/ta/utdid2/device/Device;-><init>()V

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 58
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/Device;->setDeviceId(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/Device;->setImei(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v4, v5}, Lcom/ta/utdid2/device/Device;->setCreateTimestamp(J)V

    .line 63
    invoke-virtual {v0, v6}, Lcom/ta/utdid2/device/Device;->setImsi(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/ta/utdid2/device/Device;->setUtdid(Ljava/lang/String;)V

    .line 65
    invoke-static {v0}, Lcom/ta/utdid2/device/DeviceInfo;->getMetadataCheckSum(Lcom/ta/utdid2/device/Device;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/ta/utdid2/device/Device;->setCheckSum(J)V

    .line 66
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_a .. :try_end_54} :catchall_58

    .line 70
    :goto_54
    return-object v0

    .line 68
    :cond_55
    monitor-exit v2

    .line 70
    :cond_56
    const/4 v0, 0x0

    goto :goto_54

    .line 68
    :catchall_58
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5b
    move-object v1, v0

    goto :goto_2c
.end method

.method public static declared-synchronized getDevice(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;
    .registers 3

    .prologue
    .line 80
    const-class v1, Lcom/ta/utdid2/device/DeviceInfo;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/ta/utdid2/device/DeviceInfo;->mDevice:Lcom/ta/utdid2/device/Device;

    if-eqz v0, :cond_b

    .line 81
    sget-object v0, Lcom/ta/utdid2/device/DeviceInfo;->mDevice:Lcom/ta/utdid2/device/Device;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_14

    .line 88
    :goto_9
    monitor-exit v1

    return-object v0

    .line 83
    :cond_b
    if-eqz p0, :cond_17

    .line 84
    :try_start_d
    invoke-static {p0}, Lcom/ta/utdid2/device/DeviceInfo;->_initDeviceMetadata(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;

    move-result-object v0

    .line 85
    sput-object v0, Lcom/ta/utdid2/device/DeviceInfo;->mDevice:Lcom/ta/utdid2/device/Device;
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_14

    goto :goto_9

    .line 80
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0

    .line 88
    :cond_17
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static getMetadataCheckSum(Lcom/ta/utdid2/device/Device;)J
    .registers 7

    .prologue
    .line 24
    if-eqz p0, :cond_4c

    .line 25
    const-string v0, "%s%s%s%s%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getUtdid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getCreateTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getImsi()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getImei()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 30
    new-instance v1, Ljava/util/zip/Adler32;

    invoke-direct {v1}, Ljava/util/zip/Adler32;-><init>()V

    .line 31
    invoke-virtual {v1}, Ljava/util/zip/Adler32;->reset()V

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/Adler32;->update([B)V

    .line 33
    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    .line 37
    :goto_4b
    return-wide v0

    :cond_4c
    const-wide/16 v0, 0x0

    goto :goto_4b
.end method
