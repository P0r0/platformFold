.class public final Lcom/baidu/android/pushservice/j/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/j/d$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/baidu/android/pushservice/j/d$a;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/j/d$a;

    move-result-object v0

    iget-object v3, v0, Lcom/baidu/android/pushservice/j/d$a;->a:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/baidu/android/pushservice/j/d$a;->b:Z

    if-nez v0, :cond_78

    move v0, v1

    :goto_c
    invoke-static {p0}, Lcom/baidu/android/pushservice/j/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "DeviceId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imei "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DeviceId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    if-eqz v0, :cond_7a

    const-string v0, "DeviceId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bdDeviceId-getKey: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.baidu"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/j/e;->a([BZ)Ljava/lang/String;

    move-result-object v2

    :cond_77
    :goto_77
    return-object v2

    :cond_78
    const/4 v0, 0x0

    goto :goto_c

    :cond_7a
    const/4 v0, 0x0

    const-string v2, "com.baidu.deviceid"

    invoke-static {p0, v2}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "DeviceId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<<< Try to get DeviceId from new : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.baidu"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/j/e;->a([BZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e8

    const-string v5, "DeviceId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<<< Get DevicedId from old : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.baidu.deviceid"

    invoke-static {p0, v5, v2}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/baidu/android/pushservice/j/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_118

    invoke-static {v3}, Lcom/baidu/android/pushservice/j/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_118

    const-string v5, "DeviceId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<<< Get DevicedId from ext : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0, v2}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.baidu.deviceid"

    invoke-static {p0, v5, v2}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_118
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "DeviceId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uuid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/j/e;->a([BZ)Ljava/lang/String;

    move-result-object v2

    const-string v1, "DeviceId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bdDeviceId-generated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0, v2}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.baidu.deviceid"

    invoke-static {p0, v0, v2}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/baidu/android/pushservice/j/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_77
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "DeviceId"

    const-string v1, "IMEI is null while reading ext!"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    const-string v0, ""

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "baidu/.cuid"

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_1e
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_23} :catch_170
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_de
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_10c
    .catchall {:try_start_1e .. :try_end_23} :catchall_13a

    :try_start_23
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_68

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_3b} :catch_3c
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_3b} :catch_16a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3b} :catch_165
    .catchall {:try_start_23 .. :try_end_3b} :catchall_160

    goto :goto_2d

    :catch_3c
    move-exception v2

    :goto_3d
    :try_start_3d
    const-string v2, "DeviceId"

    const-string v3, "No sdcard backup found!"

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_160

    if-eqz v1, :cond_f

    :try_start_46
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_f

    :catch_4a
    move-exception v1

    const-string v2, "DeviceId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_68
    :try_start_68
    const-string v4, "DeviceId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<< Read encoded \uff1a\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    new-instance v2, Ljava/lang/String;

    const-string v4, "30212102dicudiab"

    const-string v5, "30212102dicudiab"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/android/pushservice/j/b;->a([B)[B

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/baidu/android/pushservice/j/a;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b8

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b8

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    const/4 v3, 0x1

    aget-object v0, v2, v3
    :try_end_b8
    .catch Ljava/io/FileNotFoundException; {:try_start_68 .. :try_end_b8} :catch_3c
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_b8} :catch_16a
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_b8} :catch_165
    .catchall {:try_start_68 .. :try_end_b8} :catchall_160

    :cond_b8
    if-eqz v1, :cond_f

    :try_start_ba
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_bf

    goto/16 :goto_f

    :catch_bf
    move-exception v1

    const-string v2, "DeviceId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :catch_de
    move-exception v1

    :goto_df
    :try_start_df
    const-string v3, "DeviceId"

    const-string v4, "Read sdcard backup fail!\r\n"

    invoke-static {v3, v4, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e6
    .catchall {:try_start_df .. :try_end_e6} :catchall_162

    if-eqz v2, :cond_f

    :try_start_e8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_ed

    goto/16 :goto_f

    :catch_ed
    move-exception v1

    const-string v2, "DeviceId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :catch_10c
    move-exception v1

    :goto_10d
    :try_start_10d
    const-string v3, "DeviceId"

    const-string v4, "Decode sdcard backup fail!\r\n"

    invoke-static {v3, v4, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_114
    .catchall {:try_start_10d .. :try_end_114} :catchall_162

    if-eqz v2, :cond_f

    :try_start_116
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_119} :catch_11b

    goto/16 :goto_f

    :catch_11b
    move-exception v1

    const-string v2, "DeviceId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :catchall_13a
    move-exception v0

    move-object v1, v2

    :goto_13c
    if-eqz v1, :cond_141

    :try_start_13e
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_141} :catch_142

    :cond_141
    :goto_141
    throw v0

    :catch_142
    move-exception v1

    const-string v2, "DeviceId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_141

    :catchall_160
    move-exception v0

    goto :goto_13c

    :catchall_162
    move-exception v0

    move-object v1, v2

    goto :goto_13c

    :catch_165
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_10d

    :catch_16a
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_df

    :catch_170
    move-exception v1

    move-object v1, v2

    goto/16 :goto_3d
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "DeviceId"

    const-string v1, "IMEI is null while writing ext!"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "baidu/.cuid"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_29
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const-string v1, "30212102dicudiab"

    const-string v3, "30212102dicudiab"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/baidu/android/pushservice/j/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/j/b;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> Write encoded \uff1a\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_72} :catch_73
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_72} :catch_7c

    goto :goto_d

    :catch_73
    move-exception v0

    const-string v1, "DeviceId"

    const-string v2, "Write sdcard backup fail!\r\n"

    invoke-static {v1, v2, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :catch_7c
    move-exception v0

    const-string v1, "DeviceId"

    const-string v2, "Encode sdcard backup fail!\r\n"

    invoke-static {v1, v2, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/baidu/android/pushservice/j/d$a;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/j/d$a;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/android/pushservice/j/d$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v0, ""

    :cond_14
    return-object v0
.end method
