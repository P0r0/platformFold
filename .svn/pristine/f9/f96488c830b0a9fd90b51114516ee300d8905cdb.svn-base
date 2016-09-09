.class public final Lcom/duoku/platform/download/utils/FileHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/utils/FileHelper$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized cacheData(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 665
    const-class v1, Lcom/duoku/platform/download/utils/FileHelper;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 667
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_55

    .line 670
    :try_start_27
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_30

    .line 672
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 675
    :cond_30
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v2, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_4e} :catch_50
    .catchall {:try_start_27 .. :try_end_4e} :catchall_55

    .line 683
    :goto_4e
    monitor-exit v1

    return-void

    .line 679
    :catch_50
    move-exception v0

    .line 681
    :try_start_51
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_4e

    .line 665
    :catchall_55
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static createDirectory(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 288
    invoke-static {}, Lcom/duoku/platform/download/utils/FileHelper;->isSupportSDCard()Z

    move-result v1

    .line 289
    const/4 v0, 0x0

    .line 290
    if-eqz v1, :cond_b

    .line 292
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 299
    :cond_b
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 302
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 304
    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a
.end method

.method public static fileIfExists(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 40
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 42
    const/4 v0, 0x1

    .line 43
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static getAppDataDirectoryPath()Ljava/lang/String;
    .registers 1

    .prologue
    .line 309
    invoke-static {}, Lcom/duoku/platform/download/utils/FileHelper;->isSupportSDCard()Z

    move-result v0

    .line 311
    if-eqz v0, :cond_f

    .line 313
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 320
    :goto_a
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 317
    :cond_f
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    goto :goto_a
.end method

.method public static getAssetsFileString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 62
    const-string v0, ""

    .line 64
    if-eqz p0, :cond_3f

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 72
    :try_start_d
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_7e
    .catchall {:try_start_d .. :try_end_19} :catchall_5a

    move-result-object v5

    .line 73
    :try_start_1a
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_82
    .catchall {:try_start_1a .. :try_end_1f} :catchall_71

    .line 74
    :try_start_1f
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_86
    .catchall {:try_start_1f .. :try_end_24} :catchall_74

    .line 77
    const/16 v1, 0x400

    :try_start_26
    new-array v1, v1, [B

    .line 79
    :goto_28
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_40

    .line 84
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 85
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_35} :catch_45
    .catchall {:try_start_26 .. :try_end_35} :catchall_76

    move-result-object v0

    .line 95
    :try_start_36
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 96
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 97
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3f} :catch_6c

    .line 106
    :cond_3f
    :goto_3f
    return-object v0

    .line 81
    :cond_40
    const/4 v6, 0x0

    :try_start_41
    invoke-virtual {v2, v1, v6, v3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45
    .catchall {:try_start_41 .. :try_end_44} :catchall_76

    goto :goto_28

    .line 87
    :catch_45
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    .line 89
    :goto_48
    :try_start_48
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_79

    .line 95
    :try_start_4b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 96
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 97
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_54} :catch_55

    goto :goto_3f

    .line 99
    :catch_55
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f

    .line 92
    :catchall_5a
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    .line 95
    :goto_5d
    :try_start_5d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 96
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 97
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_66} :catch_67

    .line 103
    :goto_66
    throw v0

    .line 99
    :catch_67
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_66

    .line 99
    :catch_6c
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f

    .line 92
    :catchall_71
    move-exception v0

    move-object v4, v3

    goto :goto_5d

    :catchall_74
    move-exception v0

    goto :goto_5d

    :catchall_76
    move-exception v0

    move-object v3, v2

    goto :goto_5d

    :catchall_79
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_5d

    .line 87
    :catch_7e
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto :goto_48

    :catch_82
    move-exception v1

    move-object v2, v3

    move-object v4, v5

    goto :goto_48

    :catch_86
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_48
.end method

