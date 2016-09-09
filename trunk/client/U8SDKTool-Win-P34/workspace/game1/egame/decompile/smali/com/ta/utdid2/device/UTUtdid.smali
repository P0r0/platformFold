.class public Lcom/ta/utdid2/device/UTUtdid;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CREATE_LOCK:Ljava/lang/Object;

.field private static final HMAC_KEY:Ljava/lang/String; = "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

.field private static final S_GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

.field private static final S_GLOBAL_PERSISTENT_CONFIG_KEY:Ljava/lang/String; = "Alvin2"

.field private static final S_LOCAL_STORAGE_KEY:Ljava/lang/String; = "ContextData"

.field private static final S_LOCAL_STORAGE_NAME:Ljava/lang/String; = ".DataStorage"

.field static final UM_SETTINGS_STORAGE:Ljava/lang/String; = "dxCRMxhQkdGePGnp"

.field static final UM_SETTINGS_STORAGE_NEW:Ljava/lang/String; = "mqBRboGZkQPcAkyk"

.field private static s_umutdid:Lcom/ta/utdid2/device/UTUtdid;


# instance fields
.field private mCBDomain:Ljava/lang/String;

.field private mCBKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

.field private mUtdid:Ljava/lang/String;

.field private mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->CREATE_LOCK:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".UTSystemConfig"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->S_GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    .line 30
    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    .line 32
    const-string v0, "xx_utdid_key"

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    .line 33
    const-string v0, "xx_utdid_domain"

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBDomain:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    .line 39
    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    .line 43
    const-string v0, "[^0-9a-zA-Z=/+]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mPattern:Ljava/util/regex/Pattern;

    .line 46
    iput-object p1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    sget-object v2, Lcom/ta/utdid2/device/UTUtdid;->S_GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

    const-string v3, "Alvin2"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    .line 50
    new-instance v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v2, ".DataStorage"

    const-string v3, "ContextData"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    .line 52
    new-instance v0, Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-direct {v0}, Lcom/ta/utdid2/device/UTUtdidHelper;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    .line 53
    const-string v0, "K_%d"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    .line 54
    const-string v0, "D_%d"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBDomain:Ljava/lang/String;

    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBDomain:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private static _calcHmac([B)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 461
    const-string v0, "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

    .line 462
    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 463
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 464
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 465
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 466
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ta/utdid2/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final _generateUtdid()[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 426
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 428
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 429
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v0

    .line 432
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v2

    .line 433
    invoke-virtual {v1, v0, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 434
    invoke-virtual {v1, v2, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 435
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 436
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 437
    :try_start_2d
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_56

    move-result-object v0

    .line 443
    :goto_33
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v0

    .line 444
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v0

    .line 445
    invoke-virtual {v1, v0, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 446
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/device/UTUtdid;->_calcHmac([B)Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v0

    .line 449
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 450
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 441
    :catch_56
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33
.end method

.method private _removeIllegalKeys()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 61
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v0, :cond_6d

    .line 62
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v2, "UTDID2"

    invoke-virtual {v0, v2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 64
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v2, "UTDID"

    invoke-virtual {v0, v2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 66
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    .line 69
    :cond_24
    const/4 v0, 0x0

    .line 70
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v3, "DID"

    invoke-virtual {v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 72
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v2, "DID"

    invoke-virtual {v0, v2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->remove(Ljava/lang/String;)V

    move v0, v1

    .line 76
    :cond_3b
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v3, "EI"

    invoke-virtual {v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 78
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v2, "EI"

    invoke-virtual {v0, v2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->remove(Ljava/lang/String;)V

    move v0, v1

    .line 82
    :cond_51
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v3, "SI"

    invoke-virtual {v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6e

    .line 84
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v2, "SI"

    invoke-virtual {v0, v2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->remove(Ljava/lang/String;)V

    .line 88
    :goto_66
    if-eqz v1, :cond_6d

    .line 89
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    .line 93
    :cond_6d
    return-void

    :cond_6e
    move v1, v0

    goto :goto_66
.end method

.method private getUtdidFromTaoPPC()Ljava/lang/String;
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v0, :cond_1b

    .line 235
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v1, "UTDID2"

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 237
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v1, v0}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    if-eqz v1, :cond_1b

    .line 243
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;
    .registers 3

    .prologue
    .line 96
    if-eqz p0, :cond_18

    .line 97
    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    if-nez v0, :cond_18

    .line 98
    sget-object v1, Lcom/ta/utdid2/device/UTUtdid;->CREATE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_9
    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    if-nez v0, :cond_17

    .line 100
    new-instance v0, Lcom/ta/utdid2/device/UTUtdid;

    invoke-direct {v0, p0}, Lcom/ta/utdid2/device/UTUtdid;-><init>(Landroid/content/Context;)V

    .line 101
    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    invoke-direct {v0}, Lcom/ta/utdid2/device/UTUtdid;->_removeIllegalKeys()V

    .line 103
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1b

    .line 106
    :cond_18
    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    return-object v0

    .line 103
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isValidUTDID(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 253
    if-eqz p1, :cond_2a

    .line 255
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 258
    :cond_15
    const/16 v1, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_2a

    .line 259
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 261
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 262
    const/4 v0, 0x1

    .line 266
    :cond_2a
    return v0
.end method

.method private saveUtdidToLocalStorage(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 136
    if-eqz p1, :cond_20

    .line 137
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v0, :cond_20

    .line 138
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 140
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    .line 145
    :cond_20
    return-void
.end method

.method private saveUtdidToNewSettings(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 155
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 157
    if-nez v0, :cond_49

    .line 159
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 160
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 163
    :cond_23
    const/16 v0, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_49

    .line 164
    const/4 v0, 0x0

    .line 166
    :try_start_2c
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mqBRboGZkQPcAkyk"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_37} :catch_4c

    move-result-object v0

    .line 173
    :goto_38
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 175
    :try_start_3e
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mqBRboGZkQPcAkyk"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_49} :catch_4a

    .line 185
    :cond_49
    :goto_49
    return-void

    :catch_4a
    move-exception v0

    goto :goto_49

    :catch_4c
    move-exception v1

    goto :goto_38
.end method

.method private saveUtdidToSettings(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 221
    if-nez v0, :cond_f

    .line 222
    if-eqz p1, :cond_f

    .line 223
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/UTUtdid;->syncUTDIDToSettings(Ljava/lang/String;)V

    .line 226
    :cond_f
    return-void
.end method

.method private saveUtdidToTaoPPC(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 118
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 121
    :cond_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_31

    .line 122
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v0, :cond_31

    .line 123
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v1, "UTDID2"

    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    .line 128
    :cond_31
    return-void
.end method

.method private syncUTDIDToSettings(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 196
    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dxCRMxhQkdGePGnp"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_21

    move-result-object v0

    .line 201
    :goto_d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 203
    :try_start_13
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1e} :catch_1f

    .line 209
    :cond_1e
    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    goto :goto_1e

    :catch_21
    move-exception v1

    goto :goto_d
.end method


# virtual methods
.method public declared-synchronized getValue()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 276
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 277
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_44

    .line 416
    :cond_8
    :goto_8
    monitor-exit p0

    return-object v0

    .line 286
    :cond_a
    :try_start_a
    const-string v0, ""
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_44

    .line 288
    :try_start_c
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mqBRboGZkQPcAkyk"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_11d
    .catchall {:try_start_c .. :try_end_17} :catchall_44

    move-result-object v0

    .line 295
    :goto_18
    :try_start_18
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 300
    new-instance v4, Lcom/ta/utdid2/device/UTUtdidHelper2;

    invoke-direct {v4}, Lcom/ta/utdid2/device/UTUtdidHelper2;-><init>()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_44

    .line 302
    const/4 v2, 0x0

    .line 308
    :try_start_24
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2f} :catch_47
    .catchall {:try_start_24 .. :try_end_2f} :catchall_44

    move-result-object v3

    .line 313
    :goto_30
    :try_start_30
    invoke-static {v3}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 315
    invoke-virtual {v4, v3}, Lcom/ta/utdid2/device/UTUtdidHelper2;->dePackWithBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 318
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToNewSettings(Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_30 .. :try_end_43} :catchall_44

    goto :goto_8

    .line 276
    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_47
    move-exception v0

    move-object v3, v1

    goto :goto_30

    .line 322
    :cond_4a
    :try_start_4a
    invoke-virtual {v4, v3}, Lcom/ta/utdid2/device/UTUtdidHelper2;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 324
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v5, v0}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8d

    .line 327
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToSettings(Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_4a .. :try_end_63} :catchall_44

    .line 330
    :try_start_63
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6e} :catch_8c
    .catchall {:try_start_63 .. :try_end_6e} :catchall_44

    move-result-object v0

    .line 338
    :goto_6f
    :try_start_6f
    iget-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v3, v0}, Lcom/ta/utdid2/device/UTUtdidHelper;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 340
    iput-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    .line 342
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    .line 344
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToLocalStorage(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToNewSettings(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    goto/16 :goto_8

    :catch_8c
    move-exception v0

    :cond_8d
    move-object v0, v3

    goto :goto_6f

    .line 352
    :cond_8f
    const/4 v0, 0x1

    move v2, v0

    .line 356
    :cond_91
    invoke-direct {p0}, Lcom/ta/utdid2/device/UTUtdid;->getUtdidFromTaoPPC()Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 358
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v1, v0}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    if-eqz v2, :cond_a6

    .line 361
    invoke-direct {p0, v1}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToSettings(Ljava/lang/String;)V

    .line 364
    :cond_a6
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToNewSettings(Ljava/lang/String;)V

    .line 366
    invoke-direct {p0, v1}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToLocalStorage(Ljava/lang/String;)V

    .line 367
    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    goto/16 :goto_8

    .line 372
    :cond_b0
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    iget-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-static {v3}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f0

    .line 374
    invoke-virtual {v4, v3}, Lcom/ta/utdid2/device/UTUtdidHelper2;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ce

    .line 376
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/UTUtdidHelper;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    :cond_ce
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 379
    iget-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v3, v0}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f0

    .line 381
    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    .line 382
    if-eqz v2, :cond_e7

    .line 384
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToSettings(Ljava/lang/String;)V

    .line 387
    :cond_e7
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;
    :try_end_ee
    .catchall {:try_start_6f .. :try_end_ee} :catchall_44

    goto/16 :goto_8

    .line 396
    :cond_f0
    :try_start_f0
    invoke-direct {p0}, Lcom/ta/utdid2/device/UTUtdid;->_generateUtdid()[B

    move-result-object v0

    .line 397
    if-eqz v0, :cond_11a

    .line 399
    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/ta/utdid2/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    .line 400
    iget-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    .line 402
    iget-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v3, v0}, Lcom/ta/utdid2/device/UTUtdidHelper;->pack([B)Ljava/lang/String;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_112

    .line 404
    if-eqz v2, :cond_10f

    .line 406
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToSettings(Ljava/lang/String;)V

    .line 409
    :cond_10f
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToLocalStorage(Ljava/lang/String;)V

    .line 411
    :cond_112
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_114} :catch_116
    .catchall {:try_start_f0 .. :try_end_114} :catchall_44

    goto/16 :goto_8

    .line 413
    :catch_116
    move-exception v0

    :try_start_117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11a
    .catchall {:try_start_117 .. :try_end_11a} :catchall_44

    :cond_11a
    move-object v0, v1

    .line 416
    goto/16 :goto_8

    :catch_11d
    move-exception v2

    goto/16 :goto_18
.end method