.method public static getFileMd5(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 325
    .line 328
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 329
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 330
    const/16 v2, 0x800

    new-array v2, v2, [B

    .line 332
    :goto_f
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_21

    .line 336
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_26

    .line 343
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0

    .line 334
    :cond_21
    const/4 v4, 0x0

    :try_start_22
    invoke-virtual {v0, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_f

    .line 338
    :catch_26
    move-exception v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 341
    const-string v0, ""

    goto :goto_20
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .registers 6

    .prologue
    .line 237
    .line 239
    const/16 v0, 0x200

    new-array v1, v0, [B

    .line 240
    const/4 v0, 0x0

    .line 244
    :try_start_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 249
    :goto_f
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1b

    .line 254
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_1d

    .line 262
    :goto_19
    int-to-long v0, v0

    return-wide v0

    .line 251
    :cond_1b
    add-int/2addr v0, v2

    goto :goto_f

    .line 257
    :catch_1d
    move-exception v1

    goto :goto_19
.end method

.method public static declared-synchronized getFromCache(Lcom/duoku/platform/download/listener/OnCacheLoadedListener;)V
    .registers 5

    .prologue
    .line 348
    const-class v1, Lcom/duoku/platform/download/utils/FileHelper;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "data.cache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 353
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/duoku/platform/download/listener/OnCacheLoadedListener;->onCacheLoad(Z)V
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_49

    .line 462
    :goto_39
    monitor-exit v1

    return-void

    .line 357
    :cond_3b
    :try_start_3b
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/duoku/platform/download/utils/FileHelper$1;

    invoke-direct {v3, v0, p0}, Lcom/duoku/platform/download/utils/FileHelper$1;-><init>(Ljava/lang/String;Lcom/duoku/platform/download/listener/OnCacheLoadedListener;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 461
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_49

    goto :goto_39

    .line 348
    :catchall_49
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getJsonStringFromJsonFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 112
    const-string v0, ""

    .line 113
    invoke-static {p0}, Lcom/duoku/platform/download/utils/FileHelper;->fileIfExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 120
    :try_start_8
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 121
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 122
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 124
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 125
    :goto_20
    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2f

    .line 129
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 130
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_2e
    :goto_2e
    return-object v0

    .line 127
    :cond_2f
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_33} :catch_34
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_33} :catch_39

    goto :goto_20

    .line 132
    :catch_34
    move-exception v1

    .line 135
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2e

    .line 137
    :catch_39
    move-exception v1

    .line 139
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e
.end method

.method public static isSupportSDCard()Z
    .registers 2

    .prologue
    .line 270
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 272
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 274
    const/4 v0, 0x1

    .line 278
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static declared-synchronized mergelog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 560
    const-class v1, Lcom/duoku/platform/download/utils/FileHelper;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\r\n\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1c

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static removeFile(Ljava/io/File;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 155
    if-eqz p0, :cond_22

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 158
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 160
    :goto_e
    array-length v3, v2

    if-lt v0, v3, :cond_12

    .line 174
    :cond_11
    :goto_11
    return v1

    .line 162
    :cond_12
    new-instance v3, Ljava/io/File;

    aget-object v4, v2, v0

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/duoku/platform/download/utils/FileHelper;->removeFile(Ljava/io/File;)Z

    move-result v3

    .line 164
    if-eqz v3, :cond_11

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 170
    :cond_22
    if-eqz p0, :cond_11

    .line 172
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_11
.end method

.method public static removeFile(Ljava/io/File;Ljava/util/Set;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 179
    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 181
    new-instance v2, Lcom/duoku/platform/download/utils/FileHelper$a;

    invoke-direct {v2, p1}, Lcom/duoku/platform/download/utils/FileHelper$a;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 182
    if-nez v2, :cond_20

    move v0, v1

    .line 209
    :cond_16
    :goto_16
    return v0

    .line 188
    :cond_17
    aget-object v3, v2, v0

    .line 189
    if-eqz v3, :cond_1e

    .line 194
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_25

    .line 186
    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    :cond_20
    array-length v3, v2

    if-lt v0, v3, :cond_17

    move v0, v1

    .line 202
    goto :goto_16

    .line 196
    :catch_25
    move-exception v3

    .line 198
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e

    .line 205
    :cond_2a
    if-eqz p0, :cond_16

    .line 207
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_16
.end method

.method public static removeFile(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 55
    invoke-static {v0}, Lcom/duoku/platform/download/utils/FileHelper;->removeFile(Ljava/io/File;)Z

    move-result v0

    .line 57
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static varargs declared-synchronized saveLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 565
    const-class v3, Lcom/duoku/platform/download/utils/FileHelper;

    monitor-enter v3

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ">>>> INVOKED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "client_log_on_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v2, "yyyy.MM.dd"

    invoke-static {v4, v5, v2}, Lcom/duoku/platform/download/utils/DateUtil;->formatDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 568
    if-eqz p2, :cond_37

    .line 570
    array-length v5, p2

    const/4 v1, 0x0

    :goto_35
    if-lt v1, v5, :cond_54

    .line 576
    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ")\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 578
    const/4 v1, 0x1

    invoke-static {v0, v4, v1}, Lcom/duoku/platform/download/utils/FileHelper;->saveResultToLogFile(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_72

    .line 579
    monitor-exit v3

    return-void

    .line 570
    :cond_54
    :try_start_54
    aget-object v2, p2, v1

    .line 572
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6c
    .catchall {:try_start_54 .. :try_end_6c} :catchall_72

    move-result-object v2

    .line 570
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_35

    .line 565
    :catchall_72
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static declared-synchronized saveResultToLogFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 687
    const-class v1, Lcom/duoku/platform/download/utils/FileHelper;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3c

    if-nez v0, :cond_9

    .line 731
    :goto_7
    monitor-exit v1

    return-void

    .line 693
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/duoku/sdk/.Logs/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 694
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 696
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 698
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2e} :catch_3f
    .catchall {:try_start_9 .. :try_end_2e} :catchall_3c

    .line 706
    :cond_2e
    :goto_2e
    :try_start_2e
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/duoku/platform/download/utils/FileHelper$4;

    invoke-direct {v2, p1, p2, p0}, Lcom/duoku/platform/download/utils/FileHelper$4;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 730
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_3c

    goto :goto_7

    .line 687
    :catchall_3c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 701
    :catch_3f
    move-exception v0

    goto :goto_2e
.end method

.method public static declared-synchronized saveString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 585
    const-class v1, Lcom/duoku/platform/download/utils/FileHelper;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/io/File;

    const/4 v2, 0x0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 589
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_2e
    .catchall {:try_start_3 .. :try_end_1c} :catchall_2b

    .line 596
    :cond_1c
    :goto_1c
    :try_start_1c
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/duoku/platform/download/utils/FileHelper$3;

    invoke-direct {v2, p1, p0}, Lcom/duoku/platform/download/utils/FileHelper$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 620
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_2b

    .line 621
    monitor-exit v1

    return-void

    .line 585
    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0

    .line 592
    :catch_2e
    move-exception v0

    goto :goto_1c
.end method

.method public static declared-synchronized saveToCache(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 466
    const-class v1, Lcom/duoku/platform/download/utils/FileHelper;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/duoku/platform/download/utils/FileHelper$2;

    invoke-direct {v2, p1, p0}, Lcom/duoku/platform/download/utils/FileHelper$2;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 555
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 556
    monitor-exit v1

    return-void

    .line 466
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method
